module Azure
  module ServiceRuntime
    class RoleEnvironmentChange
    end

    class RoleEnvironmentConfigurationSettingChange < RoleEnvironmentChange
      attr_reader :configuration_setting_name
      alias :name :configuration_setting_name

      def initialize(configuration_setting_name)
        @configuration_setting_name = configuration_setting_name
      end

      def to_s
        @configuration_setting_name
      end
    end

    class RoleEnvironmentTopologyChange < RoleEnvironmentChange
      attr_reader :role_name
      alias :name :role_name

      def initialize(role_name)
        @role_name = role_name
      end

      def to_s
        @role_name
      end
    end
  end
end
