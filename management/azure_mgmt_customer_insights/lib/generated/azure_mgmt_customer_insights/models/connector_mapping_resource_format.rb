# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # The c onnector mapping resource format.
    #
    class ConnectorMappingResourceFormat < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The connector name.
      attr_accessor :connector_name

      # @return [ConnectorTypes] Type of connector. Possible values include:
      # 'None', 'CRM', 'AzureBlob', 'Salesforce', 'ExchangeOnline', 'Outbound'
      attr_accessor :connector_type

      # @return [DateTime] The created time.
      attr_accessor :created

      # @return [DateTime] The last monified time.
      attr_accessor :last_modified

      # @return [EntityTypes] Defines which entity type the file should map to.
      # Possible values include: 'None', 'Profile', 'Interaction',
      # 'Relationship'
      attr_accessor :entity_type

      # @return [String] The mapping entity name.
      attr_accessor :entity_type_name

      # @return [String] The connector mapping name
      attr_accessor :connector_mapping_name

      # @return [String] Display name for the connector mapping.
      attr_accessor :display_name

      # @return [String] The description of the connector mapping.
      attr_accessor :description

      # @return [String] The DataFormat ID.
      attr_accessor :data_format_id

      # @return [ConnectorMappingProperties] The properties of the mapping.
      attr_accessor :mapping_properties

      # @return [DateTime] The next run time based on customer's settings.
      attr_accessor :next_run_time

      # @return [String] The RunId.
      attr_accessor :run_id

      # @return [ConnectorMappingStates] State of connector mapping. Possible
      # values include: 'Creating', 'Created', 'Failed', 'Ready', 'Running',
      # 'Stopped', 'Expiring'
      attr_accessor :state

      # @return [String] The hub name.
      attr_accessor :tenant_id


      #
      # Mapper for ConnectorMappingResourceFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectorMappingResourceFormat',
          type: {
            name: 'Composite',
            class_name: 'ConnectorMappingResourceFormat',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              connector_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.connectorName',
                type: {
                  name: 'String'
                }
              },
              connector_type: {
                required: false,
                serialized_name: 'properties.connectorType',
                type: {
                  name: 'String'
                }
              },
              created: {
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              entity_type: {
                required: true,
                serialized_name: 'properties.entityType',
                type: {
                  name: 'Enum',
                  module: 'EntityTypes'
                }
              },
              entity_type_name: {
                required: true,
                serialized_name: 'properties.entityTypeName',
                type: {
                  name: 'String'
                }
              },
              connector_mapping_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.connectorMappingName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              data_format_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.dataFormatId',
                type: {
                  name: 'String'
                }
              },
              mapping_properties: {
                required: true,
                serialized_name: 'properties.mappingProperties',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'ConnectorMappingProperties'
                }
              },
              next_run_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.nextRunTime',
                type: {
                  name: 'DateTime'
                }
              },
              run_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.runId',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'ConnectorMappingStates'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.tenantId',
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
