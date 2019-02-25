# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_luisauthoring'

module Azure::LuisAuthoring::Profiles::Latest
  Features = Azure::CognitiveServices::LuisAuthoring::V2_0::Features
  Examples = Azure::CognitiveServices::LuisAuthoring::V2_0::Examples
  Model = Azure::CognitiveServices::LuisAuthoring::V2_0::Model
  Apps = Azure::CognitiveServices::LuisAuthoring::V2_0::Apps
  Versions = Azure::CognitiveServices::LuisAuthoring::V2_0::Versions
  Train = Azure::CognitiveServices::LuisAuthoring::V2_0::Train
  Permissions = Azure::CognitiveServices::LuisAuthoring::V2_0::Permissions
  Pattern = Azure::CognitiveServices::LuisAuthoring::V2_0::Pattern
  Settings = Azure::CognitiveServices::LuisAuthoring::V2_0::Settings
  AzureAccounts = Azure::CognitiveServices::LuisAuthoring::V2_0::AzureAccounts

  module Models
    ChildEntity = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ChildEntity
    ExplicitListItem = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExplicitListItem
    ApplicationCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationCreateObject
    ModelInfoResponse = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelInfoResponse
    PrebuiltDomainCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainCreateObject
    HierarchicalEntityModel = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalEntityModel
    HierarchicalEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalEntityExtractor
    JSONEntity = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::JSONEntity
    CompositeEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CompositeEntityExtractor
    PublishSettingUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PublishSettingUpdateObject
    ClosedListEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedListEntityExtractor
    PhraselistCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PhraselistCreateObject
    PrebuiltEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltEntityExtractor
    LabelTextObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LabelTextObject
    ApplicationUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationUpdateObject
    CompositeChildModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CompositeChildModelCreateObject
    PatternUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternUpdateObject
    CustomPrebuiltModel = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CustomPrebuiltModel
    WordListObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::WordListObject
    HierarchicalChildModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalChildModelCreateObject
    JSONModelFeature = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::JSONModelFeature
    EntityExtractor = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityExtractor
    PatternCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternCreateObject
    HierarchicalChildModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalChildModelUpdateObject
    JSONUtterance = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::JSONUtterance
    AzureAccountInfoObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AzureAccountInfoObject
    ClosedListModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedListModelUpdateObject
    FeaturesResponseObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::FeaturesResponseObject
    VersionInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::VersionInfo
    FeatureInfoObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::FeatureInfoObject
    PhraselistUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PhraselistUpdateObject
    LabelExampleResponse = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LabelExampleResponse
    HierarchicalModel = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalModel
    OperationStatus = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatus
    PatternAny = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternAny
    BatchLabelExample = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::BatchLabelExample
    PrebuiltEntity = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltEntity
    ApplicationInfoResponse = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationInfoResponse
    LuisApp = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LuisApp
    AppVersionSettingObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AppVersionSettingObject
    IntentPrediction = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::IntentPrediction
    EndpointInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EndpointInfo
    LabeledUtterance = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LabeledUtterance
    AvailableCulture = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AvailableCulture
    EntitiesSuggestionExample = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntitiesSuggestionExample
    ApplicationSettings = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationSettings
    ModelInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelInfo
    PublishSettings = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PublishSettings
    EntityLabelObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityLabelObject
    AvailablePrebuiltEntityModel = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AvailablePrebuiltEntityModel
    PrebuiltDomainModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainModelCreateObject
    EnqueueTrainingResponse = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EnqueueTrainingResponse
    ApplicationSettingUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationSettingUpdateObject
    ModelTrainingDetails = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelTrainingDetails
    SubClosedList = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::SubClosedList
    ModelTrainingInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelTrainingInfo
    ClosedList = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedList
    UserAccessList = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::UserAccessList
    ModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelCreateObject
    UserCollaborator = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::UserCollaborator
    ModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelUpdateObject
    CollaboratorsArray = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CollaboratorsArray
    TaskUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::TaskUpdateObject
    ErrorResponse = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ErrorResponse
    ApplicationPublishObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationPublishObject
    OperationError = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationError
    PatternRule = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternRule
    PrebuiltDomainItem = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainItem
    EntityPrediction = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityPrediction
    PrebuiltDomain = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomain
    PersonalAssistantsResponse = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PersonalAssistantsResponse
    EntityRoleCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityRoleCreateObject
    PrebuiltDomainCreateBaseObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainCreateBaseObject
    RegexModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::RegexModelCreateObject
    ExampleLabelObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExampleLabelObject
    PatternAnyModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternAnyModelCreateObject
    ClosedListModelPatchObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedListModelPatchObject
    ExplicitListItemCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExplicitListItemCreateObject
    ClosedListModelCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedListModelCreateObject
    RegexModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::RegexModelUpdateObject
    RegexEntity = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::RegexEntity
    PatternAnyModelUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternAnyModelUpdateObject
    IntentsSuggestionExample = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::IntentsSuggestionExample
    EntityRoleUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityRoleUpdateObject
    CompositeEntityModel = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CompositeEntityModel
    ExplicitListItemUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExplicitListItemUpdateObject
    WordListBaseUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::WordListBaseUpdateObject
    PatternRuleCreateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternRuleCreateObject
    EntityLabel = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityLabel
    PatternRuleUpdateObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternRuleUpdateObject
    JSONRegexFeature = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::JSONRegexFeature
    RegexEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::RegexEntityExtractor
    EntityRole = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityRole
    PatternAnyEntityExtractor = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternAnyEntityExtractor
    PrebuiltDomainObject = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainObject
    PatternRuleInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternRuleInfo
    SubClosedListResponse = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::SubClosedListResponse
    EntityModelInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityModelInfo
    HierarchicalChildEntity = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalChildEntity
    IntentClassifier = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::IntentClassifier
    PhraseListFeatureInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PhraseListFeatureInfo
    PatternFeatureInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternFeatureInfo
    ProductionOrStagingEndpointInfo = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ProductionOrStagingEndpointInfo
    TrainingStatus = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::TrainingStatus
    OperationStatusType = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatusType
  end

  #
  # LuisAuthoringDataClass
  #
  class LuisAuthoringDataClass
    attr_reader :features, :examples, :model, :apps, :versions, :train, :permissions, :pattern, :settings, :azure_accounts, :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::CognitiveServices::LuisAuthoring::V2_0::LuisAuthoringClient.new(configurable.credentials, base_url, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @features = @client_0.features
      @examples = @client_0.examples
      @model = @client_0.model
      @apps = @client_0.apps
      @versions = @client_0.versions
      @train = @client_0.train
      @permissions = @client_0.permissions
      @pattern = @client_0.pattern
      @settings = @client_0.settings
      @azure_accounts = @client_0.azure_accounts

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/LuisAuthoring'
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
    def child_entity
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ChildEntity
    end
    def explicit_list_item
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExplicitListItem
    end
    def application_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationCreateObject
    end
    def model_info_response
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelInfoResponse
    end
    def prebuilt_domain_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainCreateObject
    end
    def hierarchical_entity_model
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalEntityModel
    end
    def hierarchical_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalEntityExtractor
    end
    def jsonentity
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::JSONEntity
    end
    def composite_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CompositeEntityExtractor
    end
    def publish_setting_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PublishSettingUpdateObject
    end
    def closed_list_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedListEntityExtractor
    end
    def phraselist_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PhraselistCreateObject
    end
    def prebuilt_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltEntityExtractor
    end
    def label_text_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LabelTextObject
    end
    def application_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationUpdateObject
    end
    def composite_child_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CompositeChildModelCreateObject
    end
    def pattern_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternUpdateObject
    end
    def custom_prebuilt_model
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CustomPrebuiltModel
    end
    def word_list_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::WordListObject
    end
    def hierarchical_child_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalChildModelCreateObject
    end
    def jsonmodel_feature
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::JSONModelFeature
    end
    def entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityExtractor
    end
    def pattern_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternCreateObject
    end
    def hierarchical_child_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalChildModelUpdateObject
    end
    def jsonutterance
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::JSONUtterance
    end
    def azure_account_info_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AzureAccountInfoObject
    end
    def closed_list_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedListModelUpdateObject
    end
    def features_response_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::FeaturesResponseObject
    end
    def version_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::VersionInfo
    end
    def feature_info_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::FeatureInfoObject
    end
    def phraselist_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PhraselistUpdateObject
    end
    def label_example_response
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LabelExampleResponse
    end
    def hierarchical_model
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalModel
    end
    def operation_status
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatus
    end
    def pattern_any
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternAny
    end
    def batch_label_example
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::BatchLabelExample
    end
    def prebuilt_entity
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltEntity
    end
    def application_info_response
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationInfoResponse
    end
    def luis_app
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LuisApp
    end
    def app_version_setting_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AppVersionSettingObject
    end
    def intent_prediction
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::IntentPrediction
    end
    def endpoint_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EndpointInfo
    end
    def labeled_utterance
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::LabeledUtterance
    end
    def available_culture
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AvailableCulture
    end
    def entities_suggestion_example
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntitiesSuggestionExample
    end
    def application_settings
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationSettings
    end
    def model_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelInfo
    end
    def publish_settings
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PublishSettings
    end
    def entity_label_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityLabelObject
    end
    def available_prebuilt_entity_model
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AvailablePrebuiltEntityModel
    end
    def prebuilt_domain_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainModelCreateObject
    end
    def enqueue_training_response
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EnqueueTrainingResponse
    end
    def application_setting_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationSettingUpdateObject
    end
    def model_training_details
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelTrainingDetails
    end
    def sub_closed_list
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::SubClosedList
    end
    def model_training_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelTrainingInfo
    end
    def closed_list
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedList
    end
    def user_access_list
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::UserAccessList
    end
    def model_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelCreateObject
    end
    def user_collaborator
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::UserCollaborator
    end
    def model_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ModelUpdateObject
    end
    def collaborators_array
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CollaboratorsArray
    end
    def task_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::TaskUpdateObject
    end
    def error_response
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ErrorResponse
    end
    def application_publish_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ApplicationPublishObject
    end
    def operation_error
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationError
    end
    def pattern_rule
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternRule
    end
    def prebuilt_domain_item
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainItem
    end
    def entity_prediction
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityPrediction
    end
    def prebuilt_domain
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomain
    end
    def personal_assistants_response
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PersonalAssistantsResponse
    end
    def entity_role_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityRoleCreateObject
    end
    def prebuilt_domain_create_base_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainCreateBaseObject
    end
    def regex_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::RegexModelCreateObject
    end
    def example_label_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExampleLabelObject
    end
    def pattern_any_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternAnyModelCreateObject
    end
    def closed_list_model_patch_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedListModelPatchObject
    end
    def explicit_list_item_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExplicitListItemCreateObject
    end
    def closed_list_model_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ClosedListModelCreateObject
    end
    def regex_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::RegexModelUpdateObject
    end
    def regex_entity
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::RegexEntity
    end
    def pattern_any_model_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternAnyModelUpdateObject
    end
    def intents_suggestion_example
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::IntentsSuggestionExample
    end
    def entity_role_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityRoleUpdateObject
    end
    def composite_entity_model
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CompositeEntityModel
    end
    def explicit_list_item_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ExplicitListItemUpdateObject
    end
    def word_list_base_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::WordListBaseUpdateObject
    end
    def pattern_rule_create_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternRuleCreateObject
    end
    def entity_label
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityLabel
    end
    def pattern_rule_update_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternRuleUpdateObject
    end
    def jsonregex_feature
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::JSONRegexFeature
    end
    def regex_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::RegexEntityExtractor
    end
    def entity_role
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityRole
    end
    def pattern_any_entity_extractor
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternAnyEntityExtractor
    end
    def prebuilt_domain_object
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PrebuiltDomainObject
    end
    def pattern_rule_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternRuleInfo
    end
    def sub_closed_list_response
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::SubClosedListResponse
    end
    def entity_model_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::EntityModelInfo
    end
    def hierarchical_child_entity
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::HierarchicalChildEntity
    end
    def intent_classifier
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::IntentClassifier
    end
    def phrase_list_feature_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PhraseListFeatureInfo
    end
    def pattern_feature_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::PatternFeatureInfo
    end
    def production_or_staging_endpoint_info
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::ProductionOrStagingEndpointInfo
    end
    def training_status
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::TrainingStatus
    end
    def operation_status_type
      Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatusType
    end
  end
end
