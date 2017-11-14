# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # This class represents the manual action task details.
    #
    class ManualActionTaskDetails < TaskTypeDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "ManualActionTaskDetails"
      end

      attr_accessor :instanceType

      # @return [String] The name.
      attr_accessor :name

      # @return [String] The instructions.
      attr_accessor :instructions

      # @return [String] The observation.
      attr_accessor :observation


      #
      # Mapper for ManualActionTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManualActionTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'ManualActionTaskDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              instructions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instructions',
                type: {
                  name: 'String'
                }
              },
              observation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'observation',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
