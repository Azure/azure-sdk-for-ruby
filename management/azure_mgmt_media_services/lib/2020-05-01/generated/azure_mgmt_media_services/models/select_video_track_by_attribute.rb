# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Select video tracks from the input by specifying an attribute and an
    # attribute filter.
    #
    class SelectVideoTrackByAttribute < VideoTrackDescriptor

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.SelectVideoTrackByAttribute"
      end

      attr_accessor :odatatype

      # @return [TrackAttribute] The TrackAttribute to filter the tracks by.
      # Possible values include: 'Bitrate', 'Language'
      attr_accessor :attribute

      # @return [AttributeFilter] The type of AttributeFilter to apply to the
      # TrackAttribute in order to select the tracks. Possible values include:
      # 'All', 'Top', 'Bottom', 'ValueEquals'
      attr_accessor :filter

      # @return [String] The value to filter the tracks by.  Only used when
      # AttributeFilter.ValueEquals is specified for the Filter property. For
      # TrackAttribute.Bitrate, this should be an integer value in bits per
      # second (e.g: '1500000').  The TrackAttribute.Language is not supported
      # for video tracks.
      attr_accessor :filter_value


      #
      # Mapper for SelectVideoTrackByAttribute class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.SelectVideoTrackByAttribute',
          type: {
            name: 'Composite',
            class_name: 'SelectVideoTrackByAttribute',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              attribute: {
                client_side_validation: true,
                required: true,
                serialized_name: 'attribute',
                type: {
                  name: 'String'
                }
              },
              filter: {
                client_side_validation: true,
                required: true,
                serialized_name: 'filter',
                type: {
                  name: 'String'
                }
              },
              filter_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filterValue',
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
