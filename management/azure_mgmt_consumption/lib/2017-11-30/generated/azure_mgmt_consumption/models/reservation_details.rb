# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module azure.mgmt.consumption
  module Models
    #
    # reservation details resource.
    #
    class ReservationDetails < Resource

      include MsRestAzure

      # @return [String] The reservation order ID is the identifier for a
      # reservation purchase. Each reservation order ID represents a single
      # purchase transaction. A reservation order contains reservations. The
      # reservation order specifies the VM size and region for the
      # reservations.
      attr_accessor :reservation_order_id

      # @return [String] The reservation ID is the identifier of a reservation
      # within a reservation order. Each reservation is the grouping for
      # applying the benefit scope and also specifies the number of instances
      # to which the reservation benefit can be applied to.
      attr_accessor :reservation_id

      # @return [String] This is the ARM Sku name. It can be used to join with
      # the servicetype field in additoinalinfo in usage records.
      attr_accessor :sku_name

      # @return This is the total hours reserved for the day. E.g. if
      # reservation for 1 instance was made on 1 PM, this will be 11 hours for
      # that day and 24 hours from subsequent days.
      attr_accessor :reserved_hours

      # @return [DateTime] The date on which consumption occurred.
      attr_accessor :usage_date

      # @return This is the total hours used by the instance.
      attr_accessor :used_hours

      # @return [String] This identifier is the name of the resource or the
      # fully qualified Resource ID.
      attr_accessor :instance_id

      # @return This is the total count of instances that are reserved for the
      # reservationid.
      attr_accessor :total_reserved_quantity


      #
      # Mapper for ReservationDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReservationDetails',
          type: {
            name: 'Composite',
            class_name: 'ReservationDetails',
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
              reservation_order_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservationOrderId',
                type: {
                  name: 'String'
                }
              },
              reservation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservationId',
                type: {
                  name: 'String'
                }
              },
              sku_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.skuName',
                type: {
                  name: 'String'
                }
              },
              reserved_hours: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservedHours',
                type: {
                  name: 'Number'
                }
              },
              usage_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usageDate',
                type: {
                  name: 'DateTime'
                }
              },
              used_hours: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usedHours',
                type: {
                  name: 'Number'
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceId',
                type: {
                  name: 'String'
                }
              },
              total_reserved_quantity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.totalReservedQuantity',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
