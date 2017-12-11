# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Scheduler::Mgmt::V2016_03_01
  module Models
    #
    # Model object.
    #
    #
    class JobHistoryDefinition

      include MsRestAzure

      # @return [String] Gets the job history identifier.
      attr_accessor :id

      # @return [String] Gets the job history resource type.
      attr_accessor :type

      # @return [String] Gets the job history name.
      attr_accessor :name

      # @return [JobHistoryDefinitionProperties] Gets or sets the job history
      # properties.
      attr_accessor :properties


      #
      # Mapper for JobHistoryDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobHistoryDefinition',
          type: {
            name: 'Composite',
            class_name: 'JobHistoryDefinition',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'JobHistoryDefinitionProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
