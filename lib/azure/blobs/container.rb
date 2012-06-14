require "nokogiri"
require "uri"
require "azure/error"
require "azure/blobs"
require "azure/blobs/uri"
require "azure/blobs/shared_access_signature"

module Azure
  module Blobs
    class Container
      include ErrorHandler

      # Public: Indicates the both the information of the container and of its
      # blobs is accessible by an anonymous request.
      CONTAINER = :container

      # Public: Indicates the blobs in this container can be accessed by an
      # anonymous request, but not the information in the container.
      BLOB = :blob

      # Public: Indicates neither this container nor any of its blobs can be
      # accessed by an anonymous request.
      PRIVATE = :private

      # Public: Get the name of the container.
      attr :name

      # Public: Get the URI of the container.
      attr :url

      # Public: Get/Set the User defined Metadata of the container.
      attr :metadata

      # Public: Get the Properties of the container.
      attr :properties

      # Public: Get the current container visibility for anonymous requests. See
      # the x-ms-blob-public-access header on:
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd179468
      attr_accessor :visibility

      # Convert the value of a x-ms-blob-public-access header to one of our
      # visibility constants.
      #
      # header_value - A string or nil.
      #
      # Returns either PRIVATE, BLOB, or CONTAINER.
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

      # Public: Initialize a container from an XML node as returned from an API
      # response.
      #
      # node - A Nokogiri::Node.
      #
      # Returns a Container.
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

      # Public: Initialize an invalid container from an erroneous response.
      #
      # error - An Azure::Error.
      #
      # Returns a Container.
      def self.from_error(error)
        container = new(nil, nil)
        container.error = error
        container
      end

      # Public: Initialize a Container.
      #
      # name    - A String with the name of the Container.
      # url     - The URI that represents this container (optional).
      # service - The Blobs service to perform external calls.
      #
      # Yields self (optional).
      def initialize(name, url=Blobs::URI.container(name), service=Azure::Blobs)
        @name = name
        @url = url
        @metadata = {}
        @properties = {}
        @service = service
        yield self if block_given?
      end

      # Public: List the blobs inside this container.
      #
      # Returns an Array of Blobs.
      def blobs
        @service.blobs(self)
      end

      # Public: Check equality between containers. Two containers are equal if
      # they have equal names.
      #
      # other - A Container.
      #
      # Returns true|false.
      def ==(other)
        name == other.name
      end

      # Public: Force a reload of this containers metadata from the server.
      #
      # Returns the Hash of metadata.
      def load_metadata!
        @service.load_container_metadata(self)
      end

      # Public: Put the current container's metadata into the storage service.
      #
      # Returns true|false to indicate success.
      def save_metadata!
        @service.save_container_metadata(self)
      end

      # Public: Extracts metadata from a hash containing HTTP headers (so
      # "x-ms-meta-Name" => "Foo" is extracted as "Name" => "Foo"). This
      # replaces the metadata of this container.
      #
      # hash - A hash of String => String with HTTP header values.
      #
      # Returns a Hash with the extracted metadata.
      def extract_metadata(hash)
        new_metadata = hash.each_with_object({}) do |(k,v), hash|
          if key = k[/^x-ms-meta-(?<key>.*)?/, :key]
            hash[key] = v
          end
        end

        metadata.replace(new_metadata)
      end

      # Public: Generate a Shared Access Signature that can be used to provide
      # anonymous access to this container.
      #
      # permissions - A String with the permissions you want to grant on this
      #               container. Might contain any of "r", "w", "d", or "l" *in
      #               this order*.
      # to          - Either a Date, Time or duration in seconds.
      # from        - A Date or Time (if `to` is a duration in seconds, then
      #               this is ignored).
      # id          - An identifier (optional).
      # clock       - Dependency on Time for calculations (optional).
      # signature   - Dependency on SharedAccessSignature (optional).
      #
      # Examples:
      #
      #   # Valid for 10 minutes.
      #   container.shared_access_signature("r", 10.minutes)
      #
      #   # Read until Christmas 2012.
      #   container.shared_access_signature("r", Date.new(2012, 12, 25))
      #
      #   # Associate this signature with an access control policy:
      #   container.shared_access_signature("r", 10.minutes, "policy-id")
      #
      # Returns a URL for this resource that includes the SAS.
      def shared_access_signature(permissions, to, from=nil, id=nil, clock=Time, signature=SharedAccessSignature)
        if to.respond_to?(:to_int)
          id, to, from = from, clock.now.utc + to, clock.now.utc
        end

        signature.new(permissions, from, to, id).url(self)
      end

      # Public: Delete this container from the storage service. If the operation
      # fails this returns false and sets self.error.
      #
      # Returns true|false to indicate success.
      def delete
        @service.delete_container(self)
      end

      # Public: String identifying which type of resource this is (used to
      # generate shared access signatures).
      #
      # Returns the string "c".
      def resource_type
        "c"
      end
    end
  end
end
