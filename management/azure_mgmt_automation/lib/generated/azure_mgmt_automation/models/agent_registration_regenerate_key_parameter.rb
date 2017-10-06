# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The parameters supplied to the regenerate keys operation.
    #
    class AgentRegistrationRegenerateKeyParameter

      include MsRestAzure

      include MsRest::JSONable
      # @return [AgentRegistrationKeyName] Gets or sets the agent registration
      # key name - Primary or Secondary. Possible values include: 'Primary',
      # 'Secondary'
      attr_accessor :key_name

      # @return [String] Gets or sets the name of the resource.
      attr_accessor :name

      # @return [String] Gets or sets the location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets the tags attached to the
      # resource.
      attr_accessor :tags


      #
      # Mapper for AgentRegistrationRegenerateKeyParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AgentRegistrationRegenerateKeyParameter',
          type: {
            name: 'Composite',
            class_name: 'AgentRegistrationRegenerateKeyParameter',
            model_properties: {
              key_name: {
                required: true,
                serialized_name: 'keyName',
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
              }
            }
          }
        }
      end
    end
  end
end
