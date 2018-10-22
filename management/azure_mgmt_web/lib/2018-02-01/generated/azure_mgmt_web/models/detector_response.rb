# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Class representing Response from Detector
    #
    class DetectorResponse < ProxyOnlyResource

      include MsRestAzure

      # @return [DetectorInfo] metadata for the detector
      attr_accessor :metadata

      # @return [Array<DiagnosticData>] Data Set
      attr_accessor :dataset


      #
      # Mapper for DetectorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DetectorResponse',
          type: {
            name: 'Composite',
            class_name: 'DetectorResponse',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Composite',
                  class_name: 'DetectorInfo'
                }
              },
              dataset: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataset',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiagnosticDataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiagnosticData'
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
