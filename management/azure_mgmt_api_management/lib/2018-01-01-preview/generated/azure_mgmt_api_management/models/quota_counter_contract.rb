# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Quota counter details.
    #
    class QuotaCounterContract

      include MsRestAzure

      # @return [String] The Key value of the Counter. Must not be empty.
      attr_accessor :counter_key

      # @return [String] Identifier of the Period for which the counter was
      # collected. Must not be empty.
      attr_accessor :period_key

      # @return [DateTime] The date of the start of Counter Period. The date
      # conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified
      # by the ISO 8601 standard.
      #
      attr_accessor :period_start_time

      # @return [DateTime] The date of the end of Counter Period. The date
      # conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified
      # by the ISO 8601 standard.
      #
      attr_accessor :period_end_time

      # @return [QuotaCounterValueContractProperties] Quota Value Properties
      attr_accessor :value


      #
      # Mapper for QuotaCounterContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QuotaCounterContract',
          type: {
            name: 'Composite',
            class_name: 'QuotaCounterContract',
            model_properties: {
              counter_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'counterKey',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              period_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'periodKey',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              period_start_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'periodStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              period_end_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'periodEndTime',
                type: {
                  name: 'DateTime'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Composite',
                  class_name: 'QuotaCounterValueContractProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
