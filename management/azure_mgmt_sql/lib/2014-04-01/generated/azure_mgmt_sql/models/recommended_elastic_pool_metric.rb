# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents recommended elastic pool metric.
    #
    class RecommendedElasticPoolMetric

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] The time of metric (ISO8601 format).
      attr_accessor :date_time

      # @return [Float] Gets or sets the DTUs (Database Transaction Units). See
      # https://azure.microsoft.com/documentation/articles/sql-database-what-is-a-dtu/
      attr_accessor :dtu

      # @return [Float] Gets or sets size in gigabytes.
      attr_accessor :size_gb


      #
      # Mapper for RecommendedElasticPoolMetric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecommendedElasticPoolMetric',
          type: {
            name: 'Composite',
            class_name: 'RecommendedElasticPoolMetric',
            model_properties: {
              date_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dateTime',
                type: {
                  name: 'DateTime'
                }
              },
              dtu: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dtu',
                type: {
                  name: 'Double'
                }
              },
              size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sizeGB',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
