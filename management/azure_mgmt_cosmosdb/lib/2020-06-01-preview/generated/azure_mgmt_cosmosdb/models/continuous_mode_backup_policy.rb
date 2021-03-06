# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # The object representing continuous mode backup policy.
    #
    class ContinuousModeBackupPolicy < BackupPolicy

      include MsRestAzure


      def initialize
        @type = "Continuous"
      end

      attr_accessor :type


      #
      # Mapper for ContinuousModeBackupPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Continuous',
          type: {
            name: 'Composite',
            class_name: 'ContinuousModeBackupPolicy',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
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
