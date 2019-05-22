# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # Definition of a Resource.
    #
    class Resource

      include MsRestAzure

      # @return [String] Fully qualified identifier of the resource.
      attr_accessor :id

      # @return [String] Name of the resource.
      attr_accessor :name

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for Resource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Resource',
          type: {
            name: 'Composite',
            class_name: 'Resource',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
