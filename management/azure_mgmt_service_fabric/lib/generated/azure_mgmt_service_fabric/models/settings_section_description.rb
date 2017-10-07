# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceFabric
  module Models
    #
    # ServiceFabric section settings
    #
    class SettingsSectionDescription

      include MsRestAzure

      # @return [String] The name of settings section
      attr_accessor :name

      # @return [Array<SettingsParameterDescription>] Collection of settings in
      # the section, each setting is a tuple consisting of setting name and
      # value
      attr_accessor :parameters


      #
      # Mapper for SettingsSectionDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SettingsSectionDescription',
          type: {
            name: 'Composite',
            class_name: 'SettingsSectionDescription',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: true,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SettingsParameterDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SettingsParameterDescription'
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
