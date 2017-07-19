# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
  module Models
    #
    # Parameters for adding an Application.
    #
    class ApplicationCreateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] A value indicating whether packages within the
      # application may be overwritten using the same version string.
      attr_accessor :allow_updates

      # @return [String] The display name for the application.
      attr_accessor :display_name


      #
      # Mapper for ApplicationCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'ApplicationCreateParameters',
            model_properties: {
              allow_updates: {
                required: false,
                serialized_name: 'allowUpdates',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
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
