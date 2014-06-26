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
    class CloudServiceManagementService < BaseManagementService
      def initialize
        super()
      end

      # Public: Creates a new cloud service in Windows Azure.
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
      # See http://msdn.microsoft.com/en-us/library/windowsazure/gg441304.aspx
      #
      # Returns None
      def create_cloud_service(name, options = {})
        Loggerx.error_with_exit 'Cloud service name is not valid ' unless name
        if get_cloud_service(name)
          Loggerx.warn "Cloud service #{name} already exists. Skipped..."
        else
          Loggerx.info "Creating cloud service #{name}."
          request_path = '/services/hostedservices'
          body = Serialization.cloud_services_to_xml(name, options)
          request = ManagementHttpRequest.new(:post, request_path, body)
          request.call
        end
      end

      # Public: Deploy a .cspkg hosted at a specific package_url to a a Cloud Service on a specific slot
      #
      # ==== Attributes
      #
      # * +deployment_name+       - String. Name of the deployment
      # * +cloud_service_name+    - String. Name of the Cloud Service where the deployment 
      #                             needs to be created
      # * +package_url+           - String. URL of the blob storage where the .cspkg is being
      #                             stored
      # * +package_url+           - String. URL of the blob storage where the .cspkg is being
      #                             stored
      # * +service_configuration+ - Base64 encoded String. ServiceConfiguration.cscfg file
      # * +options+               - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:slot+                     - String. Deployment slot. Valid values are either 
      #                                 'production'(default) or 'staging'.
      # * +:label+                    - String. The label for this cloud service.
      # * +:start_deployment+         - String. A description for the hosted service. (optional)
      # * +:treat_warnings_as_error+  - String. 
      # * +:extended_properties+      - Hash. Key/Value pairs of extended properties to add to 
      #                                 the cloud service. The key is used as the property name 
      #                                 and the value as its value.
      # * +fire_and_forget+           - Boolean(efault is false). If true, the client 
      #                                 does not wait until the request is completed.
      # * +:upgrade_if_exists+        - Boolean(default is false). If true, then if a deployment
      #                                 already exists, then it is upgraded. Otherwise, an exception 
      #                                 is thrown.
      #
      # More details at http://msdn.microsoft.com/en-us/library/azure/ee460813.aspx
      #
      # Returns None
      def create_deployment(deployment_name, cloud_service_name, package_url, service_configuration, options = {})
        Loggerx.error_with_exit 'Cloud service name is not valid' unless cloud_service_name
        Loggerx.error_with_exit 'Deployment name is not valid' unless deployment_name
        Loggerx.error_with_exit 'Package url is not valid' unless package_url
        Loggerx.error_with_exit 'ServiceConfiguration.cscfg is not valid' unless service_configuration
        upgrade_if_exists = options[:upgrade_if_exists].nil? ? false : options[:upgrade_if_exists]

        slot = "production"
        unless options.nil? || options[:slot].nil?
          valid_slot = options[:slot].casecmp("staging") || options[:slot].casecmp("production")
          Loggerx.error_with_exit 'Deployment slot is not valid' unless valid_slot
          slot = options[:slot].downcase
        end

        # 2. Get the current deployment so one can verify that it can be upgraded
        deployment = get_deployment(cloud_service_name, {:slot => slot, :no_exit_on_failure => true})

        # 3. Create or upgrade the deployment
        if deployment.exists?
          if upgrade_if_exists
            upgrade_deployment(cloud_service_name, package_url, service_configuration, options)
          else
            Loggerx.error_with_exit "#{slot.capitalize} deployment '#{deployment_name}' on cloud service #{cloud_service_name} already exist."
          end
        else
          slot = "production"
          unless options.nil? || options[:slot].nil?
            valid_slot = options[:slot].casecmp("staging") || options[:slot].casecmp("production")
            Loggerx.error_with_exit 'Deployment slot is not valid' unless valid_slot
            slot = options[:slot].downcase
          end
          Loggerx.info "Creating deployment #{deployment_name}."
          request_path = "/services/hostedservices/#{cloud_service_name}/deploymentslots/#{slot}"
          body = Serialization.create_deployment_to_xml(deployment_name, package_url, service_configuration, options)
          request = ManagementHttpRequest.new(:post, request_path, body)
          request.call(options)
        end
      end

      # Public: Upgrade an existing deployment with a new .cspkg hosted at a specific package_url.
      #         You can choose to upgrade all roles within the deployment(default), or only select 
      #         specific ones  
      #
      # ==== Attributes
      #
      # * +cloud_service_name+    - String. Name of the Cloud Service where the deployment 
      #                             needs to be created
      # * +package_url+           - String. URL of the blob storage where the .cspkg is being
      #                             stored
      # * +service_configuration+ - Base64 encoded String. ServiceConfiguration.cscfg file
      # * +options+               - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:slot+                     - String. Deployment slot. Valid values are either 
      #                                 'production'(default) or 'staging'.
      # * +:name+                     - String. Deployment's name.
      # * +:mode+                     - String. Specifies the type of update to initiate.Valid values 
      #                                 are either 'Auto'(default), 'Manual', or 'Simultaneous'
      # * +:label+                    - String. The label for this cloud service.
      # * +:role_to_upgrade+          - String. Specifies the name of the specific role instance to update.
      # * +:force+                    - Boolean(default false). Indicates whether the rollback should 
      #                                 proceed even when it will cause local data to be lost from some 
      #                                 role instances
      # * +:extended_properties+      - Hash. Key/Value pairs of extended properties to add to 
      #                                 the cloud service. The key is used as the property name 
      #                                 and the value as its value.
      # * +fire_and_forget+           - Boolean(efault is false). If true, the client 
      #                                 does not wait until the request is completed.
      #
      # More details at http://msdn.microsoft.com/en-us/library/azure/ee460793.aspx
      #
      # Returns None
      def upgrade_deployment(cloud_service_name, package_url, service_configuration, options = {})
        Loggerx.error_with_exit 'Cloud service name is not valid' unless cloud_service_name
        Loggerx.error_with_exit 'Package url is not valid' unless package_url
        Loggerx.error_with_exit 'ServiceConfiguration.cscfg is not valid' unless service_configuration

        # 1. Identify which type of query needs to be processes
        request_path = nil
        info_msg = nil
        error_msg_body = "nil"
        slot = (options[:slot].nil? && options[:name].nil?) ? "production" : options[:slot]
        if !slot.nil?
          invalid_slot = slot.casecmp("staging") != 0 && slot.casecmp("production") != 0
          Loggerx.error_with_exit 'slot is not valid' if invalid_slot
          request_path = "/services/hostedservices/#{cloud_service_name}/deploymentslots/#{slot}/?comp=upgrade"
          info_msg = "Upgrading #{slot} deployment on #{cloud_service_name} cloud service."
          error_msg_body = "#{slot.capitalize} deployment on cloud service #{cloud_service_name}"
        else
          request_path = "/services/hostedservices/#{cloud_service_name}/deployments/#{options[:name]}/?comp=upgrade"
          info_msg = "Upgrading deployment #{options[:name]} on #{cloud_service_name} cloud service."
          error_msg_body = "Deployment #{options[:name]} on cloud service #{cloud_service_name}"
        end
        options[:label] = "#{slot} deployment #{cloud_service_name}" if options[:label].nil?
        
        # 2. Get the current deployment so one can verify that it can be upgraded
        options[:no_exit_on_failure] = true
        deployment = get_deployment(cloud_service_name, options)

        # 3. Upgrade the deployment if it is in a state where it can be upgraded
        if !deployment.exists?
          Loggerx.error_with_exit "#{error_msg_body} does not exist, and therefore cannot be upgraded."
        elsif deployment.is_transitioning?
          Loggerx.error_with_exit "#{error_msg_body} is currently transitioning. Wait until it is done transitioning before doing an upgrade."
        else
          Loggerx.info info_msg
          body = Serialization.upgrade_deployment_to_xml(package_url, service_configuration, options)
          request = ManagementHttpRequest.new(:post, request_path, body)
          request.call(options)
        end
      end

      # Public: Swap the staging and production deployment of a specific cloud service 
      #
      # ==== Attributes
      #
      # * +cloud_service_name+    - String. Name of the Cloud Service where the deployments
      #                             are going to be swapped
      # * +options+               - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      #
      # * +fire_and_forget+           - Boolean(efault is false). If true, the client 
      #                                 does not wait until the request is completed.
      #
      # More details at http://msdn.microsoft.com/en-us/library/azure/ee460814.aspx
      #
      # Returns None
      def swap_deployment(cloud_service_name, options={})
        Loggerx.error_with_exit 'Cloud service name is not valid' unless cloud_service_name

        staging_deployment = get_deployment(cloud_service_name, {:slot => "staging", :no_exit_on_failure => true})
        Loggerx.error_with_exit "Staging deployment on cloud service #{cloud_service_name} does not exist yet." unless staging_deployment.exists?
        Loggerx.error_with_exit "Staging deployment on cloud service #{cloud_service_name} is transitioning. Wait until transitioning is over before swapping." if staging_deployment.is_transitioning?
        production_deployment = get_deployment(cloud_service_name, {:slot => "production", :no_exit_on_failure => true})
        Loggerx.error_with_exit "Production deployment on cloud service #{cloud_service_name} does not exist yet." unless production_deployment.exists?
        Loggerx.error_with_exit "Production deployment on cloud service #{cloud_service_name} is transitioning. Wait until transitioning is over before swapping." if production_deployment.is_transitioning?

        Loggerx.info "Swapping deployments on cloud service #{cloud_service_name} starting"
        request_path = "/services/hostedservices/#{cloud_service_name}"
        body = Serialization.swap_deployments_to_xml(production_deployment.name, staging_deployment.name)
        request = ManagementHttpRequest.new(:post, request_path, body)
        request.call(options)
      end

      # Public: Gets a specific deployment of a Cloud Service based on either its name, or its slot
      #
      # ==== Attributes
      #
      # * +cloud_service_name+    - String. Name of the Cloud Service where the deployment lives
      # * +options+               - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:slot+               - String. Deployment slot. Valid values are either 'production'(default) 
      #                           or 'staging'. If not defined, and 'name' is also not defined, then 
      #                           default slot is set to 'production'
      # * +:id+                 - String. Deployment's id(aka deployment's name, or private id).
      # * +:no_exit_on_failure+ - Boolean(optional). Default is false.
      #
      # More details at http://msdn.microsoft.com/en-us/library/azure/ee460804.aspx
      #
      def get_deployment(cloud_service_name, options={})
        Loggerx.error_with_exit 'Cloud service name is not valid' unless cloud_service_name
        request_path = nil
        slot = (options[:slot].nil? && options[:id].nil?) ? "production" : options[:slot]
        if !slot.nil?
          invalid_slot = slot.casecmp("staging") != 0 && slot.casecmp("production") != 0
          Loggerx.error_with_exit 'slot is not valid' if invalid_slot
          request_path = "/services/hostedservices/#{cloud_service_name}/deploymentslots/#{slot}"
        else
          request_path = "/services/hostedservices/#{cloud_service_name}/deployments/#{options[:id]}"
        end

        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call(options)
        #puts response
        Serialization.deployment_from_xml(response)
      end

      # Public: Gets a list of hosted services available under the current subscription.
      #
      # Returns an array of Azure::CloudServiceManagement::CloudService objects
      def list_cloud_services
        request_path = '/services/hostedservices'
        request = ManagementHttpRequest.new(:get, request_path, nil)
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
        return false if name.nil?
        flag = false
        list_cloud_services.each do |cloud_service|
          if cloud_service.name == name
            flag = true
            break
          end
        end
        flag
      end

      def get_cloud_service_properties(name)
        request_path = "/services/hostedservices/#{name}?embed-detail=true"
        request = ManagementHttpRequest.new(:get, request_path)
        response = request.call
        Serialization.cloud_services_from_xml(response).first
      end

      # Public: Deletes the specified cloud service of given subscription id from Windows Azure.
      #
      # ==== Attributes
      #
      # * +name+       - String. Cloud service name.
      #
      # Returns:  None
      def delete_cloud_service(cloud_service_name)
        request_path = "/services/hostedservices/#{cloud_service_name}"
        request = ManagementHttpRequest.new(:delete, request_path)
        Loggerx.info "Deleting cloud service #{cloud_service_name}. \n"
        request.call
      end

      # Public: Deletes the specified deployment.
      #
      # ==== Attributes
      #
      # * +cloud_service_name+  - String. Cloud service name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/ee460815.aspx
      #
      # Returns NONE
      def delete_cloud_service_deployment(cloud_service_name)
        request_path = "/services/hostedservices/#{cloud_service_name}/deploymentslots/production"
        request = ManagementHttpRequest.new(:delete, request_path)
        Loggerx.info "Deleting deployment of cloud service \"#{cloud_service_name}\" ..."
        request.call
      end

      def upload_certificate(cloud_service_name, ssh)
        data = export_der(ssh[:cert], ssh[:key])
        request_path = "/services/hostedservices/#{cloud_service_name}/certificates"
        body = Serialization.add_certificate_to_xml(data)
        Loggerx.info "Uploading certificate to cloud service #{cloud_service_name}..."
        request = ManagementHttpRequest.new(:post, request_path, body)
        request.call
      end
    end
  end
end
