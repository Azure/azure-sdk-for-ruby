# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The parameters supplied to the create compilation job operation.
    #
    class DscCompilationJobCreateParameters

      include MsRestAzure

      # @return [DscConfigurationAssociationProperty] Gets or sets the
      # configuration.
      attr_accessor :configuration

      # @return [Hash{String => String}] Gets or sets the parameters of the
      # job.
      attr_accessor :parameters

      # @return [String] Gets or sets name of the resource.
      attr_accessor :name

      # @return [String] Gets or sets the location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets the tags attached to the
      # resource.
      attr_accessor :tags


      #
      # Mapper for DscCompilationJobCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscCompilationJobCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'DscCompilationJobCreateParameters',
            model_properties: {
              configuration: {
                required: true,
                serialized_name: 'properties.configuration',
                type: {
                  name: 'Composite',
                  class_name: 'DscConfigurationAssociationProperty'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
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
              name: {
                required: false,
                serialized_name: 'name',
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
              }
            }
          }
        }
      end
    end
  end
end
