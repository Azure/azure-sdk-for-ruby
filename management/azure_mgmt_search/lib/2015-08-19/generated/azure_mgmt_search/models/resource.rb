# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Search::Mgmt::V2015_08_19
  module Models
    #
    # Base type for all Azure resources.
    #
    class Resource

      include MsRestAzure

      # @return [String] The ID of the resource. This can be used with the
      # Azure Resource Manager to link resources together.
      attr_accessor :id

      # @return [String] The name of the resource.
      attr_accessor :name

      # @return [String] The resource type.
      attr_accessor :type

      # @return [String] The geographic location of the resource. This must be
      # one of the supported and registered Azure Geo Regions (for example,
      # West US, East US, Southeast Asia, and so forth). This property is
      # required when creating a new resource.
      attr_accessor :location

      # @return [Hash{String => String}] Tags to help categorize the resource
      # in the Azure portal.
      attr_accessor :tags

      # @return [Identity] The identity of the resource.
      attr_accessor :identity


      # @return [String] the name of the resource group of the resource.
      def resource_group
        unless self.id.nil?
          groups = self.id.match(/.+\/resourceGroups\/([^\/]+)\/.+/)
          groups.captures[0].strip if groups
        end
      end


      #
      # Mapper for Resource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Resource',
          type: {
            name: 'Composite',
            class_name: 'Resource',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              }
            }
          }
        }
      end
    end
  end
end
