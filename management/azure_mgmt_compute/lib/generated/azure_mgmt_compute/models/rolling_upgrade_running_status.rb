# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Information about the current running state of the overall upgrade.
    #
    class RollingUpgradeRunningStatus

      include MsRestAzure

      include MsRest::JSONable
      # @return [RollingUpgradeStatusCode] Code indicating the current status
      # of the upgrade. Possible values include: 'RollingForward', 'Cancelled',
      # 'Completed', 'Faulted'
      attr_accessor :code

      # @return [DateTime] Start time of the upgrade.
      attr_accessor :start_time

      # @return [RollingUpgradeActionType] The last action performed on the
      # rolling upgrade. Possible values include: 'Start', 'Cancel'
      attr_accessor :last_action

      # @return [DateTime] Last action time of the upgrade.
      attr_accessor :last_action_time


      #
      # Mapper for RollingUpgradeRunningStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RollingUpgradeRunningStatus',
          type: {
            name: 'Composite',
            class_name: 'RollingUpgradeRunningStatus',
            model_properties: {
              code: {
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'Enum',
                  module: 'RollingUpgradeStatusCode'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_action: {
                required: false,
                read_only: true,
                serialized_name: 'lastAction',
                type: {
                  name: 'Enum',
                  module: 'RollingUpgradeActionType'
                }
              },
              last_action_time: {
                required: false,
                read_only: true,
                serialized_name: 'lastActionTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
