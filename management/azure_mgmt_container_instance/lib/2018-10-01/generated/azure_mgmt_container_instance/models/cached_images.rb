# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_10_01
  module Models
    #
    # The cached image and OS type.
    #
    class CachedImages

      include MsRestAzure

      # @return [String] The resource Id of the cached image.
      attr_accessor :id

      # @return [String] The OS type of the cached image.
      attr_accessor :os_type

      # @return [String] The cached image name.
      attr_accessor :image


      #
      # Mapper for CachedImages class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'cachedImages',
          type: {
            name: 'Composite',
            class_name: 'CachedImages',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: true,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              image: {
                required: true,
                serialized_name: 'image',
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
