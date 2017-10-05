# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::TrafficManager::Api_2017_03_01
  module Models
    #
    # Class representing a Traffic Manager Name Availability response.
    #
    class TrafficManagerNameAvailability

      include MsRestAzure

      # @return [String] The relative name.
      attr_accessor :name

      # @return [String] Traffic Manager profile resource type.
      attr_accessor :type

      # @return [Boolean] Describes whether the relative name is available or
      # not.
      attr_accessor :name_available

      # @return [String] The reason why the name is not available, when
      # applicable.
      attr_accessor :reason

      # @return [String] Descriptive message that explains why the name is not
      # available, when applicable.
      attr_accessor :message


      #
      # Mapper for TrafficManagerNameAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TrafficManagerNameAvailability',
          type: {
            name: 'Composite',
            class_name: 'TrafficManagerNameAvailability',
            model_properties: {
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
              name_available: {
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
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
