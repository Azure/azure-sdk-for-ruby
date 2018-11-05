# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_notification_hubs'

module Azure::Profiles::Latest
  module NotificationHubs
    module Mgmt
      Namespaces = Azure::NotificationHubs::Mgmt::V2017_04_01::Namespaces
      NotificationHubs = Azure::NotificationHubs::Mgmt::V2017_04_01::NotificationHubs
      Operations = Azure::NotificationHubs::Mgmt::V2017_04_01::Operations

      module Models
        Sku = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Sku
        AccessRights = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::AccessRights
        OperationDisplay = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::OperationDisplay
        OperationListResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::OperationListResult
        Resource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Resource
        ResourceListKeys = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ResourceListKeys
        PolicykeyResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::PolicykeyResource
        ApnsCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ApnsCredential
        WnsCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::WnsCredential
        CheckAvailabilityParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckAvailabilityParameters
        Operation = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Operation
        SharedAccessAuthorizationRuleCreateOrUpdateParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
        NotificationHubListResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubListResult
        SharedAccessAuthorizationRuleListResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleListResult
        SharedAccessAuthorizationRuleProperties = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleProperties
        MpnsCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::MpnsCredential
        NamespacePatchParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespacePatchParameters
        AdmCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::AdmCredential
        NamespaceListResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceListResult
        BaiduCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::BaiduCredential
        ErrorResponse = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ErrorResponse
        CheckAvailabilityResult = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckAvailabilityResult
        NamespaceCreateOrUpdateParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceCreateOrUpdateParameters
        NamespaceResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceResource
        SharedAccessAuthorizationRuleResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleResource
        GcmCredential = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::GcmCredential
        NotificationHubPatchParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubPatchParameters
        NotificationHubCreateOrUpdateParameters = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubCreateOrUpdateParameters
        DebugSendResponse = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::DebugSendResponse
        NotificationHubResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubResource
        NamespaceType = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceType
        PnsCredentialsResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::PnsCredentialsResource
        SkuName = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SkuName
        SubResource = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SubResource
      end

      class NotificationHubsManagementClass
        attr_reader :namespaces, :notification_hubs, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::NotificationHubs::Mgmt::V2017_04_01::NotificationHubsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @namespaces = @client_0.namespaces
          @notification_hubs = @client_0.notification_hubs
          @operations = @client_0.operations

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
          def sku
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Sku
          end
          def access_rights
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::AccessRights
          end
          def operation_display
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Resource
          end
          def resource_list_keys
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ResourceListKeys
          end
          def policykey_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::PolicykeyResource
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
          def operation
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::Operation
          end
          def shared_access_authorization_rule_create_or_update_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
          end
          def notification_hub_list_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubListResult
          end
          def shared_access_authorization_rule_list_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleListResult
          end
          def shared_access_authorization_rule_properties
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleProperties
          end
          def mpns_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::MpnsCredential
          end
          def namespace_patch_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespacePatchParameters
          end
          def adm_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::AdmCredential
          end
          def namespace_list_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceListResult
          end
          def baidu_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::BaiduCredential
          end
          def error_response
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def check_availability_result
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckAvailabilityResult
          end
          def namespace_create_or_update_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceCreateOrUpdateParameters
          end
          def namespace_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceResource
          end
          def shared_access_authorization_rule_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SharedAccessAuthorizationRuleResource
          end
          def gcm_credential
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::GcmCredential
          end
          def notification_hub_patch_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubPatchParameters
          end
          def notification_hub_create_or_update_parameters
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubCreateOrUpdateParameters
          end
          def debug_send_response
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::DebugSendResponse
          end
          def notification_hub_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NotificationHubResource
          end
          def namespace_type
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::NamespaceType
          end
          def pns_credentials_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::PnsCredentialsResource
          end
          def sku_name
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SkuName
          end
          def sub_resource
            Azure::NotificationHubs::Mgmt::V2017_04_01::Models::SubResource
          end
        end
      end
    end
  end
end
