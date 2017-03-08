# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Resource name availability request content.
    #
    class ResourceNameAvailabilityRequest

      include MsRestAzure

      # @return [String] Resource name to verify.
      attr_accessor :name

      # @return [CheckNameResourceTypes] Resource type used for verification.
      # Possible values include: 'Site', 'Slot', 'HostingEnvironment'
      attr_accessor :type

      # @return [Boolean] Is fully qualified domain name.
      attr_accessor :is_fqdn


      #
      # Mapper for ResourceNameAvailabilityRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceNameAvailabilityRequest',
          type: {
            name: 'Composite',
            class_name: 'ResourceNameAvailabilityRequest',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              is_fqdn: {
                required: false,
                serialized_name: 'isFqdn',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
