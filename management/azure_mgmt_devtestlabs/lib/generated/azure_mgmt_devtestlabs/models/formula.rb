# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A formula for creating a VM, specifying an image base and other
    # parameters
    #
    class Formula < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The description of the formula.
      attr_accessor :description

      # @return [String] The author of the formula.
      attr_accessor :author

      # @return [String] The OS type of the formula.
      attr_accessor :os_type

      # @return [DateTime] The creation date of the formula.
      attr_accessor :creation_date

      # @return [LabVirtualMachineCreationParameter] The content of the
      # formula.
      attr_accessor :formula_content

      # @return [FormulaPropertiesFromVm] Information about a VM from which a
      # formula is to be created.
      attr_accessor :vm

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for Formula class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Formula',
          type: {
            name: 'Composite',
            class_name: 'Formula',
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
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              author: {
                required: false,
                serialized_name: 'properties.author',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              formula_content: {
                required: false,
                serialized_name: 'properties.formulaContent',
                type: {
                  name: 'Composite',
                  class_name: 'LabVirtualMachineCreationParameter'
                }
              },
              vm: {
                required: false,
                serialized_name: 'properties.vm',
                type: {
                  name: 'Composite',
                  class_name: 'FormulaPropertiesFromVm'
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
