# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Process Module Information.
    #
    class ProcessModuleInfo < MsRestAzure::ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Base address. Used as module identifier in ARM
      # resource URI.
      attr_accessor :base_address

      # @return [String] File name.
      attr_accessor :file_name

      # @return [String] HRef URI.
      attr_accessor :href

      # @return [String] File path.
      attr_accessor :file_path

      # @return [Integer] Module memory size.
      attr_accessor :module_memory_size

      # @return [String] File version.
      attr_accessor :file_version

      # @return [String] File description.
      attr_accessor :file_description

      # @return [String] Product name.
      attr_accessor :product

      # @return [String] Product version.
      attr_accessor :product_version

      # @return [Boolean] Is debug?
      attr_accessor :is_debug

      # @return [String] Module language (locale).
      attr_accessor :language


      #
      # Mapper for ProcessModuleInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProcessModuleInfo',
          type: {
            name: 'Composite',
            class_name: 'ProcessModuleInfo',
            model_properties: {
              id: {
                required: false,
                read_only: true,
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              base_address: {
                required: false,
                serialized_name: 'properties.baseAddress',
                type: {
                  name: 'String'
                }
              },
              file_name: {
                required: false,
                serialized_name: 'properties.fileName',
                type: {
                  name: 'String'
                }
              },
              href: {
                required: false,
                serialized_name: 'properties.href',
                type: {
                  name: 'String'
                }
              },
              file_path: {
                required: false,
                serialized_name: 'properties.filePath',
                type: {
                  name: 'String'
                }
              },
              module_memory_size: {
                required: false,
                serialized_name: 'properties.moduleMemorySize',
                type: {
                  name: 'Number'
                }
              },
              file_version: {
                required: false,
                serialized_name: 'properties.fileVersion',
                type: {
                  name: 'String'
                }
              },
              file_description: {
                required: false,
                serialized_name: 'properties.fileDescription',
                type: {
                  name: 'String'
                }
              },
              product: {
                required: false,
                serialized_name: 'properties.product',
                type: {
                  name: 'String'
                }
              },
              product_version: {
                required: false,
                serialized_name: 'properties.productVersion',
                type: {
                  name: 'String'
                }
              },
              is_debug: {
                required: false,
                serialized_name: 'properties.isDebug',
                type: {
                  name: 'Boolean'
                }
              },
              language: {
                required: false,
                serialized_name: 'properties.language',
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
