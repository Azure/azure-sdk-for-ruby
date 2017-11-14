# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Recovery plan script action details.
    #
    class RecoveryPlanScriptActionDetails < RecoveryPlanActionDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "ScriptActionDetails"
      end

      attr_accessor :instanceType

      # @return [String] The script path.
      attr_accessor :path

      # @return [String] The script timeout.
      attr_accessor :timeout

      # @return [RecoveryPlanActionLocation] The fabric location. Possible
      # values include: 'Primary', 'Recovery'
      attr_accessor :fabric_location


      #
      # Mapper for RecoveryPlanScriptActionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScriptActionDetails',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanScriptActionDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeout',
                type: {
                  name: 'String'
                }
              },
              fabric_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fabricLocation',
                type: {
                  name: 'Enum',
                  module: 'RecoveryPlanActionLocation'
                }
              }
            }
          }
        }
      end
    end
  end
end
