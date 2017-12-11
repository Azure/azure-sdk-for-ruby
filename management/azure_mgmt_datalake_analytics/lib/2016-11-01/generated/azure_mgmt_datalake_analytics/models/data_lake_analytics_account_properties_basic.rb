# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  module Models
    #
    # The basic account specific properties that are associated with an
    # underlying Data Lake Analytics account.
    #
    class DataLakeAnalyticsAccountPropertiesBasic

      include MsRestAzure

      # @return [DataLakeAnalyticsAccountStatus] the provisioning status of the
      # Data Lake Analytics account. Possible values include: 'Failed',
      # 'Creating', 'Running', 'Succeeded', 'Patching', 'Suspending',
      # 'Resuming', 'Deleting', 'Deleted', 'Undeleting', 'Canceled'
      attr_accessor :provisioning_state

      # @return [DataLakeAnalyticsAccountState] the state of the Data Lake
      # Analytics account. Possible values include: 'Active', 'Suspended'
      attr_accessor :state

      # @return [DateTime] the account creation time.
      attr_accessor :creation_time

      # @return [DateTime] the account last modified time.
      attr_accessor :last_modified_time

      # @return [String] the full CName endpoint for this account.
      attr_accessor :endpoint

      # @return The unique identifier associated with this Data Lake Analytics
      # account.
      attr_accessor :account_id


      #
      # Mapper for DataLakeAnalyticsAccountPropertiesBasic class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataLakeAnalyticsAccountPropertiesBasic',
          type: {
            name: 'Composite',
            class_name: 'DataLakeAnalyticsAccountPropertiesBasic',
            model_properties: {
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'Enum',
                  module: 'DataLakeAnalyticsAccountStatus'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'DataLakeAnalyticsAccountState'
                }
              },
              creation_time: {
                required: false,
                read_only: true,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'endpoint',
                type: {
                  name: 'String'
                }
              },
              account_id: {
                required: false,
                read_only: true,
                serialized_name: 'accountId',
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
