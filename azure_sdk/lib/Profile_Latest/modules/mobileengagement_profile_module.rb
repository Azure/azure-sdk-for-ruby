# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_mobile_engagement'


module Azure::Profiles::Management::Profile_Latest
  module MobileEngagement
    AppCollections = Azure::ARM::MobileEngagement::Api_2014_12_01::AppCollections
    Apps = Azure::ARM::MobileEngagement::Api_2014_12_01::Apps
    SupportedPlatforms = Azure::ARM::MobileEngagement::Api_2014_12_01::SupportedPlatforms
    Campaigns = Azure::ARM::MobileEngagement::Api_2014_12_01::Campaigns
    Devices = Azure::ARM::MobileEngagement::Api_2014_12_01::Devices
    ExportTasks = Azure::ARM::MobileEngagement::Api_2014_12_01::ExportTasks
    ImportTasks = Azure::ARM::MobileEngagement::Api_2014_12_01::ImportTasks

    module Models
      CampaignState = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignState
      ApiErrorError = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ApiErrorError
      ApiError = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ApiError
      ExportTaskParameter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportTaskParameter
      AppListResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppListResult
      DeviceTagsParameters = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceTagsParameters
      AppCollectionListResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppCollectionListResult
      DeviceTagsResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceTagsResult
      SupportedPlatformsListResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::SupportedPlatformsListResult
      ExportOptions = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportOptions
      CampaignTestSavedParameters = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignTestSavedParameters
      DateRangeExportTaskParameter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DateRangeExportTaskParameter
      Filter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::Filter
      DeviceMeta = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceMeta
      NotificationOptions = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::NotificationOptions
      CampaignsListResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignsListResult
      PollQuestionLocalization = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollQuestionLocalization
      CampaignStatisticsResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignStatisticsResult
      CampaignLocalization = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignLocalization
      PollQuestionChoiceLocalization = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollQuestionChoiceLocalization
      FeedbackByDateRangeParameter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::FeedbackByDateRangeParameter
      ExportTaskListResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportTaskListResult
      CampaignPushParameters = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignPushParameters
      CampaignPushResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignPushResult
      ImportTask = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ImportTask
      AppCollectionNameAvailability = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppCollectionNameAvailability
      DeviceQueryResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceQueryResult
      Criterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::Criterion
      DevicesQueryResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DevicesQueryResult
      FeedbackByCampaignParameter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::FeedbackByCampaignParameter
      DeviceInfo = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceInfo
      ImportTaskListResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ImportTaskListResult
      DeviceLocation = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceLocation
      ExportTaskResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportTaskResult
      Device = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::Device
      CampaignAudience = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignAudience
      App = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::App
      AppCollection = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppCollection
      PollQuestionChoice = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollQuestionChoice
      PollQuestion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollQuestion
      Campaign = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::Campaign
      CampaignTestNewParameters = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignTestNewParameters
      CampaignStateResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignStateResult
      CarrierNameCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CarrierNameCriterion
      CarrierCountryCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CarrierCountryCriterion
      FirmwareVersionCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::FirmwareVersionCriterion
      DeviceManufacturerCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceManufacturerCriterion
      DeviceModelCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceModelCriterion
      ApplicationVersionCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ApplicationVersionCriterion
      NetworkTypeCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::NetworkTypeCriterion
      LanguageCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::LanguageCriterion
      ScreenSizeCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ScreenSizeCriterion
      LocationCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::LocationCriterion
      GeoFencingCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::GeoFencingCriterion
      AnnouncementFeedbackCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AnnouncementFeedbackCriterion
      PollFeedbackCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollFeedbackCriterion
      PollAnswerFeedbackCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollAnswerFeedbackCriterion
      DatapushFeedbackCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DatapushFeedbackCriterion
      SegmentCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::SegmentCriterion
      StringTagCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::StringTagCriterion
      DateTagCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DateTagCriterion
      IntegerTagCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::IntegerTagCriterion
      BooleanTagCriterion = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::BooleanTagCriterion
      EngageSubsetFilter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageSubsetFilter
      EngageOldUsersFilter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageOldUsersFilter
      EngageNewUsersFilter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageNewUsersFilter
      EngageActiveUsersFilter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageActiveUsersFilter
      EngageIdleUsersFilter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageIdleUsersFilter
      NativePushEnabledFilter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::NativePushEnabledFilter
      PushQuotaFilter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PushQuotaFilter
      AppInfoFilter = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppInfoFilter
      CampaignListResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignListResult
      CampaignResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignResult
      ImportTaskResult = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ImportTaskResult
      ProvisioningStates = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ProvisioningStates
      PushModes = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PushModes
      CampaignTypes = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignTypes
      DeliveryTimes = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeliveryTimes
      NotificationTypes = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::NotificationTypes
      CampaignStates = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignStates
      CampaignFeedbacks = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignFeedbacks
      AudienceOperators = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AudienceOperators
      CampaignType = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignType
      ExportState = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportState
      ExportType = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportType
      ExportFormat = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportFormat
      JobStates = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::JobStates
      CampaignKinds = Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignKinds
    end

    #
    # MobileEngagement
    #
    class MobileEngagementClass
      attr_accessor :app_collections, :apps, :supported_platforms, :campaigns, :devices, :export_tasks, :import_tasks, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::MobileEngagement::Api_2014_12_01::EngagementManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.app_collections = Azure::ARM::MobileEngagement::Api_2014_12_01::AppCollections.new(client)
        self.apps = Azure::ARM::MobileEngagement::Api_2014_12_01::Apps.new(client)
        self.supported_platforms = Azure::ARM::MobileEngagement::Api_2014_12_01::SupportedPlatforms.new(client)
        self.campaigns = Azure::ARM::MobileEngagement::Api_2014_12_01::Campaigns.new(client)
        self.devices = Azure::ARM::MobileEngagement::Api_2014_12_01::Devices.new(client)
        self.export_tasks = Azure::ARM::MobileEngagement::Api_2014_12_01::ExportTasks.new(client)
        self.import_tasks = Azure::ARM::MobileEngagement::Api_2014_12_01::ImportTasks.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2014-12-01'
            client = Azure::ARM::MobileEngagement::Api_2014_12_01::EngagementManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def campaign_state
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignState
        end
        def api_error_error
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ApiErrorError
        end
        def api_error
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ApiError
        end
        def export_task_parameter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportTaskParameter
        end
        def app_list_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppListResult
        end
        def device_tags_parameters
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceTagsParameters
        end
        def app_collection_list_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppCollectionListResult
        end
        def device_tags_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceTagsResult
        end
        def supported_platforms_list_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::SupportedPlatformsListResult
        end
        def export_options
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportOptions
        end
        def campaign_test_saved_parameters
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignTestSavedParameters
        end
        def date_range_export_task_parameter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DateRangeExportTaskParameter
        end
        def filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::Filter
        end
        def device_meta
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceMeta
        end
        def notification_options
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::NotificationOptions
        end
        def campaigns_list_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignsListResult
        end
        def poll_question_localization
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollQuestionLocalization
        end
        def campaign_statistics_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignStatisticsResult
        end
        def campaign_localization
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignLocalization
        end
        def poll_question_choice_localization
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollQuestionChoiceLocalization
        end
        def feedback_by_date_range_parameter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::FeedbackByDateRangeParameter
        end
        def export_task_list_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportTaskListResult
        end
        def campaign_push_parameters
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignPushParameters
        end
        def campaign_push_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignPushResult
        end
        def import_task
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ImportTask
        end
        def app_collection_name_availability
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppCollectionNameAvailability
        end
        def device_query_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceQueryResult
        end
        def criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::Criterion
        end
        def devices_query_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DevicesQueryResult
        end
        def feedback_by_campaign_parameter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::FeedbackByCampaignParameter
        end
        def device_info
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceInfo
        end
        def import_task_list_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ImportTaskListResult
        end
        def device_location
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceLocation
        end
        def export_task_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportTaskResult
        end
        def device
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::Device
        end
        def campaign_audience
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignAudience
        end
        def app
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::App
        end
        def app_collection
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppCollection
        end
        def poll_question_choice
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollQuestionChoice
        end
        def poll_question
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollQuestion
        end
        def campaign
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::Campaign
        end
        def campaign_test_new_parameters
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignTestNewParameters
        end
        def campaign_state_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignStateResult
        end
        def carrier_name_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CarrierNameCriterion
        end
        def carrier_country_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CarrierCountryCriterion
        end
        def firmware_version_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::FirmwareVersionCriterion
        end
        def device_manufacturer_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceManufacturerCriterion
        end
        def device_model_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeviceModelCriterion
        end
        def application_version_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ApplicationVersionCriterion
        end
        def network_type_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::NetworkTypeCriterion
        end
        def language_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::LanguageCriterion
        end
        def screen_size_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ScreenSizeCriterion
        end
        def location_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::LocationCriterion
        end
        def geo_fencing_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::GeoFencingCriterion
        end
        def announcement_feedback_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AnnouncementFeedbackCriterion
        end
        def poll_feedback_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollFeedbackCriterion
        end
        def poll_answer_feedback_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PollAnswerFeedbackCriterion
        end
        def datapush_feedback_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DatapushFeedbackCriterion
        end
        def segment_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::SegmentCriterion
        end
        def string_tag_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::StringTagCriterion
        end
        def date_tag_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DateTagCriterion
        end
        def integer_tag_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::IntegerTagCriterion
        end
        def boolean_tag_criterion
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::BooleanTagCriterion
        end
        def engage_subset_filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageSubsetFilter
        end
        def engage_old_users_filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageOldUsersFilter
        end
        def engage_new_users_filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageNewUsersFilter
        end
        def engage_active_users_filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageActiveUsersFilter
        end
        def engage_idle_users_filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::EngageIdleUsersFilter
        end
        def native_push_enabled_filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::NativePushEnabledFilter
        end
        def push_quota_filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PushQuotaFilter
        end
        def app_info_filter
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AppInfoFilter
        end
        def campaign_list_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignListResult
        end
        def campaign_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignResult
        end
        def import_task_result
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ImportTaskResult
        end
        def provisioning_states
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ProvisioningStates
        end
        def push_modes
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::PushModes
        end
        def campaign_types
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignTypes
        end
        def delivery_times
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::DeliveryTimes
        end
        def notification_types
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::NotificationTypes
        end
        def campaign_states
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignStates
        end
        def campaign_feedbacks
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignFeedbacks
        end
        def audience_operators
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::AudienceOperators
        end
        def campaign_type
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignType
        end
        def export_state
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportState
        end
        def export_type
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportType
        end
        def export_format
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::ExportFormat
        end
        def job_states
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::JobStates
        end
        def campaign_kinds
          Azure::ARM::MobileEngagement::Api_2014_12_01::Models::CampaignKinds
        end
      end
    end
  end
end
