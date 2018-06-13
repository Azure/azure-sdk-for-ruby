# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the dsc node configuration.
    #
    class DscNodeConfiguration < ProxyResource

      include MsRestAzure

      # @return [DateTime] Gets or sets the last modified time.
      attr_accessor :last_modified_time

      # @return [DateTime] Gets or sets creation time.
      attr_accessor :creation_time

      # @return [DscConfigurationAssociationProperty] Gets or sets the
      # configuration of the node.
      attr_accessor :configuration


      #
      # Mapper for DscNodeConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscNodeConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DscNodeConfiguration',
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
              last_modified_time: {
                required: false,
                serialized_name: 'lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              creation_time: {
                required: false,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              configuration: {
                required: false,
                serialized_name: 'configuration',
                type: {
                  name: 'Composite',
                  class_name: 'DscConfigurationAssociationProperty'
                }
              }
            }
          }
        }
      end
    end
  end
end
