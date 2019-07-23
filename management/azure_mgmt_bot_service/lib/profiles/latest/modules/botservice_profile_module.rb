# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_bot_service'

module Azure::BotService::Profiles::Latest
  module Mgmt
    Bots = Azure::BotService::Mgmt::V2018_07_12_preview::Bots
    Channels = Azure::BotService::Mgmt::V2018_07_12_preview::Channels
    Operations = Azure::BotService::Mgmt::V2018_07_12_preview::Operations
    BotConnection = Azure::BotService::Mgmt::V2018_07_12_preview::BotConnection
    EnterpriseChannels = Azure::BotService::Mgmt::V2018_07_12_preview::EnterpriseChannels

    module Models
      SmsChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::SmsChannelProperties
      TelegramChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::TelegramChannelProperties
      EnterpriseChannelNode = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelNode
      BotProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::BotProperties
      Sku = Azure::BotService::Mgmt::V2018_07_12_preview::Models::Sku
      BotResponseList = Azure::BotService::Mgmt::V2018_07_12_preview::Models::BotResponseList
      OperationDisplayInfo = Azure::BotService::Mgmt::V2018_07_12_preview::Models::OperationDisplayInfo
      Resource = Azure::BotService::Mgmt::V2018_07_12_preview::Models::Resource
      FacebookChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::FacebookChannelProperties
      EnterpriseChannelCheckNameAvailabilityResponse = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelCheckNameAvailabilityResponse
      ErrorBody = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ErrorBody
      EnterpriseChannelCheckNameAvailabilityRequest = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelCheckNameAvailabilityRequest
      Channel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::Channel
      CheckNameAvailabilityResponseBody = Azure::BotService::Mgmt::V2018_07_12_preview::Models::CheckNameAvailabilityResponseBody
      Error = Azure::BotService::Mgmt::V2018_07_12_preview::Models::Error
      CheckNameAvailabilityRequestBody = Azure::BotService::Mgmt::V2018_07_12_preview::Models::CheckNameAvailabilityRequestBody
      SlackChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::SlackChannelProperties
      OperationEntityListResult = Azure::BotService::Mgmt::V2018_07_12_preview::Models::OperationEntityListResult
      EnterpriseChannelResponseList = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelResponseList
      WebChatChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::WebChatChannelProperties
      ChannelResponseList = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ChannelResponseList
      DirectLineSite = Azure::BotService::Mgmt::V2018_07_12_preview::Models::DirectLineSite
      ConnectionItemName = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionItemName
      FacebookPage = Azure::BotService::Mgmt::V2018_07_12_preview::Models::FacebookPage
      ConnectionSettingParameter = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionSettingParameter
      MsTeamsChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::MsTeamsChannelProperties
      ConnectionSettingProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionSettingProperties
      KikChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::KikChannelProperties
      EnterpriseChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelProperties
      OperationEntity = Azure::BotService::Mgmt::V2018_07_12_preview::Models::OperationEntity
      ConnectionSettingResponseList = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionSettingResponseList
      EmailChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EmailChannelProperties
      ServiceProviderParameter = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ServiceProviderParameter
      WebChatSite = Azure::BotService::Mgmt::V2018_07_12_preview::Models::WebChatSite
      ServiceProviderProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ServiceProviderProperties
      SkypeChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::SkypeChannelProperties
      ServiceProvider = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ServiceProvider
      DirectLineChannelProperties = Azure::BotService::Mgmt::V2018_07_12_preview::Models::DirectLineChannelProperties
      ServiceProviderResponseList = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ServiceProviderResponseList
      Bot = Azure::BotService::Mgmt::V2018_07_12_preview::Models::Bot
      BotChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::BotChannel
      FacebookChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::FacebookChannel
      EmailChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EmailChannel
      MsTeamsChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::MsTeamsChannel
      SkypeChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::SkypeChannel
      KikChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::KikChannel
      WebChatChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::WebChatChannel
      DirectLineChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::DirectLineChannel
      TelegramChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::TelegramChannel
      SmsChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::SmsChannel
      SlackChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::SlackChannel
      ConnectionSetting = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionSetting
      EnterpriseChannel = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannel
      SkuName = Azure::BotService::Mgmt::V2018_07_12_preview::Models::SkuName
      SkuTier = Azure::BotService::Mgmt::V2018_07_12_preview::Models::SkuTier
      Kind = Azure::BotService::Mgmt::V2018_07_12_preview::Models::Kind
      EnterpriseChannelState = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelState
      EnterpriseChannelNodeState = Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelNodeState
      ChannelName = Azure::BotService::Mgmt::V2018_07_12_preview::Models::ChannelName
    end

    #
    # BotServiceManagementClass
    #
    class BotServiceManagementClass
      attr_reader :bots, :channels, :operations, :bot_connection, :enterprise_channels, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::BotService::Mgmt::V2018_07_12_preview::AzureBotService.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @bots = @client_0.bots
        @channels = @client_0.channels
        @operations = @client_0.operations
        @bot_connection = @client_0.bot_connection
        @enterprise_channels = @client_0.enterprise_channels

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/BotService/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def sms_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::SmsChannelProperties
      end
      def telegram_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::TelegramChannelProperties
      end
      def enterprise_channel_node
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelNode
      end
      def bot_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::BotProperties
      end
      def sku
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::Sku
      end
      def bot_response_list
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::BotResponseList
      end
      def operation_display_info
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::OperationDisplayInfo
      end
      def resource
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::Resource
      end
      def facebook_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::FacebookChannelProperties
      end
      def enterprise_channel_check_name_availability_response
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelCheckNameAvailabilityResponse
      end
      def error_body
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ErrorBody
      end
      def enterprise_channel_check_name_availability_request
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelCheckNameAvailabilityRequest
      end
      def channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::Channel
      end
      def check_name_availability_response_body
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::CheckNameAvailabilityResponseBody
      end
      def error
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::Error
      end
      def check_name_availability_request_body
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::CheckNameAvailabilityRequestBody
      end
      def slack_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::SlackChannelProperties
      end
      def operation_entity_list_result
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::OperationEntityListResult
      end
      def enterprise_channel_response_list
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelResponseList
      end
      def web_chat_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::WebChatChannelProperties
      end
      def channel_response_list
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ChannelResponseList
      end
      def direct_line_site
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::DirectLineSite
      end
      def connection_item_name
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionItemName
      end
      def facebook_page
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::FacebookPage
      end
      def connection_setting_parameter
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionSettingParameter
      end
      def ms_teams_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::MsTeamsChannelProperties
      end
      def connection_setting_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionSettingProperties
      end
      def kik_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::KikChannelProperties
      end
      def enterprise_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelProperties
      end
      def operation_entity
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::OperationEntity
      end
      def connection_setting_response_list
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionSettingResponseList
      end
      def email_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EmailChannelProperties
      end
      def service_provider_parameter
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ServiceProviderParameter
      end
      def web_chat_site
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::WebChatSite
      end
      def service_provider_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ServiceProviderProperties
      end
      def skype_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::SkypeChannelProperties
      end
      def service_provider
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ServiceProvider
      end
      def direct_line_channel_properties
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::DirectLineChannelProperties
      end
      def service_provider_response_list
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ServiceProviderResponseList
      end
      def bot
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::Bot
      end
      def bot_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::BotChannel
      end
      def facebook_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::FacebookChannel
      end
      def email_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EmailChannel
      end
      def ms_teams_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::MsTeamsChannel
      end
      def skype_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::SkypeChannel
      end
      def kik_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::KikChannel
      end
      def web_chat_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::WebChatChannel
      end
      def direct_line_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::DirectLineChannel
      end
      def telegram_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::TelegramChannel
      end
      def sms_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::SmsChannel
      end
      def slack_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::SlackChannel
      end
      def connection_setting
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ConnectionSetting
      end
      def enterprise_channel
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannel
      end
      def sku_name
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::SkuName
      end
      def sku_tier
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::SkuTier
      end
      def kind
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::Kind
      end
      def enterprise_channel_state
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelState
      end
      def enterprise_channel_node_state
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::EnterpriseChannelNodeState
      end
      def channel_name
        Azure::BotService::Mgmt::V2018_07_12_preview::Models::ChannelName
      end
    end
  end
end
