# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The database edition capabilities.
    #
    class EditionCapability

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The edition name.
      attr_accessor :name

      # @return [CapabilityStatus] The status of the edition. Possible values
      # include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [Array<ServiceObjectiveCapability>] The list of supported
      # service objectives for the edition.
      attr_accessor :supported_service_level_objectives


      #
      # Mapper for EditionCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EditionCapability',
          type: {
            name: 'Composite',
            class_name: 'EditionCapability',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              supported_service_level_objectives: {
                required: false,
                read_only: true,
                serialized_name: 'supportedServiceLevelObjectives',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ServiceObjectiveCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceObjectiveCapability'
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
