# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The elastic pool edition capabilities.
    #
    class ElasticPoolEditionCapability
      # @return [String] The elastic pool edition name.
      attr_accessor :name

      # @return [CapabilityStatus] The status of the elastic pool edition.
      # Possible values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [Array<ElasticPoolDtuCapability>] The list of supported elastic
      # pool DTU levels for the edition.
      attr_accessor :supported_elastic_pool_dtus


      #
      # Mapper for ElasticPoolEditionCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ElasticPoolEditionCapability',
          type: {
            name: 'Composite',
            class_name: 'ElasticPoolEditionCapability',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              supported_elastic_pool_dtus: {
                required: false,
                read_only: true,
                serialized_name: 'supportedElasticPoolDtus',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ElasticPoolDtuCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ElasticPoolDtuCapability'
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
