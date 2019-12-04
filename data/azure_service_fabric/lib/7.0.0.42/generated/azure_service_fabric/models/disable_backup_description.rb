# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # It describes the body parameters while disabling backup of a backup
    # entity(Application/Service/Partition).
    #
    class DisableBackupDescription

      include MsRestAzure

      # @return [Boolean] Boolean flag to delete backups. It can be set to true
      # for deleting all the backups which were created for the backup entity
      # that is getting disabled for backup.
      attr_accessor :clean_backup


      #
      # Mapper for DisableBackupDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DisableBackupDescription',
          type: {
            name: 'Composite',
            class_name: 'DisableBackupDescription',
            model_properties: {
              clean_backup: {
                client_side_validation: true,
                required: true,
                serialized_name: 'CleanBackup',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
