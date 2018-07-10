# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mobile_engagement'

module Azure::Profiles::Latest
  module MobileEngagement
    module Mgmt
      AppCollections = Azure::MobileEngagement::Mgmt::V2014_12_01::AppCollections
      Apps = Azure::MobileEngagement::Mgmt::V2014_12_01::Apps
      SupportedPlatforms = Azure::MobileEngagement::Mgmt::V2014_12_01::SupportedPlatforms
      Campaigns = Azure::MobileEngagement::Mgmt::V2014_12_01::Campaigns
      Devices = Azure::MobileEngagement::Mgmt::V2014_12_01::Devices
      ExportTasks = Azure::MobileEngagement::Mgmt::V2014_12_01::ExportTasks
      ImportTasks = Azure::MobileEngagement::Mgmt::V2014_12_01::ImportTasks

      module Models
        ProvisioningStates = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ProvisioningStates
        Filter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Filter
        ExportFormat = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportFormat
        Resource = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Resource
        CampaignState = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignState
        ApiErrorError = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ApiErrorError
        ExportTaskParameter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportTaskParameter
        AppListResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppListResult
        DeviceTagsParameters = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceTagsParameters
        AppCollectionListResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppCollectionListResult
        DeviceTagsResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceTagsResult
        ApiError = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ApiError
        SupportedPlatformsListResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::SupportedPlatformsListResult
        ExportOptions = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportOptions
        CampaignTestSavedParameters = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignTestSavedParameters
        DateRangeExportTaskParameter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DateRangeExportTaskParameter
        DeviceMeta = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceMeta
        CampaignsListResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignsListResult
        PollQuestionLocalization = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollQuestionLocalization
        NotificationOptions = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::NotificationOptions
        CampaignLocalization = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignLocalization
        PollQuestionChoiceLocalization = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollQuestionChoiceLocalization
        FeedbackByDateRangeParameter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::FeedbackByDateRangeParameter
        ExportTaskListResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportTaskListResult
        CampaignPushParameters = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignPushParameters
        CampaignPushResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignPushResult
        ImportTask = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ImportTask
        AppCollectionNameAvailability = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppCollectionNameAvailability
        DeviceQueryResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceQueryResult
        Criterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Criterion
        DevicesQueryResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DevicesQueryResult
        FeedbackByCampaignParameter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::FeedbackByCampaignParameter
        DeviceInfo = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceInfo
        ImportTaskListResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ImportTaskListResult
        DeviceLocation = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceLocation
        ExportTaskResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportTaskResult
        Device = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Device
        CampaignAudience = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignAudience
        App = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::App
        AppCollection = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppCollection
        PollQuestionChoice = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollQuestionChoice
        PollQuestion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollQuestion
        Campaign = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Campaign
        CampaignTestNewParameters = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignTestNewParameters
        CampaignStateResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignStateResult
        CarrierNameCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CarrierNameCriterion
        CarrierCountryCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CarrierCountryCriterion
        FirmwareVersionCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::FirmwareVersionCriterion
        DeviceManufacturerCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceManufacturerCriterion
        DeviceModelCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceModelCriterion
        ApplicationVersionCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ApplicationVersionCriterion
        NetworkTypeCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::NetworkTypeCriterion
        LanguageCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::LanguageCriterion
        ScreenSizeCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ScreenSizeCriterion
        LocationCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::LocationCriterion
        GeoFencingCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::GeoFencingCriterion
        AnnouncementFeedbackCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AnnouncementFeedbackCriterion
        PollFeedbackCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollFeedbackCriterion
        PollAnswerFeedbackCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollAnswerFeedbackCriterion
        DatapushFeedbackCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DatapushFeedbackCriterion
        SegmentCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::SegmentCriterion
        StringTagCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::StringTagCriterion
        DateTagCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DateTagCriterion
        IntegerTagCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::IntegerTagCriterion
        BooleanTagCriterion = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::BooleanTagCriterion
        EngageSubsetFilter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageSubsetFilter
        EngageOldUsersFilter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageOldUsersFilter
        EngageNewUsersFilter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageNewUsersFilter
        EngageActiveUsersFilter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageActiveUsersFilter
        EngageIdleUsersFilter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageIdleUsersFilter
        NativePushEnabledFilter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::NativePushEnabledFilter
        PushQuotaFilter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PushQuotaFilter
        AppInfoFilter = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppInfoFilter
        CampaignListResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignListResult
        CampaignResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignResult
        ImportTaskResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ImportTaskResult
        PushModes = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PushModes
        CampaignTypes = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignTypes
        DeliveryTimes = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeliveryTimes
        NotificationTypes = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::NotificationTypes
        CampaignStates = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignStates
        CampaignFeedbacks = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignFeedbacks
        AudienceOperators = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AudienceOperators
        CampaignType = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignType
        ExportState = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportState
        ExportType = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportType
        JobStates = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::JobStates
        CampaignKinds = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignKinds
        CampaignStatisticsResult = Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignStatisticsResult
      end

      class MobileEngagementManagementClass
        attr_reader :app_collections, :apps, :supported_platforms, :campaigns, :devices, :export_tasks, :import_tasks, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MobileEngagement::Mgmt::V2014_12_01::EngagementManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @app_collections = @client_0.app_collections
          @apps = @client_0.apps
          @supported_platforms = @client_0.supported_platforms
          @campaigns = @client_0.campaigns
          @devices = @client_0.devices
          @export_tasks = @client_0.export_tasks
          @import_tasks = @client_0.import_tasks

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/MobileEngagement/Mgmt"
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
          def provisioning_states
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ProvisioningStates
          end
          def filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Filter
          end
          def export_format
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportFormat
          end
          def resource
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Resource
          end
          def campaign_state
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignState
          end
          def api_error_error
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ApiErrorError
          end
          def export_task_parameter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportTaskParameter
          end
          def app_list_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppListResult
          end
          def device_tags_parameters
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceTagsParameters
          end
          def app_collection_list_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppCollectionListResult
          end
          def device_tags_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceTagsResult
          end
          def api_error
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ApiError
          end
          def supported_platforms_list_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::SupportedPlatformsListResult
          end
          def export_options
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportOptions
          end
          def campaign_test_saved_parameters
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignTestSavedParameters
          end
          def date_range_export_task_parameter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DateRangeExportTaskParameter
          end
          def device_meta
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceMeta
          end
          def campaigns_list_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignsListResult
          end
          def poll_question_localization
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollQuestionLocalization
          end
          def notification_options
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::NotificationOptions
          end
          def campaign_localization
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignLocalization
          end
          def poll_question_choice_localization
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollQuestionChoiceLocalization
          end
          def feedback_by_date_range_parameter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::FeedbackByDateRangeParameter
          end
          def export_task_list_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportTaskListResult
          end
          def campaign_push_parameters
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignPushParameters
          end
          def campaign_push_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignPushResult
          end
          def import_task
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ImportTask
          end
          def app_collection_name_availability
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppCollectionNameAvailability
          end
          def device_query_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceQueryResult
          end
          def criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Criterion
          end
          def devices_query_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DevicesQueryResult
          end
          def feedback_by_campaign_parameter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::FeedbackByCampaignParameter
          end
          def device_info
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceInfo
          end
          def import_task_list_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ImportTaskListResult
          end
          def device_location
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceLocation
          end
          def export_task_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportTaskResult
          end
          def device
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Device
          end
          def campaign_audience
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignAudience
          end
          def app
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::App
          end
          def app_collection
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppCollection
          end
          def poll_question_choice
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollQuestionChoice
          end
          def poll_question
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollQuestion
          end
          def campaign
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::Campaign
          end
          def campaign_test_new_parameters
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignTestNewParameters
          end
          def campaign_state_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignStateResult
          end
          def carrier_name_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CarrierNameCriterion
          end
          def carrier_country_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CarrierCountryCriterion
          end
          def firmware_version_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::FirmwareVersionCriterion
          end
          def device_manufacturer_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceManufacturerCriterion
          end
          def device_model_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeviceModelCriterion
          end
          def application_version_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ApplicationVersionCriterion
          end
          def network_type_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::NetworkTypeCriterion
          end
          def language_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::LanguageCriterion
          end
          def screen_size_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ScreenSizeCriterion
          end
          def location_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::LocationCriterion
          end
          def geo_fencing_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::GeoFencingCriterion
          end
          def announcement_feedback_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AnnouncementFeedbackCriterion
          end
          def poll_feedback_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollFeedbackCriterion
          end
          def poll_answer_feedback_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PollAnswerFeedbackCriterion
          end
          def datapush_feedback_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DatapushFeedbackCriterion
          end
          def segment_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::SegmentCriterion
          end
          def string_tag_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::StringTagCriterion
          end
          def date_tag_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DateTagCriterion
          end
          def integer_tag_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::IntegerTagCriterion
          end
          def boolean_tag_criterion
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::BooleanTagCriterion
          end
          def engage_subset_filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageSubsetFilter
          end
          def engage_old_users_filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageOldUsersFilter
          end
          def engage_new_users_filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageNewUsersFilter
          end
          def engage_active_users_filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageActiveUsersFilter
          end
          def engage_idle_users_filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::EngageIdleUsersFilter
          end
          def native_push_enabled_filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::NativePushEnabledFilter
          end
          def push_quota_filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PushQuotaFilter
          end
          def app_info_filter
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AppInfoFilter
          end
          def campaign_list_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignListResult
          end
          def campaign_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignResult
          end
          def import_task_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ImportTaskResult
          end
          def push_modes
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::PushModes
          end
          def campaign_types
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignTypes
          end
          def delivery_times
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::DeliveryTimes
          end
          def notification_types
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::NotificationTypes
          end
          def campaign_states
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignStates
          end
          def campaign_feedbacks
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignFeedbacks
          end
          def audience_operators
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::AudienceOperators
          end
          def campaign_type
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignType
          end
          def export_state
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportState
          end
          def export_type
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::ExportType
          end
          def job_states
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::JobStates
          end
          def campaign_kinds
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignKinds
          end
          def campaign_statistics_result
            Azure::MobileEngagement::Mgmt::V2014_12_01::Models::CampaignStatisticsResult
          end
        end
      end
    end
  end
end
