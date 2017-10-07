# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # Definition of runas credential to use for hybrid worker.
    #
    class RunAsCredentialAssociationProperty

      include MsRestAzure

      # @return [String] Gets or sets the name of the credential.
      attr_accessor :name


      #
      # Mapper for RunAsCredentialAssociationProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunAsCredentialAssociationProperty',
          type: {
            name: 'Composite',
            class_name: 'RunAsCredentialAssociationProperty',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
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
