# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::LabServices::Mgmt::V2018_10_15
  module Models
    #
    # Represents settings of an environment, from which environment instances
    # would be created
    #
    class EnvironmentSetting < Resource

      include MsRestAzure

      # @return [PublishingState] Describes the readiness of this environment
      # setting. Possible values include: 'Draft', 'Publishing', 'Published',
      # 'PublishFailed', 'Scaling'
      attr_accessor :publishing_state

      # @return [ConfigurationState] Describes the user's progress in
      # configuring their environment setting. Possible values include:
      # 'NotApplicable', 'Completed'
      attr_accessor :configuration_state

      # @return [String] Describes the environment and its resource settings
      attr_accessor :description

      # @return [String] Brief title describing the environment and its
      # resource settings
      attr_accessor :title

      # @return [ResourceSettings] The resource specific settings
      attr_accessor :resource_settings

      # @return [DateTime] Time when the template VM was last changed.
      attr_accessor :last_changed

      # @return [DateTime] Time when the template VM was last sent for
      # publishing.
      attr_accessor :last_published

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier

      # @return [LatestOperationResult] The details of the latest operation.
      # ex: status, error
      attr_accessor :latest_operation_result


      #
      # Mapper for EnvironmentSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EnvironmentSetting',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentSetting',
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
              location: {
                required: false,
                serialized_name: 'location',
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
              publishing_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.publishingState',
                type: {
                  name: 'String'
                }
              },
              configuration_state: {
                required: false,
                serialized_name: 'properties.configurationState',
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
              title: {
                required: false,
                serialized_name: 'properties.title',
                type: {
                  name: 'String'
                }
              },
              resource_settings: {
                required: true,
                serialized_name: 'properties.resourceSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSettings'
                }
              },
              last_changed: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastChanged',
                type: {
                  name: 'DateTime'
                }
              },
              last_published: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastPublished',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
                type: {
                  name: 'String'
                }
              },
              latest_operation_result: {
                required: false,
                read_only: true,
                serialized_name: 'properties.latestOperationResult',
                type: {
                  name: 'Composite',
                  class_name: 'LatestOperationResult'
                }
              }
            }
          }
        }
      end
    end
  end
end