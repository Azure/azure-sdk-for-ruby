# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # The parameters to restore files or folders.
    #
    class ILRRequestResource < MsRestAzure::Resource

      include MsRestAzure

      # @return [ILRRequest]
      attr_accessor :properties


      #
      # Mapper for ILRRequestResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ILRRequestResource',
          type: {
            name: 'Composite',
            class_name: 'ILRRequestResource',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'objectType',
                  uber_parent: 'ILRRequest',
                  class_name: 'ILRRequest'
                }
              }
            }
          }
        }
      end
    end
  end
end
