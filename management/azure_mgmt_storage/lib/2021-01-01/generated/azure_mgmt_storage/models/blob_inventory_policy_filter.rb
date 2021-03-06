# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # An object that defines the blob inventory rule filter conditions.
    #
    class BlobInventoryPolicyFilter

      include MsRestAzure

      # @return [Array<String>] An array of strings for blob prefixes to be
      # matched.
      attr_accessor :prefix_match

      # @return [Array<String>] An array of predefined enum values. Valid
      # values include blockBlob, appendBlob, pageBlob. Hns accounts does not
      # support pageBlobs.
      attr_accessor :blob_types

      # @return [Boolean] Includes blob versions in blob inventory when value
      # set to true.
      attr_accessor :include_blob_versions

      # @return [Boolean] Includes blob snapshots in blob inventory when value
      # set to true.
      attr_accessor :include_snapshots


      #
      # Mapper for BlobInventoryPolicyFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BlobInventoryPolicyFilter',
          type: {
            name: 'Composite',
            class_name: 'BlobInventoryPolicyFilter',
            model_properties: {
              prefix_match: {
                client_side_validation: true,
                required: false,
                serialized_name: 'prefixMatch',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              blob_types: {
                client_side_validation: true,
                required: true,
                serialized_name: 'blobTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              include_blob_versions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'includeBlobVersions',
                type: {
                  name: 'Boolean'
                }
              },
              include_snapshots: {
                client_side_validation: true,
                required: false,
                serialized_name: 'includeSnapshots',
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
