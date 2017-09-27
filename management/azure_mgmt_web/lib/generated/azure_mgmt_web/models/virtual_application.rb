# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Virtual application in an app.
    #
    class VirtualApplication

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Virtual path.
      attr_accessor :virtual_path

      # @return [String] Physical path.
      attr_accessor :physical_path

      # @return [Boolean] <code>true</code> if preloading is enabled;
      # otherwise, <code>false</code>.
      attr_accessor :preload_enabled

      # @return [Array<VirtualDirectory>] Virtual directories for virtual
      # application.
      attr_accessor :virtual_directories


      #
      # Mapper for VirtualApplication class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualApplication',
          type: {
            name: 'Composite',
            class_name: 'VirtualApplication',
            model_properties: {
              virtual_path: {
                required: false,
                serialized_name: 'virtualPath',
                type: {
                  name: 'String'
                }
              },
              physical_path: {
                required: false,
                serialized_name: 'physicalPath',
                type: {
                  name: 'String'
                }
              },
              preload_enabled: {
                required: false,
                serialized_name: 'preloadEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              virtual_directories: {
                required: false,
                serialized_name: 'virtualDirectories',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualDirectoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualDirectory'
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
