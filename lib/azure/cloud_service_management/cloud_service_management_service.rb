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
require 'azure/cloud_service_management/serialization'

module Azure
  module CloudServiceManagement
    class CloudServiceManagementService < BaseManagement::BaseManagementService
      include Azure::Core::Utility

      def initialize
        super()
      end

      # Public: Creates a new cloud service in Microsoft Azure.
      #
      # ==== Attributes
      #
      # * +name+          - String. The name of the cloud service.
      # * +options+       - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:label+  -String. The label for this cloud service.
      # * +:description+         - String. A description for the hosted service. (optional)
      # * +:location+  - String. The regional data center location where the
      # cloud service will be created. Required if affinity group not
      # specified (optional)
      # * +:affinity_group_name  - String. Name of the affinity group with
      # which to assocate the cloud service. Required if location not
      # specified (optional)
      # * +:extended_properties+  - Hash. Key/Value pairs of extended
      # properties to add to the cloud service. The key is used as the
      # property name and the value as its value. (optional)
      #
      # See http://msdn.microsoft.com/en-us/library/azure/gg441304.aspx
      #
      # Returns None
      def create_cloud_service(name, options = {})
        Azure::Loggerx.error_with_exit 'Cloud service name is not valid ' unless name
        if get_cloud_service(name)
          Azure::Loggerx.warn "Cloud service #{name} already exists. Skipped..."
        else
          Azure::Loggerx.info "Creating cloud service #{name}."
          request_path = '/services/hostedservices'
          body = Serialization.cloud_services_to_xml(name, options)
          request = BaseManagement::ManagementHttpRequest.new(:post, request_path, body)
          request.call
        end
      end

      # Public: Gets a list of hosted services available under the current subscription.
      #
      # Returns an array of Azure::CloudServiceManagement::CloudService objects
      def list_cloud_services
        request_path = '/services/hostedservices'
        request = BaseManagement::ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.cloud_services_from_xml(response)
      end

      # Public: Checks to see if the specified hosted service is available
      #
      # ==== Attributes
      #
      # * +name+       - String. Cloud service name.
      #
      # Returns: A boolean value indicating whether the cloud service exists.
      # If true, the cloud service is available. If false, the cloud service
      # does not exist.
      def get_cloud_service(name)
        list_cloud_services.select { |x| x.name.casecmp(name) == 0 }.first
      end

      def get_cloud_service_properties(name)
        request_path = "/services/hostedservices/#{name}?embed-detail=true"
        request = BaseManagement::ManagementHttpRequest.new(:get, request_path)
        response = request.call
        Serialization.cloud_services_from_xml(response).first
      end

      # Public: Deletes the specified cloud service of given subscription id from Microsoft Azure.
      #
      # ==== Attributes
      #
      # * +name+       - String. Cloud service name.
      #
      # Returns:  None
      def delete_cloud_service(cloud_service_name)
        request_path= "/services/hostedservices/#{cloud_service_name}"
        request = BaseManagement::ManagementHttpRequest.new(:delete, request_path)
        Azure::Loggerx.info "Deleting cloud service #{cloud_service_name}. \n"
        request.call
      end

      # Public: Deletes the specified deployment.
      #
      # ==== Attributes
      #
      # * +cloud_service_name+  - String. Cloud service name.
      # * +slot+                - String. 'production' or 'staging'. Optional parameters.
      #                           Default if not specified is 'production'
      #
      # See http://msdn.microsoft.com/en-us/library/azure/ee460815.aspx
      #
      # Returns NONE
      def delete_cloud_service_deployment(cloud_service_name, slot='production')
        slot = 'production' unless slot
        request_path= "/services/hostedservices/#{cloud_service_name}/deploymentslots/#{slot}"
        request = BaseManagement::ManagementHttpRequest.new(:delete, request_path)
        Azure::Loggerx.info "Deleting deployment of cloud service \"#{cloud_service_name}\" ..."
        request.call
      end

      def upload_certificate(cloud_service_name, ssh)
        data = export_der(ssh[:cert], ssh[:key])
        request_path= "/services/hostedservices/#{cloud_service_name}/certificates"
        body = Serialization.add_certificate_to_xml(data)
        Azure::Loggerx.info "Uploading certificate to cloud service #{cloud_service_name}..."
        request = BaseManagement::ManagementHttpRequest.new(:post, request_path, body)
        request.call
      end
    end
  end
end
