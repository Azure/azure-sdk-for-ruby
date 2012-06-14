require 'azure/service_runtime/role_instance_endpoint'
require 'azure/service_runtime/local_resource'

module Azure
  module ServiceRuntime
    class RoleInstance
      attr_accessor :id, :role_name, :fault_domain, :update_domain, :endpoints, :configuration_settings, :local_resources
      alias :instance_endpoints :endpoints

      def initialize(node)
        self.id = node["id"]
        self.fault_domain = node["faultDomain"].to_i
        self.update_domain = node["updateDomain"].to_i
        self.role_name = node["roleName"]

        self.endpoints = node.css('Endpoints > Endpoint').inject({}) do |hash, endpoint_xml|
          endpoint = RoleInstanceEndpoint.new(endpoint_xml)
          hash[endpoint.name] = endpoint
          hash
        end

        self.configuration_settings = node.css('ConfigurationSettings > ConfigurationSetting').inject({}) do |hash, setting_xml|
          hash[setting_xml["name"]] = setting_xml["value"]
          hash
        end

        self.local_resources = node.css('LocalResources > LocalResource').inject({}) do |hash, local_resource_xml|
          local_resource = LocalResource.new(local_resource_xml)
          hash[local_resource.name] = local_resource
          hash
        end
      end
    end
  end
end
