# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # The output configuration of a job step.
    #
    class JobStepOutput

      include MsRestAzure

      # @return [JobStepOutputType] The output destination type. Possible
      # values include: 'SqlDatabase'. Default value: 'SqlDatabase' .
      attr_accessor :type

      # @return The output destination subscription id.
      attr_accessor :subscription_id

      # @return [String] The output destination resource group.
      attr_accessor :resource_group_name

      # @return [String] The output destination server name.
      attr_accessor :server_name

      # @return [String] The output destination database.
      attr_accessor :database_name

      # @return [String] The output destination schema. Default value: 'dbo' .
      attr_accessor :schema_name

      # @return [String] The output destination table.
      attr_accessor :table_name

      # @return [String] The resource ID of the credential to use to connect to
      # the output destination.
      attr_accessor :credential


      #
      # Mapper for JobStepOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobStepOutput',
          type: {
            name: 'Composite',
            class_name: 'JobStepOutput',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
                default_value: 'SqlDatabase',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_group_name: {
                required: false,
                serialized_name: 'resourceGroupName',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                required: true,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                required: true,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              schema_name: {
                required: false,
                serialized_name: 'schemaName',
                default_value: 'dbo',
                type: {
                  name: 'String'
                }
              },
              table_name: {
                required: true,
                serialized_name: 'tableName',
                type: {
                  name: 'String'
                }
              },
              credential: {
                required: true,
                serialized_name: 'credential',
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
