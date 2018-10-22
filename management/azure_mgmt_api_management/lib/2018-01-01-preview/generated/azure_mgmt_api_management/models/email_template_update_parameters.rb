# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Email Template update Parameters.
    #
    class EmailTemplateUpdateParameters

      include MsRestAzure

      # @return [String] Subject of the Template.
      attr_accessor :subject

      # @return [String] Title of the Template.
      attr_accessor :title

      # @return [String] Description of the Email Template.
      attr_accessor :description

      # @return [String] Email Template Body. This should be a valid XDocument
      attr_accessor :body

      # @return [Array<EmailTemplateParametersContractProperties>] Email
      # Template Parameter values.
      attr_accessor :parameters


      #
      # Mapper for EmailTemplateUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EmailTemplateUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'EmailTemplateUpdateParameters',
            model_properties: {
              subject: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subject',
                constraints: {
                  MaxLength: 1000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.title',
                type: {
                  name: 'String'
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
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.body',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EmailTemplateParametersContractPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EmailTemplateParametersContractProperties'
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
