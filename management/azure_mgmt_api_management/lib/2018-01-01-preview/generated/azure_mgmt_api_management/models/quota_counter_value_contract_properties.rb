# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Quota counter value details.
    #
    class QuotaCounterValueContractProperties

      include MsRestAzure

      # @return [Integer] Number of times Counter was called.
      attr_accessor :calls_count

      # @return [Float] Data Transferred in KiloBytes.
      attr_accessor :kb_transferred


      #
      # Mapper for QuotaCounterValueContractProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QuotaCounterValueContractProperties',
          type: {
            name: 'Composite',
            class_name: 'QuotaCounterValueContractProperties',
            model_properties: {
              calls_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'callsCount',
                type: {
                  name: 'Number'
                }
              },
              kb_transferred: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kbTransferred',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
