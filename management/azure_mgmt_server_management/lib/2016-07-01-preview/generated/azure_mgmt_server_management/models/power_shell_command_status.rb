# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServerManagement::Mgmt::V2016_07_01_preview
  module Models
    #
    # Result status from invoking a PowerShell command.
    #
    class PowerShellCommandStatus < Resource

      include MsRestAzure

      # @return [Array<PowerShellCommandResult>]
      attr_accessor :results

      # @return [String]
      attr_accessor :pssession

      # @return [String]
      attr_accessor :command

      # @return [Boolean]
      attr_accessor :completed


      #
      # Mapper for PowerShellCommandStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PowerShellCommandStatus',
          type: {
            name: 'Composite',
            class_name: 'PowerShellCommandStatus',
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
              location: {
                required: false,
                read_only: true,
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
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              results: {
                required: false,
                serialized_name: 'properties.results',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PowerShellCommandResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PowerShellCommandResult'
                      }
                  }
                }
              },
              pssession: {
                required: false,
                serialized_name: 'properties.pssession',
                type: {
                  name: 'String'
                }
              },
              command: {
                required: false,
                serialized_name: 'properties.command',
                type: {
                  name: 'String'
                }
              },
              completed: {
                required: false,
                serialized_name: 'properties.completed',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
