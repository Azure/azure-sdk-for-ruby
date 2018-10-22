# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NotificationHubs::Mgmt::V2017_04_01
  module Models
    #
    # Description of a NotificationHub Resource.
    #
    class DebugSendResponse < Resource

      include MsRestAzure

      # @return [Float] successful send
      attr_accessor :success

      # @return [Float] send failure
      attr_accessor :failure

      # @return actual failure description
      attr_accessor :results


      #
      # Mapper for DebugSendResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DebugSendResponse',
          type: {
            name: 'Composite',
            class_name: 'DebugSendResponse',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              success: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.success',
                type: {
                  name: 'Double'
                }
              },
              failure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.failure',
                type: {
                  name: 'Double'
                }
              },
              results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.results',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
