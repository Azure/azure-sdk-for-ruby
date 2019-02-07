# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_security'

module Azure::Profiles::Latest
  module Security
    module Mgmt
      SecurityContacts = Azure::Security::Mgmt::V2017_08_01_preview::SecurityContacts
      WorkspaceSettings = Azure::Security::Mgmt::V2017_08_01_preview::WorkspaceSettings
      AutoProvisioningSettings = Azure::Security::Mgmt::V2017_08_01_preview::AutoProvisioningSettings
      Compliances = Azure::Security::Mgmt::V2017_08_01_preview::Compliances
      Pricings = Azure::Security::Mgmt::V2017_08_01_preview::Pricings

      module Models
        AlertNotifications = Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertNotifications
        AlertsToAdmins = Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertsToAdmins
        PricingTier = Azure::Security::Mgmt::V2017_08_01_preview::Models::PricingTier
        AutoProvision = Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvision
        Resource = Azure::Security::Mgmt::V2017_08_01_preview::Models::Resource
        AutoProvisioningSettingList = Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSettingList
        PricingList = Azure::Security::Mgmt::V2017_08_01_preview::Models::PricingList
        ComplianceSegment = Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceSegment
        SecurityContactList = Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContactList
        ComplianceList = Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceList
        WorkspaceSettingList = Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSettingList
        SecurityContact = Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContact
        Pricing = Azure::Security::Mgmt::V2017_08_01_preview::Models::Pricing
        WorkspaceSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSetting
        AutoProvisioningSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSetting
        Compliance = Azure::Security::Mgmt::V2017_08_01_preview::Models::Compliance
      end

      class SecurityManagementClass
        attr_reader :security_contacts, :workspace_settings, :auto_provisioning_settings, :compliances, :pricings, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Security::Mgmt::V2017_08_01_preview::SecurityManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @security_contacts = @client_0.security_contacts
          @workspace_settings = @client_0.workspace_settings
          @auto_provisioning_settings = @client_0.auto_provisioning_settings
          @compliances = @client_0.compliances
          @pricings = @client_0.pricings

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Security/Mgmt"
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
          def alert_notifications
            Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertNotifications
          end
          def alerts_to_admins
            Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertsToAdmins
          end
          def pricing_tier
            Azure::Security::Mgmt::V2017_08_01_preview::Models::PricingTier
          end
          def auto_provision
            Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvision
          end
          def resource
            Azure::Security::Mgmt::V2017_08_01_preview::Models::Resource
          end
          def auto_provisioning_setting_list
            Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSettingList
          end
          def pricing_list
            Azure::Security::Mgmt::V2017_08_01_preview::Models::PricingList
          end
          def compliance_segment
            Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceSegment
          end
          def security_contact_list
            Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContactList
          end
          def compliance_list
            Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceList
          end
          def workspace_setting_list
            Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSettingList
          end
          def security_contact
            Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContact
          end
          def pricing
            Azure::Security::Mgmt::V2017_08_01_preview::Models::Pricing
          end
          def workspace_setting
            Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSetting
          end
          def auto_provisioning_setting
            Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSetting
          end
          def compliance
            Azure::Security::Mgmt::V2017_08_01_preview::Models::Compliance
          end
        end
      end
    end
  end
end
