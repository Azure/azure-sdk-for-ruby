# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_notification_hubs'

module Azure::Profiles::Latest
  module NotificationHubs
    module Mgmt
      Namespaces = Azure::NotificationHubs::Mgmt::V2017_04_01::Namespaces
      Operations = Azure::NotificationHubs::Mgmt::V2017_04_01::Operations
      NotificationHubs = Azure::NotificationHubs::Mgmt::V2017_04_01::NotificationHubs

      module Models
        ResourceListKeys = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ResourceListKeys
        PolicykeyResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::PolicykeyResource
        Sku = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Sku
        ApnsCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ApnsCredential
        WnsCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::WnsCredential
        CheckAvailabilityParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckAvailabilityParameters
        GcmCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::GcmCredential
        NotificationHubListResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubListResult
        SharedAccessAuthorizationRuleListResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleListResult
        SharedAccessAuthorizationRuleCreateOrUpdateParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
        SubResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SubResource
        MpnsCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::MpnsCredential
        SharedAccessAuthorizationRuleProperties = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleProperties
        NamespaceListResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceListResult
        BaiduCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::BaiduCredential
        AdmCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::AdmCredential
        CheckAvailabilityResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckAvailabilityResult
        Resource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Resource
        NamespaceResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceResource
        NamespaceCreateOrUpdateParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceCreateOrUpdateParameters
        NotificationHubCreateOrUpdateParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubCreateOrUpdateParameters
        NamespacePatchParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespacePatchParameters
        NotificationHubResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubResource
        NotificationHubPatchParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubPatchParameters
        SharedAccessAuthorizationRuleResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleResource
        DebugSendResponse = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::DebugSendResponse
        PnsCredentialsResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::PnsCredentialsResource
        NamespaceType = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceType
        SkuName = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SkuName
        OperationDisplay = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::OperationDisplay
        OperationListResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::OperationListResult
        ErrorResponse = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ErrorResponse
        AccessRights = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::AccessRights
        Operation = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Operation
      end

      class NotificationHubsManagementClass
        attr_reader :namespaces, :operations, :notification_hubs, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::NotificationHubs::Mgmt::V2017_04_01::NotificationHubsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @namespaces = @client_0.namespaces
          @operations = @client_0.operations
          @notification_hubs = @client_0.notification_hubs

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/NotificationHubs/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def resource_list_keys
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ResourceListKeys
          end
          def policykey_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::PolicykeyResource
          end
          def sku
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Sku
          end
          def apns_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ApnsCredential
          end
          def wns_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::WnsCredential
          end
          def check_availability_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckAvailabilityParameters
          end
          def gcm_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::GcmCredential
          end
          def notification_hub_list_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubListResult
          end
          def shared_access_authorization_rule_list_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleListResult
          end
          def shared_access_authorization_rule_create_or_update_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
          end
          def sub_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SubResource
          end
          def mpns_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::MpnsCredential
          end
          def shared_access_authorization_rule_properties
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleProperties
          end
          def namespace_list_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceListResult
          end
          def baidu_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::BaiduCredential
          end
          def adm_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::AdmCredential
          end
          def check_availability_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckAvailabilityResult
          end
          def resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Resource
          end
          def namespace_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceResource
          end
          def namespace_create_or_update_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceCreateOrUpdateParameters
          end
          def notification_hub_create_or_update_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubCreateOrUpdateParameters
          end
          def namespace_patch_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespacePatchParameters
          end
          def notification_hub_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubResource
          end
          def notification_hub_patch_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubPatchParameters
          end
          def shared_access_authorization_rule_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleResource
          end
          def debug_send_response
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::DebugSendResponse
          end
          def pns_credentials_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::PnsCredentialsResource
          end
          def namespace_type
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceType
          end
          def sku_name
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SkuName
          end
          def operation_display
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def error_response
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def access_rights
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::AccessRights
          end
          def operation
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Operation
          end
        end
      end
    end
  end
end
