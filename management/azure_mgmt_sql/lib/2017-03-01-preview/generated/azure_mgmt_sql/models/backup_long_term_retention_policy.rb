# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # A long term retention policy.
    #
    class BackupLongTermRetentionPolicy < ProxyResource

      include MsRestAzure

      # @return [String] The weekly retention policy for an LTR backup in an
      # ISO 8601 format.
      attr_accessor :weekly_retention

      # @return [String] The montly retention policy for an LTR backup in an
      # ISO 8601 format.
      attr_accessor :monthly_retention

      # @return [String] The yearly retention policy for an LTR backup in an
      # ISO 8601 format.
      attr_accessor :yearly_retention

      # @return [Integer] The week of year to take the yearly backup in an ISO
      # 8601 format.
      attr_accessor :week_of_year


      #
      # Mapper for BackupLongTermRetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupLongTermRetentionPolicy',
          type: {
            name: 'Composite',
            class_name: 'BackupLongTermRetentionPolicy',
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
              weekly_retention: {
                required: false,
                serialized_name: 'properties.weeklyRetention',
                type: {
                  name: 'String'
                }
              },
              monthly_retention: {
                required: false,
                serialized_name: 'properties.monthlyRetention',
                type: {
                  name: 'String'
                }
              },
              yearly_retention: {
                required: false,
                serialized_name: 'properties.yearlyRetention',
                type: {
                  name: 'String'
                }
              },
              week_of_year: {
                required: false,
                serialized_name: 'properties.weekOfYear',
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
