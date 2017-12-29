# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # VMware provider specific settings
    #
    class VMwareVirtualMachineDetails < ConfigurationSettings

      include MsRestAzure


      def initialize
        @instanceType = "VMwareVirtualMachine"
      end

      attr_accessor :instanceType

      # @return [String] The ID generated by the InMage agent after it gets
      # installed on guest. This is the ID to be used during InMage
      # CreateProtection.
      attr_accessor :agent_generated_id

      # @return [String] The value indicating if InMage scout agent is
      # installed on guest.
      attr_accessor :agent_installed

      # @return [String] The OsType installed on VM.
      attr_accessor :os_type

      # @return [String] The agent version.
      attr_accessor :agent_version

      # @return [String] The IP address.
      attr_accessor :ip_address

      # @return [String] The value indicating whether VM is powered on.
      attr_accessor :powered_on

      # @return [String] The VCenter infrastructure Id.
      attr_accessor :v_center_infrastructure_id

      # @return [String] A value inidicating the discovery type of the machine.
      # Value can be vCenter or physical.
      attr_accessor :discovery_type

      # @return [Array<InMageDiskDetails>] The disk details.
      attr_accessor :disk_details

      # @return [Array<HealthError>] The validation errors.
      attr_accessor :validation_errors


      #
      # Mapper for VMwareVirtualMachineDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VMwareVirtualMachine',
          type: {
            name: 'Composite',
            class_name: 'VMwareVirtualMachineDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              agent_generated_id: {
                required: false,
                serialized_name: 'agentGeneratedId',
                type: {
                  name: 'String'
                }
              },
              agent_installed: {
                required: false,
                serialized_name: 'agentInstalled',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              agent_version: {
                required: false,
                serialized_name: 'agentVersion',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              powered_on: {
                required: false,
                serialized_name: 'poweredOn',
                type: {
                  name: 'String'
                }
              },
              v_center_infrastructure_id: {
                required: false,
                serialized_name: 'vCenterInfrastructureId',
                type: {
                  name: 'String'
                }
              },
              discovery_type: {
                required: false,
                serialized_name: 'discoveryType',
                type: {
                  name: 'String'
                }
              },
              disk_details: {
                required: false,
                serialized_name: 'diskDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InMageDiskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InMageDiskDetails'
                      }
                  }
                }
              },
              validation_errors: {
                required: false,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
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
