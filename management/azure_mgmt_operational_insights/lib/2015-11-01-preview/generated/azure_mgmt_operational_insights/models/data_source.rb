# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::OperationalInsights::Api_2015_11_01_preview
  module Models
    #
    # Datasources under OMS Workspace.
    #
    class DataSource < ProxyResource

      include MsRestAzure

      # @return The data source properties in raw json format, each kind of
      # data source have it's own schema.
      attr_accessor :properties

      # @return [String] The ETag of the data source.
      attr_accessor :e_tag

      # @return [DataSourceKind] Possible values include: 'AzureActivityLog',
      # 'ChangeTrackingPath', 'ChangeTrackingDefaultPath',
      # 'ChangeTrackingDefaultRegistry', 'ChangeTrackingCustomRegistry',
      # 'CustomLog', 'CustomLogCollection', 'GenericDataSource', 'IISLogs',
      # 'LinuxPerformanceObject', 'LinuxPerformanceCollection', 'LinuxSyslog',
      # 'LinuxSyslogCollection', 'WindowsEvent', 'WindowsPerformanceCounter'
      attr_accessor :kind


      #
      # Mapper for DataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataSource',
          type: {
            name: 'Composite',
            class_name: 'DataSource',
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
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              properties: {
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: true,
                serialized_name: 'kind',
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
