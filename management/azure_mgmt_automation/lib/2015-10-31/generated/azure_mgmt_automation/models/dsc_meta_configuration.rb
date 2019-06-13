# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the DSC Meta Configuration.
    #
    class DscMetaConfiguration

      include MsRestAzure

      # @return [Integer] Gets or sets the ConfigurationModeFrequencyMins value
      # of the meta configuration.
      attr_accessor :configuration_mode_frequency_mins

      # @return [Boolean] Gets or sets the RebootNodeIfNeeded value of the meta
      # configuration.
      attr_accessor :reboot_node_if_needed

      # @return [String] Gets or sets the ConfigurationMode value of the meta
      # configuration.
      attr_accessor :configuration_mode

      # @return [String] Gets or sets the ActionAfterReboot value of the meta
      # configuration.
      attr_accessor :action_after_reboot

      # @return [String] Gets or sets the CertificateId value of the meta
      # configuration.
      attr_accessor :certificate_id

      # @return [Integer] Gets or sets the RefreshFrequencyMins value of the
      # meta configuration.
      attr_accessor :refresh_frequency_mins

      # @return [Boolean] Gets or sets the AllowModuleOverwrite value of the
      # meta configuration.
      attr_accessor :allow_module_overwrite


      #
      # Mapper for DscMetaConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscMetaConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DscMetaConfiguration',
            model_properties: {
              configuration_mode_frequency_mins: {
                required: false,
                serialized_name: 'configurationModeFrequencyMins',
                type: {
                  name: 'Number'
                }
              },
              reboot_node_if_needed: {
                required: false,
                serialized_name: 'rebootNodeIfNeeded',
                type: {
                  name: 'Boolean'
                }
              },
              configuration_mode: {
                required: false,
                serialized_name: 'configurationMode',
                type: {
                  name: 'String'
                }
              },
              action_after_reboot: {
                required: false,
                serialized_name: 'actionAfterReboot',
                type: {
                  name: 'String'
                }
              },
              certificate_id: {
                required: false,
                serialized_name: 'certificateId',
                type: {
                  name: 'String'
                }
              },
              refresh_frequency_mins: {
                required: false,
                serialized_name: 'refreshFrequencyMins',
                type: {
                  name: 'Number'
                }
              },
              allow_module_overwrite: {
                required: false,
                serialized_name: 'allowModuleOverwrite',
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
