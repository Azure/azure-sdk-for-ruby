# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # Definition of the activity.
    #
    class Activity

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets or sets the id of the resource.
      attr_accessor :id

      # @return [String] Gets the name of the activity.
      attr_accessor :name

      # @return [String] Gets or sets the user name of the activity.
      attr_accessor :definition

      # @return [Array<ActivityParameterSet>] Gets or sets the parameter sets
      # of the activity.
      attr_accessor :parameter_sets

      # @return [Array<ActivityOutputType>] Gets or sets the output types of
      # the activity.
      attr_accessor :output_types

      # @return [DateTime] Gets or sets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets or sets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description


      #
      # Mapper for Activity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Activity',
          type: {
            name: 'Composite',
            class_name: 'Activity',
            model_properties: {
              id: {
                required: false,
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
              definition: {
                required: false,
                serialized_name: 'properties.definition',
                type: {
                  name: 'String'
                }
              },
              parameter_sets: {
                required: false,
                serialized_name: 'properties.parameterSets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ActivityParameterSetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityParameterSet'
                      }
                  }
                }
              },
              output_types: {
                required: false,
                serialized_name: 'properties.outputTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ActivityOutputTypeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityOutputType'
                      }
                  }
                }
              },
              creation_time: {
                required: false,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                required: false,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
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
