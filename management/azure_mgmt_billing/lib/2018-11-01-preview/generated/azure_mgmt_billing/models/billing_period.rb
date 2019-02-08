# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Billing::Mgmt::V2018_11_01_preview
  module Models
    #
    # A billing period resource.
    #
    class BillingPeriod < Resource

      include MsRestAzure

      # @return [Date] The start of the date range covered by the billing
      # period.
      attr_accessor :billing_period_start_date

      # @return [Date] The end of the date range covered by the billing period.
      attr_accessor :billing_period_end_date

      # @return [Array<String>] Array of invoice ids that associated with.
      attr_accessor :invoice_ids


      #
      # Mapper for BillingPeriod class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BillingPeriod',
          type: {
            name: 'Composite',
            class_name: 'BillingPeriod',
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
              billing_period_start_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodStartDate',
                type: {
                  name: 'Date'
                }
              },
              billing_period_end_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodEndDate',
                type: {
                  name: 'Date'
                }
              },
              invoice_ids: {
                required: false,
                read_only: true,
                serialized_name: 'properties.invoiceIds',
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