#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "nokogiri"
require "uri"
require "azure/core/error"
require "azure/blobs"
require "azure/blobs/uri"
require "azure/blobs/shared_access_signature"

module Azure
  module Blobs
    class Container
      include Core::ErrorHandler

      # Public: Indicates that both the information about the Container 
      # and about its Blobs are accessible by an anonymous request
      CONTAINER = :container

      # Public: Indicates the Blobs in the Container may be accessed by an
      # anonymous request, but not the information in the Container
      BLOB = :blob

      # Public: Indicates neither the Container nor any of its Blobs may be
      # accessed by an anonymous request.
      PRIVATE = :private

      # Public: Get the name of the Container
      attr :name

      # Public: Get the URI of the Container
      attr :url

      # Public: Get the User defined Metadata for the Container
      attr :metadata

      # Public: Get the Properties for the Container
      attr :properties

      # Public: Get the visibility of Container for anonymous requests. See
      # the details of the x-ms-blob-public-access header here:
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd179468
      attr_accessor :visibility

      # Public: Convert the value of a x-ms-blob-public-access header to a 
      # visibility constant
      #
      # header_value - A string or nil
      #
      # Returns either Azure::Blobs::Container::PRIVATE, 
      # Azure::Blobs::Container::BLOB, or Azure::Blobs::Container::CONTAINER.
      def self.visibility(header_value)
        case header_value
        when "container", "true"
          CONTAINER
        when "blob"
          BLOB
        else
          PRIVATE
        end
      end

      # Public: Initialize a Container from an XML node
      # (eg, as returned from an API response)
      #
      # node - A Nokogiri::Node
      #
      # Returns a Container
      def self.from_node(node)
        name = (node % "Name").text
        url  = URI((node % "Url").text)

        metadata = (node / "Metadata *").each_with_object({}) do |n, metadata|
          metadata[n.name] = n.text
        end

        properties = (node / "Properties *").each_with_object({}) do |n, props|
          props[n.name] = n.text
        end

        new(name, url) do |container|
          container.properties.replace(properties)
          container.metadata.replace(metadata)
        end
      end

      # Public: Initialize an invalid Container from an erroneous response
      #
      # error - An Azure::Core::Error
      #
      # Returns a Container
      def self.from_error(error)
        container = new(nil, nil)
        container.error = error
        container
      end

      # Public: Initialize a Container
      #
      # name    - String. The name of the Container
      # url     - Blobs::URI. The URI that represents the Container (optional)
      # service - A Blobs Service instance. Defaults to Azure::Blobs but may be injected (optional) 
      #
      # Yields self (optional)
      def initialize(name, url=Blobs::URI.container(name), service=Azure::Blobs)
        @name = name
        @url = url
        @metadata = {}
        @properties = {}
        @service = service
        yield self if block_given?
      end

      # Public: List the Blobs inside this Container
      #
      # Returns an Array of Blobs
      def blobs
        @service.blobs(self)
      end

      # Public: Check equality between Containers. Two Containers are equal if
      # they have equal names.
      #
      # other - A Container to compare 
      #
      # Returns true when equal or false when not equal
      def ==(other)
        name == other.name
      end

      # Public: Force a reload of the metadata for the Container from the server
      #
      # Returns the Hash of metadata
      def load_metadata!
        @service.load_container_metadata(self)
      end

      # Public: Put the metadata for the Container into the storage service
      #
      # Returns true on success or false on failure
      def save_metadata!
        @service.save_container_metadata(self)
      end

      # Public: Extracts metadata from a Hash of HTTP headers. 
      # Headers beginning with "x-ms-meta-" will be extracted. 
      # 
      # For example: 
      # "x-ms-meta-Name" => "Foo" is extracted as "Name" => "Foo"
      #
      # It also replaces the current metadata for the Blob with 
      # the extracted metadata.
      #
      # hash - A hash of String => String with HTTP header values.
      #
      # Returns a Hash with the extracted metadata
      # TODO: Refactor this (DRY)
      def extract_metadata(hash)
        new_metadata = hash.each_with_object({}) do |(k,v), hash|
          if key = k[/^x-ms-meta-(.*)/, 1]
            hash[key] = v
          end
        end

        metadata.replace(new_metadata)
      end

      # Public: Generate a Shared Access Signature that can be used to provide
      # anonymous access to the Container
      #
      # permissions - A String with the permissions to grant on the Container. 
      #               May contain any of "r", "w", "d", or "l" *in that
      #               order*.
      # to          - Either a Date, Time or duration in seconds.
      # from        - A Date or Time (if `to` is a duration in seconds, then
      #               this parameter is ignored).
      # id          - An identifier (optional)
      # clock       - Dependency on Time (for calculations) may be injected (optional)
      # signature   - Dependency on SharedAccessSignature may be injected (optional)
      #
      # Examples:
      #
      #   # Valid for 10 minutes.
      #   blob.shared_access_signature("r", 10.minutes)
      #
      #   # Read until Christmas 2012.
      #   blob.shared_access_signature("r", Date.new(2012, 12, 25))
      #
      #   # Associate the signature with an access control policy:
      #   blob.shared_access_signature("r", 10.minutes, "policy-id")
      #
      # Returns a URL for the resource that includes the SAS.
      # TODO: Refactor this (DRY)
      def shared_access_signature(permissions, to, from=nil, id=nil, clock=Time, signature=SharedAccessSignature)
        if to.respond_to?(:to_int)
          id, to, from = from, clock.now.utc + to, clock.now.utc
        end

        signature.new(permissions, from, to, id).url(self)
      end

      # Public: Delete the Container from the storage service. 
      # If the operation fails this method returns false and 
      # sets self.error on the Container
      #
      # Returns true on success or false on failure
      # TODO: Refactor this (polymorphism)
      def delete
        @service.delete_container(self)
      end

      # Public: String identifying which type of resource this is (used to
      # generate shared access signatures).
      #
      # Returns the string "c".
      # TODO: Refactor this (DRY)
      def resource_type
        "c"
      end
    end
  end
end
