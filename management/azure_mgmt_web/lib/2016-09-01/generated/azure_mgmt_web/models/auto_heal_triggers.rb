# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Triggers for auto-heal.
    #
    class AutoHealTriggers

      include MsRestAzure

      include MsRest::JSONable
      # @return [RequestsBasedTrigger] A rule based on total requests.
      attr_accessor :requests

      # @return [Integer] A rule based on private bytes.
      attr_accessor :private_bytes_in_kb

      # @return [Array<StatusCodesBasedTrigger>] A rule based on status codes.
      attr_accessor :status_codes

      # @return [SlowRequestsBasedTrigger] A rule based on request execution
      # time.
      attr_accessor :slow_requests


      #
      # Mapper for AutoHealTriggers class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoHealTriggers',
          type: {
            name: 'Composite',
            class_name: 'AutoHealTriggers',
            model_properties: {
              requests: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requests',
                type: {
                  name: 'Composite',
                  class_name: 'RequestsBasedTrigger'
                }
              },
              private_bytes_in_kb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'privateBytesInKB',
                type: {
                  name: 'Number'
                }
              },
              status_codes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statusCodes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StatusCodesBasedTriggerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StatusCodesBasedTrigger'
                      }
                  }
                }
              },
              slow_requests: {
                client_side_validation: true,
                required: false,
                serialized_name: 'slowRequests',
                type: {
                  name: 'Composite',
                  class_name: 'SlowRequestsBasedTrigger'
                }
              }
            }
          }
        }
      end
    end
  end
end
