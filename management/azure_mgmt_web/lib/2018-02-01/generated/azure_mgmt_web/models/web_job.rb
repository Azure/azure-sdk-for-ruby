# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Web Job Information.
    #
    class WebJob < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Run command.
      attr_accessor :run_command

      # @return [String] Job URL.
      attr_accessor :url

      # @return [String] Extra Info URL.
      attr_accessor :extra_info_url

      # @return [WebJobType] Job type. Possible values include: 'Continuous',
      # 'Triggered'
      attr_accessor :web_job_type

      # @return [String] Error information.
      attr_accessor :error

      # @return [Boolean] Using SDK?
      attr_accessor :using_sdk

      # @return Job settings.
      attr_accessor :settings


      #
      # Mapper for WebJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebJob',
          type: {
            name: 'Composite',
            class_name: 'WebJob',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              run_command: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.run_command',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.url',
                type: {
                  name: 'String'
                }
              },
              extra_info_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.extra_info_url',
                type: {
                  name: 'String'
                }
              },
              web_job_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.web_job_type',
                type: {
                  name: 'Enum',
                  module: 'WebJobType'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.error',
                type: {
                  name: 'String'
                }
              },
              using_sdk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.using_sdk',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
