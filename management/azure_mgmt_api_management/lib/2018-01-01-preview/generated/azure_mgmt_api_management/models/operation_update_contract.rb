# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Api Operation Update Contract details.
    #
    class OperationUpdateContract

      include MsRestAzure

      # @return [Array<ParameterContract>] Collection of URL template
      # parameters.
      attr_accessor :template_parameters

      # @return [String] Description of the operation. May include HTML
      # formatting tags.
      attr_accessor :description

      # @return [RequestContract] An entity containing request details.
      attr_accessor :request

      # @return [Array<ResponseContract>] Array of Operation responses.
      attr_accessor :responses

      # @return [String] Operation Policies
      attr_accessor :policies

      # @return [String] Operation Name.
      attr_accessor :display_name

      # @return [String] A Valid HTTP Operation Method. Typical Http Methods
      # like GET, PUT, POST but not limited by only them.
      attr_accessor :method

      # @return [String] Relative URL template identifying the target resource
      # for this operation. May include parameters. Example:
      # /customers/{cid}/orders/{oid}/?date={date}
      attr_accessor :url_template


      #
      # Mapper for OperationUpdateContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationUpdateContract',
          type: {
            name: 'Composite',
            class_name: 'OperationUpdateContract',
            model_properties: {
              template_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.templateParameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterContract'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                constraints: {
                  MaxLength: 1000
                },
                type: {
                  name: 'String'
                }
              },
              request: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.request',
                type: {
                  name: 'Composite',
                  class_name: 'RequestContract'
                }
              },
              responses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.responses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResponseContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResponseContract'
                      }
                  }
                }
              },
              policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.policies',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.method',
                type: {
                  name: 'String'
                }
              },
              url_template: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.urlTemplate',
                constraints: {
                  MaxLength: 1000,
                  MinLength: 1
                },
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
