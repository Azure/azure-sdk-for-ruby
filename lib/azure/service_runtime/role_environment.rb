require 'azure/service_runtime/role_instance'
require 'azure/service_runtime/role'
require 'azure/service_runtime/deployment'
require 'azure/service_runtime/client/runtime_client'
require 'nokogiri'
require 'uuid'

module Azure
  module ServiceRuntime
    class RoleEnvironment
      VersionEndpointFixedPath = '\\\\.\\pipe\\WindowsAzureRuntime'
      VersionEndpointEnvironmentName = 'WaRuntimeEndpoint'

      # Public: Retrieves the resolved Service Runtime endpoint name.
      #
      # Returns a string with the endpoint name.
      def self.endpoint
        (defined?(@@endpoint) && @@endpoint) || ENV[VersionEndpointEnvironmentName] || VersionEndpointFixedPath
      end

      # Public: Allows to manually set an endpoint (used for testing).
      def self.endpoint=(value)
        @@endpoint = value
      end

      def self.client_id
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.client_id
      end

      # Public: Returns true if and only if the Service Runtime is available (ie, this
      # is running in Azure or the emulator.
      # This is a precondition for all of the other Service Runtime methods.
      #
      # Returns a boolean that is true if the Service Runtime is available.
      def self.is_available?
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.is_available?
      end

      # Public: Retrieves the current deployment information.
      #
      # Returns a Deployment object.
      def self.deployment(&block)
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.read do |data|
          return Deployment.new(data.css('RoleEnvironment > Deployment')[0])
        end
      end

      # Public: Retrieves a RoleInstance object that represents the role instance in which this code is running.
      #
      # Returns a RoleInstance object.
      def self.current_role_instance(&block)
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.read do |data|
          return build_current_role_instance(data)
        end
      end

      # Public: Retrieves the Role objects defined for the hosted service.
      #
      # Returns a hash of Role objects.
      def self.roles
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.read do |data|
          return build_roles(data)
        end
      end

      # Public: Requests that the current role instance be stopped and restarted.
      def self.request_recycle
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.write_status("Recycle")
      end

      def self.set_status(new_status)
        @runtime ||= RuntimeClient.new(endpoint)
        new_runtime_status =
          case new_status
            when :busy, "busy"
              "Busy"
            when :ready, "ready"
              "Started"
            else
              raise ArgumentError, "unknown state #{new_status}"
          end

        @runtime.write_status(new_runtime_status)
      end

      def self.on_changing(&block)
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.on_changing do |current_xml, goal_xml|
          change_list = calculate_changes(current_xml, goal_xml)
          block.call(change_list)
        end
      end

      def self.on_changed(&block)
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.on_changed do |last_xml, current_xml|
          change_list = calculate_changes(last_xml, current_xml)
          block.call(change_list)
        end
      end

      def self.on_stopping(&block)
        @runtime ||= RuntimeClient.new(endpoint)
        @runtime.on_stopping(&block)
      end

      private

      def self.build_roles(state_xml)
        state_xml.css('RoleEnvironment > Roles')[0].css('Role').inject({}) do |hash, role_xml|
          role = Role.new(role_xml)
          hash[role.name] = role
          hash
        end
      end

      def self.build_current_role_instance(state_xml)
        RoleInstance.new(state_xml.css('RoleEnvironment > CurrentInstance')[0])
      end

      def self.calculate_changes(source, target)
        if !source && !target
          return [[],[]]
        end

        if !source && target
          return [build_current_role_instance(target).configuration_settings.keys, build_roles(target).keys]
        end

        if source && !target
          return [build_current_role_instance(source).configuration_settings.keys, build_roles(target).keys]
        end

        changed_settings = []
        changed_roles = []

        source_role_instance = build_current_role_instance(source)
        target_role_instance = build_current_role_instance(target)

        # find edited or removed settings
        source_role_instance.configuration_settings.each do |name, value|
          if !(target_value = target_role_instance.configuration_settings[setting.name]) || value != target_value
            changed_settings << name
          end
        end

        # find added settings
        target_role_instance.configuration_settings.each do |name, value|
          if !source_role_instance.configuration_settings[name]
            changed_settings << name
          end
        end

        source_roles = build_roles(source)
        target_roles = build_roles(target)

        # find edited or removed roles
        source_roles.each do |source_role_name, source_role|
          if target_role = target_roles[source_role_name]
            source_role.instances.each do |source_instance_id, source_instance|
              if target_instance = target_role.instances[source_instance_id]
                if target_instance.fault_domain == source_instance.fault_domain &&
                  target_instance.update_domain == source_instance.update_domain

                  source_instance.endpoints.each do |source_endpoint_name, source_endpoint|
                    if target_endpoint = target_instance.endpoints[source_endpoint_name]
                      if target_endpoint.address != source_endpoint.address ||
                        target_endpoint.port != source_endpoint.port ||
                        target_endpoint.protocol != source_endpoint.protocol

                        changed_roles << source_role_name
                      end
                    else
                      changed_roles << source_role_name
                    end
                  end
                else
                  changed_roles << source_role_name
                end
              else
                changed_roles << source_role_name
              end
            end
          else
            changed_roles << source_role_name
          end
        end

        # find added roles
        target_roles.each do |target_role_name, target_role|
          if !source_roles[target_role_name]
            changed_roles << target_role_name
          end
        end

        [changed_settings, changed_roles]
      end
    end
  end
end
