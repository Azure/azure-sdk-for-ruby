# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Application Created event.
    #
    class ApplicationCreatedEvent < ApplicationEvent

      include MsRestAzure


      def initialize
        @Kind = "ApplicationCreated"
      end

      attr_accessor :Kind

      # @return [String] Application type name.
      attr_accessor :application_type_name

      # @return [String] Application type version.
      attr_accessor :application_type_version

      # @return [String] Application definition kind.
      attr_accessor :application_definition_kind


      #
      # Mapper for ApplicationCreatedEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationCreated',
          type: {
            name: 'Composite',
            class_name: 'ApplicationCreatedEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Category',
                type: {
                  name: 'String'
                }
              },
              time_stamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              has_correlated_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasCorrelatedEvents',
                type: {
                  name: 'Boolean'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              application_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationId',
                type: {
                  name: 'String'
                }
              },
              application_type_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationTypeName',
                type: {
                  name: 'String'
                }
              },
              application_type_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationTypeVersion',
                type: {
                  name: 'String'
                }
              },
              application_definition_kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationDefinitionKind',
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
