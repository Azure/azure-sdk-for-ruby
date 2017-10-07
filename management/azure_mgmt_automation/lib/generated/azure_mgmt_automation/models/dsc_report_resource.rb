# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # Definition of the DSC Report Resource.
    #
    class DscReportResource

      include MsRestAzure

      # @return [String] Gets or sets the ID of the resource.
      attr_accessor :resource_id

      # @return [String] Gets or sets the source info of the resource.
      attr_accessor :source_info

      # @return [Array<DscReportResourceNavigation>] Gets or sets the Resource
      # Navigation values for resources the resource depends on.
      attr_accessor :depends_on

      # @return [String] Gets or sets the module name of the resource.
      attr_accessor :module_name

      # @return [String] Gets or sets the module version of the resource.
      attr_accessor :module_version

      # @return [String] Gets or sets the name of the resource.
      attr_accessor :resource_name

      # @return [String] Gets or sets the error of the resource.
      attr_accessor :error

      # @return [String] Gets or sets the status of the resource.
      attr_accessor :status

      # @return [Float] Gets or sets the duration in seconds for the resource.
      attr_accessor :duration_in_seconds

      # @return [DateTime] Gets or sets the start date of the resource.
      attr_accessor :start_date


      #
      # Mapper for DscReportResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscReportResource',
          type: {
            name: 'Composite',
            class_name: 'DscReportResource',
            model_properties: {
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              source_info: {
                required: false,
                serialized_name: 'sourceInfo',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DscReportResourceNavigationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DscReportResourceNavigation'
                      }
                  }
                }
              },
              module_name: {
                required: false,
                serialized_name: 'moduleName',
                type: {
                  name: 'String'
                }
              },
              module_version: {
                required: false,
                serialized_name: 'moduleVersion',
                type: {
                  name: 'String'
                }
              },
              resource_name: {
                required: false,
                serialized_name: 'resourceName',
                type: {
                  name: 'String'
                }
              },
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              duration_in_seconds: {
                required: false,
                serialized_name: 'durationInSeconds',
                type: {
                  name: 'Double'
                }
              },
              start_date: {
                required: false,
                serialized_name: 'startDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
