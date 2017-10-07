# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The failover set on a device.
    #
    class FailoverSet

      include MsRestAzure

      # @return [Array<VolumeContainerFailoverMetadata>] The list of meta data
      # of volume containers, which are part of the failover set.
      attr_accessor :volume_containers

      # @return [FailoverSetEligibilityResult] The eligibility result of the
      # failover set, for failover.
      attr_accessor :eligibility_result


      #
      # Mapper for FailoverSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FailoverSet',
          type: {
            name: 'Composite',
            class_name: 'FailoverSet',
            model_properties: {
              volume_containers: {
                required: false,
                serialized_name: 'volumeContainers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VolumeContainerFailoverMetadataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VolumeContainerFailoverMetadata'
                      }
                  }
                }
              },
              eligibility_result: {
                required: false,
                serialized_name: 'eligibilityResult',
                type: {
                  name: 'Composite',
                  class_name: 'FailoverSetEligibilityResult'
                }
              }
            }
          }
        }
      end
    end
  end
end
