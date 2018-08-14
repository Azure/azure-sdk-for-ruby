# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # An Account Filter.
    #
    class AccountFilter < ProxyResource

      include MsRestAzure

      # @return [PresentationTimeRange] The presentation time range.
      attr_accessor :presentation_time_range

      # @return [FirstQuality] The first quality.
      attr_accessor :first_quality

      # @return [Array<FilterTrackSelection>] The tracks selection conditions.
      attr_accessor :tracks


      #
      # Mapper for AccountFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AccountFilter',
          type: {
            name: 'Composite',
            class_name: 'AccountFilter',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              presentation_time_range: {
                required: false,
                serialized_name: 'properties.presentationTimeRange',
                type: {
                  name: 'Composite',
                  class_name: 'PresentationTimeRange'
                }
              },
              first_quality: {
                required: false,
                serialized_name: 'properties.firstQuality',
                type: {
                  name: 'Composite',
                  class_name: 'FirstQuality'
                }
              },
              tracks: {
                required: false,
                serialized_name: 'properties.tracks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'FilterTrackSelectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FilterTrackSelection'
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