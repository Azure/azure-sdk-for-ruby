# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded::Api_2016_01_29
  module Models
    #
    # Model object.
    #
    #
    class Operation

      include MsRestAzure

      # @return [String] The name of the operation being performed on this
      # particular object. This name should match the action name that appears
      # in RBAC / the event service.
      attr_accessor :name

      # @return [Display]
      attr_accessor :display


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'Display'
                }
              }
            }
          }
        }
      end
    end
  end
end
