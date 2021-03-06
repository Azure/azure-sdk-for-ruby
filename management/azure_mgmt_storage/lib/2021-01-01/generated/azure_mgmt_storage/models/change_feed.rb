# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # The blob service properties for change feed events.
    #
    class ChangeFeed

      include MsRestAzure

      # @return [Boolean] Indicates whether change feed event logging is
      # enabled for the Blob service.
      attr_accessor :enabled

      # @return [Integer] Indicates the duration of changeFeed retention in
      # days. Minimum value is 1 day and maximum value is 146000 days (400
      # years). A null value indicates an infinite retention of the change
      # feed.
      attr_accessor :retention_in_days


      #
      # Mapper for ChangeFeed class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChangeFeed',
          type: {
            name: 'Composite',
            class_name: 'ChangeFeed',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              retention_in_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionInDays',
                constraints: {
                  InclusiveMaximum: 146000,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
