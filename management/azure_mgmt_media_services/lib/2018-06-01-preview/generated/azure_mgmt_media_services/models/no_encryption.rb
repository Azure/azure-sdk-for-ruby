# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Class for NoEncryption scheme
    #
    class NoEncryption

      include MsRestAzure

      # @return [EnabledProtocols] Representing supported protocols
      attr_accessor :enabled_protocols


      #
      # Mapper for NoEncryption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NoEncryption',
          type: {
            name: 'Composite',
            class_name: 'NoEncryption',
            model_properties: {
              enabled_protocols: {
                required: false,
                serialized_name: 'enabledProtocols',
                type: {
                  name: 'Composite',
                  class_name: 'EnabledProtocols'
                }
              }
            }
          }
        }
      end
    end
  end
end