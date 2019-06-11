# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::LabServices::Mgmt::V2018_10_15
  module Models
    #
    # Represents a VM and the setting Id it was created for.
    #
    class ResourceSet

      include MsRestAzure

      # @return [String] VM resource Id for the environment
      attr_accessor :vm_resource_id

      # @return [String] resourceSettingId for the environment
      attr_accessor :resource_setting_id


      #
      # Mapper for ResourceSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceSet',
          type: {
            name: 'Composite',
            class_name: 'ResourceSet',
            model_properties: {
              vm_resource_id: {
                required: false,
                serialized_name: 'vmResourceId',
                type: {
                  name: 'String'
                }
              },
              resource_setting_id: {
                required: false,
                serialized_name: 'resourceSettingId',
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