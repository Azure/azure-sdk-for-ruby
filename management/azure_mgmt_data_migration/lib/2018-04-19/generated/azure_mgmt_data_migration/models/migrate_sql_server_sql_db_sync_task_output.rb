# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Output for the task that migrates on-prem SQL Server databases to Azure
    # SQL Database for online migrations
    #
    class MigrateSqlServerSqlDbSyncTaskOutput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["DatabaseLevelErrorOutput"] = "MigrateSqlServerSqlDbSyncTaskOutputDatabaseError"
      @@discriminatorMap["ErrorOutput"] = "MigrateSqlServerSqlDbSyncTaskOutputError"
      @@discriminatorMap["TableLevelOutput"] = "MigrateSqlServerSqlDbSyncTaskOutputTableLevel"
      @@discriminatorMap["DatabaseLevelOutput"] = "MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevel"
      @@discriminatorMap["MigrationLevelOutput"] = "MigrateSqlServerSqlDbSyncTaskOutputMigrationLevel"

      def initialize
        @resultType = "MigrateSqlServerSqlDbSyncTaskOutput"
      end

      attr_accessor :resultType

      # @return [String] Result identifier
      attr_accessor :id


      #
      # Mapper for MigrateSqlServerSqlDbSyncTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateSqlServerSqlDbSyncTaskOutput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'resultType',
            uber_parent: 'MigrateSqlServerSqlDbSyncTaskOutput',
            class_name: 'MigrateSqlServerSqlDbSyncTaskOutput',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
