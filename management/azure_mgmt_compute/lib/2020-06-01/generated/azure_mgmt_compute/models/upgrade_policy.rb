# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_01
  module Models
    #
    # Describes an upgrade policy - automatic, manual, or rolling.
    #
    class UpgradePolicy

      include MsRestAzure

      # @return [UpgradeMode] Specifies the mode of an upgrade to virtual
      # machines in the scale set.<br /><br /> Possible values are:<br /><br />
      # **Manual** - You  control the application of updates to virtual
      # machines in the scale set. You do this by using the manualUpgrade
      # action.<br /><br /> **Automatic** - All virtual machines in the scale
      # set are  automatically updated at the same time. Possible values
      # include: 'Automatic', 'Manual', 'Rolling'
      attr_accessor :mode

      # @return [RollingUpgradePolicy] The configuration parameters used while
      # performing a rolling upgrade.
      attr_accessor :rolling_upgrade_policy

      # @return [AutomaticOSUpgradePolicy] Configuration parameters used for
      # performing automatic OS Upgrade.
      attr_accessor :automatic_osupgrade_policy


      #
      # Mapper for UpgradePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpgradePolicy',
          type: {
            name: 'Composite',
            class_name: 'UpgradePolicy',
            model_properties: {
              mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mode',
                type: {
                  name: 'Enum',
                  module: 'UpgradeMode'
                }
              },
              rolling_upgrade_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rollingUpgradePolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RollingUpgradePolicy'
                }
              },
              automatic_osupgrade_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'automaticOSUpgradePolicy',
                type: {
                  name: 'Composite',
                  class_name: 'AutomaticOSUpgradePolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
