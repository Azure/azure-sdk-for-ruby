# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the automation account type.
    #
    class AutomationAccount < TrackedResource

      include MsRestAzure

      # @return [Sku] Gets or sets the SKU of account.
      attr_accessor :sku

      # @return [String] Gets or sets the last modified by.
      attr_accessor :last_modified_by

      # @return [AutomationAccountState] Gets status of account. Possible
      # values include: 'Ok', 'Unavailable', 'Suspended'
      attr_accessor :state

      # @return [DateTime] Gets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description

      # @return [String] Gets or sets the etag of the resource.
      attr_accessor :etag


      #
      # Mapper for AutomationAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutomationAccount',
          type: {
            name: 'Composite',
            class_name: 'AutomationAccount',
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
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              last_modified_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastModifiedBy',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
