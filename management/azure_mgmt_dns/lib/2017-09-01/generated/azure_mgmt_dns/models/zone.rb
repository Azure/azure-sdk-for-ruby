# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2017_09_01
  module Models
    #
    # Describes a DNS zone.
    #
    class Zone < TrackedResource

      include MsRestAzure

      # @return [String] The etag of the zone.
      attr_accessor :etag

      # @return [Integer] The maximum number of record sets that can be created
      # in this DNS zone.  This is a read-only property and any attempt to set
      # this value will be ignored.
      attr_accessor :max_number_of_record_sets

      # @return [Integer] The current number of record sets in this DNS zone.
      # This is a read-only property and any attempt to set this value will be
      # ignored.
      attr_accessor :number_of_record_sets

      # @return [Array<String>] The name servers for this DNS zone. This is a
      # read-only property and any attempt to set this value will be ignored.
      attr_accessor :name_servers


      #
      # Mapper for Zone class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Zone',
          type: {
            name: 'Composite',
            class_name: 'Zone',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              max_number_of_record_sets: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxNumberOfRecordSets',
                type: {
                  name: 'Number'
                }
              },
              number_of_record_sets: {
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfRecordSets',
                type: {
                  name: 'Number'
                }
              },
              name_servers: {
                required: false,
                read_only: true,
                serialized_name: 'properties.nameServers',
                type: {
                  name: 'Sequence',
                  element: {
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
