# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The eligibility result of device, as a failover target device.
    #
    class TargetEligibilityResult

      include MsRestAzure

      # @return [TargetEligibilityStatus] The eligibility status of device, as
      # a failover target device. Possible values include: 'NotEligible',
      # 'Eligible'
      attr_accessor :eligibility_status

      # @return [Array<TargetEligibilityErrorMessage>] The list of error
      # messages, if a device does not qualify as a failover target device.
      attr_accessor :messages


      #
      # Mapper for TargetEligibilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TargetEligibilityResult',
          type: {
            name: 'Composite',
            class_name: 'TargetEligibilityResult',
            model_properties: {
              eligibility_status: {
                required: false,
                serialized_name: 'eligibilityStatus',
                type: {
                  name: 'Enum',
                  module: 'TargetEligibilityStatus'
                }
              },
              messages: {
                required: false,
                serialized_name: 'messages',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TargetEligibilityErrorMessageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TargetEligibilityErrorMessage'
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
