# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Operation Entity Contract Properties.
    #
    class OperationEntityContract < Resource

      include MsRestAzure

      # @return [String] Operation name.
      attr_accessor :display_name

      # @return [String] Api Name.
      attr_accessor :api_name

      # @return [String] Api Revision.
      attr_accessor :api_revision

      # @return [String] Api Version.
      attr_accessor :api_version

      # @return [String] Operation Description.
      attr_accessor :description

      # @return [String] A Valid HTTP Operation Method. Typical Http Methods
      # like GET, PUT, POST but not limited by only them.
      attr_accessor :method

      # @return [String] Relative URL template identifying the target resource
      # for this operation. May include parameters. Example:
      # /customers/{cid}/orders/{oid}/?date={date}
      attr_accessor :url_template


      #
      # Mapper for OperationEntityContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationEntityContract',
          type: {
            name: 'Composite',
            class_name: 'OperationEntityContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              api_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.apiName',
                type: {
                  name: 'String'
                }
              },
              api_revision: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.apiRevision',
                type: {
                  name: 'String'
                }
              },
              api_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.apiVersion',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              method: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.method',
                type: {
                  name: 'String'
                }
              },
              url_template: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.urlTemplate',
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
