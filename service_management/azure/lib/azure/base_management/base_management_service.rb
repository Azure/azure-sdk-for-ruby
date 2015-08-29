#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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

require 'azure/base_management/serialization'
require 'azure/base_management/location'
require 'azure/base_management/affinity_group'

module Azure
  module BaseManagement

    # The base for all Azure management services
    # @!attribute [rw] client
    #   The client contains the configuration scope and the ability to produce http agents.
    #   defaults to global client.
    #   @see Azure.client
    #   @return [Azure::Client]
    class BaseManagementService

      attr_accessor :client

      # @param options  [Hash] options including :client
      def initialize(options = {})
        @client = options[:client] || Azure.client
        validate_configuration!
      end

      # Validate the configuration of the service.
      # @return [void]
      def validate_configuration!
        subs_id = @client.subscription_id
        error_message = 'Subscription ID not valid.'
        raise ArgumentError.new(error_message) if subs_id.nil? || subs_id.empty?

        m_ep = @client.management_endpoint
        error_message = 'Management endpoint not valid.'
        raise ArgumentError.new(error_message) if m_ep.nil? || m_ep.empty?
      end

      # Gets a list of regional data center locations from the server
      # @return [Array<Azure::BaseManagement::Location>]
      def list_locations
        request = @client.management_request(:get, '/locations')
        response = request.call
        Serialization.locations_from_xml(response)
      end

      # Gets a list of role sizes associated with the
      # specified subscription.
      # @return [Array<String>]
      def list_role_sizes
        role_sizes = []
        locations = list_locations
        locations.each do | location |
         role_sizes << location.role_sizes
        end
        role_sizes.flatten.uniq.compact.sort
      end

      # Gets a lists the affinity groups associated with
      # the specified subscription.
      # @see http://msdn.microsoft.com/en-us/library/azure/ee460797.aspx
      # @return [Array<Azure::BaseManagement::AffinityGroup>]
      def list_affinity_groups
        request_path = '/affinitygroups'
        request = @client.management_request(:get, request_path)
        response = request.call
        Serialization.affinity_groups_from_xml(response)
      end

      # Creates a new affinity group for the specified subscription.
      #
      # ==== Attributes
      #
      # * +name+           - String. Affinity Group name.
      # * +location+       - String. The location where the affinity group will
      # be created.
      # * +label+         - String. Name for the affinity specified as a
      # base-64 encoded string.
      #
      # ==== Options
      #
      # Accepted key/value pairs are:
      # * +:description+   - String. A description for the affinity group.
      # (optional)
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715317.aspx
      #
      # @return [void]
      def create_affinity_group(name, location, label, options = {})
        if name.nil? || name.strip.empty?
          raise 'Affinity Group name cannot be empty'
        elsif list_affinity_groups.map(&:name).include?(name)
          raise Azure::Error::Error.new(
            'ConflictError',
            409,
            "An affinity group #{name} already exists in the current subscription."
          )
        else
          validate_location(location)
          body = Serialization.affinity_group_to_xml(name,
                                                     location,
                                                     label,
                                                     options)
          request_path = '/affinitygroups'
          request = @client.management_request(:post, request_path, body)
          request.call
          Azure::Loggerx.info "Affinity Group #{name} is created."
        end
      end

      # Updates the label and/or the description for an affinity group
      # for the specified subscription.
      #
      # ==== Attributes
      #
      # * +name+          - String. Affinity Group name.
      # * +label+         - String. Name for the affinity specified as a
      # base-64 encoded string.
      #
      # ==== Options
      #
      # Accepted key/value pairs are:
      # * +:description+   - String. A description for the affinity group.
      # (optional)
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715316.aspx
      #
      # @return [void]
      def update_affinity_group(name, label, options = {})
        raise 'Label name cannot be empty' if label.nil? || label.empty?
        if affinity_group(name)
          body = Serialization.resource_to_xml(label, options)
          request_path = "/affinitygroups/#{name}"
          request = @client.management_request(:put, request_path, body)
          request.call
          Azure::Loggerx.info "Affinity Group #{name} is updated."
        end
      end

      # Deletes an affinity group in the specified subscription
      #
      # ==== Attributes
      #
      # * +name+       - String. Affinity Group name.
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/gg715314.aspx
      #
      # @return [void]
      def delete_affinity_group(name)
        if affinity_group(name)
          request_path = "/affinitygroups/#{name}"
          request = @client.management_request(:delete, request_path)
          request.call
          Azure::Loggerx.info "Deleted affinity group #{name}."
        end
      end

      # Returns the system properties associated with the specified
      # affinity group.
      #
      # ==== Attributes
      #
      # * +name+       - String. Affinity Group name.
      #
      # @see http://msdn.microsoft.com/en-us/library/azure/ee460789.aspx
      #
      # @return  [Azure::BaseManagement::AffinityGroup]
      def get_affinity_group(name)
        if affinity_group(name)
          request_path = "/affinitygroups/#{name}"
          request = @client.management_request(:get, request_path)
          response = request.call
          Serialization.affinity_group_from_xml(response)
        end
      end

      private

      def affinity_group(affinity_group_name)
        if affinity_group_name.nil? ||\
           affinity_group_name.empty? ||\
           !list_affinity_groups.map { |x| x.name.downcase }.include?(
            affinity_group_name.downcase
           )
          error = Azure::Error::Error.new('AffinityGroupNotFound',
                                          404,
                                          'The affinity group does not exist.')
          raise error
        else
          true
        end
      end

      def validate_location(location_name)
        base_mgmt_service = Azure::BaseManagementService.new
        locations = base_mgmt_service.list_locations.map(&:name)
        unless locations.map(&:downcase).include?(location_name.downcase)
          error = "Value '#{location_name}' specified for parameter"\
                  " 'location' is invalid."\
                  " Allowed values are #{locations.join(',')}"
          raise error
        end
      end
    end
  end
end

Azure::BaseManagementService = Azure::BaseManagement::BaseManagementService
