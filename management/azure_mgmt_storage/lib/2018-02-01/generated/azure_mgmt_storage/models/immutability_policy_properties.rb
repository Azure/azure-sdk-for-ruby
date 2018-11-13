# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_02_01
  module Models
    #
    # The properties of an ImmutabilityPolicy of a blob container.
    #
    class ImmutabilityPolicyProperties

      include MsRestAzure

      # @return [Integer] The immutability period for the blobs in the
      # container since the policy creation, in days.
      attr_accessor :immutability_period_since_creation_in_days

      # @return [ImmutabilityPolicyState] The ImmutabilityPolicy state of a
      # blob container, possible values include: Locked and Unlocked. Possible
      # values include: 'Locked', 'Unlocked'
      attr_accessor :state

      # @return [String] ImmutabilityPolicy Etag.
      attr_accessor :etag

      # @return [Array<UpdateHistoryProperty>] The ImmutabilityPolicy update
      # history of the blob container.
      attr_accessor :update_history


      #
      # Mapper for ImmutabilityPolicyProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImmutabilityPolicyProperties',
          type: {
            name: 'Composite',
            class_name: 'ImmutabilityPolicyProperties',
            model_properties: {
              immutability_period_since_creation_in_days: {
                required: true,
                serialized_name: 'properties.immutabilityPeriodSinceCreationInDays',
                type: {
                  name: 'Number'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              update_history: {
                required: false,
                read_only: true,
                serialized_name: 'updateHistory',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UpdateHistoryPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UpdateHistoryProperty'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
