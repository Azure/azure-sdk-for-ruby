# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # A virtual network.
    #
    class VirtualNetwork < Resource

      include MsRestAzure

      # @return [Array<Subnet>] The allowed subnets of the virtual network.
      attr_accessor :allowed_subnets

      # @return [String] The description of the virtual network.
      attr_accessor :description

      # @return [String] The Microsoft.Network resource identifier of the
      # virtual network.
      attr_accessor :external_provider_resource_id

      # @return [Array<ExternalSubnet>] The external subnet properties.
      attr_accessor :external_subnets

      # @return [Array<SubnetOverride>] The subnet overrides of the virtual
      # network.
      attr_accessor :subnet_overrides

      # @return [DateTime] The creation date of the virtual network.
      attr_accessor :created_date

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for VirtualNetwork class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetwork',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetwork',
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
              allowed_subnets: {
                required: false,
                serialized_name: 'properties.allowedSubnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Subnet'
                      }
                  }
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              external_provider_resource_id: {
                required: false,
                serialized_name: 'properties.externalProviderResourceId',
                type: {
                  name: 'String'
                }
              },
              external_subnets: {
                required: false,
                serialized_name: 'properties.externalSubnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExternalSubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExternalSubnet'
                      }
                  }
                }
              },
              subnet_overrides: {
                required: false,
                serialized_name: 'properties.subnetOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubnetOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubnetOverride'
                      }
                  }
                }
              },
              created_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdDate',
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
              }
            }
          }
        }
      end
    end
  end
end
