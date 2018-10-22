# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_03_31
  module Models
    #
    # Reservation recommendations resource.
    #
    class ReservationRecommendations

      include MsRestAzure

      # @return [String] Resource Id.
      attr_accessor :id

      # @return [String] Resource name.
      attr_accessor :name

      # @return [String] Resource type.
      attr_accessor :type

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource sku
      attr_accessor :sku

      # @return [String] The number of days of usage to look back for
      # recommendations.
      attr_accessor :look_back_period

      # @return The meter id (GUID)
      attr_accessor :meter_id

      # @return [String] RI recommendations in one or three year terms.
      attr_accessor :term

      # @return The total amount of cost without reserved instances.
      attr_accessor :cost_with_no_reserved_instances

      # @return Recomended quality for reserved instances.
      attr_accessor :recommended_quantity

      # @return The total amount of cost with reserved instances.
      attr_accessor :total_cost_with_reserved_instances

      # @return Total estimated savings with reserved instances.
      attr_accessor :net_savings

      # @return [DateTime] The usage date for looking back.
      attr_accessor :first_usage_date

      # @return [String] Shared or single recommendation.
      attr_accessor :scope


      #
      # Mapper for ReservationRecommendations class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReservationRecommendations',
          type: {
            name: 'Composite',
            class_name: 'ReservationRecommendations',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sku',
                type: {
                  name: 'String'
                }
              },
              look_back_period: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lookBackPeriod',
                type: {
                  name: 'String'
                }
              },
              meter_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterId',
                type: {
                  name: 'String'
                }
              },
              term: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.term',
                type: {
                  name: 'String'
                }
              },
              cost_with_no_reserved_instances: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.costWithNoReservedInstances',
                type: {
                  name: 'Number'
                }
              },
              recommended_quantity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.recommendedQuantity',
                type: {
                  name: 'Number'
                }
              },
              total_cost_with_reserved_instances: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.totalCostWithReservedInstances',
                type: {
                  name: 'Number'
                }
              },
              net_savings: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.netSavings',
                type: {
                  name: 'Number'
                }
              },
              first_usage_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.firstUsageDate',
                type: {
                  name: 'DateTime'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.scope',
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
