# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The parameters supplied to the create job operation.
    #
    class JobCreateParameters

      include MsRestAzure

      # @return [RunbookAssociationProperty] Gets or sets the runbook.
      attr_accessor :runbook

      # @return [Hash{String => String}] Gets or sets the parameters of the
      # job.
      attr_accessor :parameters

      # @return [String] Gets or sets the runOn which specifies the group name
      # where the job is to be executed.
      attr_accessor :run_on

      # @return [String] Gets or sets name of the resource.
      attr_accessor :name

      # @return [String] Gets or sets the location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets the tags attached to the
      # resource.
      attr_accessor :tags


      #
      # Mapper for JobCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'JobCreateParameters',
            model_properties: {
              runbook: {
                required: true,
                serialized_name: 'properties.runbook',
                type: {
                  name: 'Composite',
                  class_name: 'RunbookAssociationProperty'
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
              run_on: {
                required: false,
                serialized_name: 'properties.runOn',
                type: {
                  name: 'String'
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
