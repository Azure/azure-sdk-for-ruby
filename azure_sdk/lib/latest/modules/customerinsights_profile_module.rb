# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_customer_insights'

module Azure::Profiles::Latest
  module CustomerInsights
    module Mgmt
      Images = Azure::CustomerInsights::Mgmt::V2017_04_26::Images
      Links = Azure::CustomerInsights::Mgmt::V2017_04_26::Links
      Operations = Azure::CustomerInsights::Mgmt::V2017_04_26::Operations
      Hubs = Azure::CustomerInsights::Mgmt::V2017_04_26::Hubs
      Interactions = Azure::CustomerInsights::Mgmt::V2017_04_26::Interactions
      Relationships = Azure::CustomerInsights::Mgmt::V2017_04_26::Relationships
      RelationshipLinks = Azure::CustomerInsights::Mgmt::V2017_04_26::RelationshipLinks
      AuthorizationPolicies = Azure::CustomerInsights::Mgmt::V2017_04_26::AuthorizationPolicies
      Connectors = Azure::CustomerInsights::Mgmt::V2017_04_26::Connectors
      ConnectorMappings = Azure::CustomerInsights::Mgmt::V2017_04_26::ConnectorMappings
      Kpi = Azure::CustomerInsights::Mgmt::V2017_04_26::Kpi
      WidgetTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::WidgetTypes
      Profiles = Azure::CustomerInsights::Mgmt::V2017_04_26::Profiles
      Views = Azure::CustomerInsights::Mgmt::V2017_04_26::Views
      Roles = Azure::CustomerInsights::Mgmt::V2017_04_26::Roles
      Predictions = Azure::CustomerInsights::Mgmt::V2017_04_26::Predictions
      RoleAssignments = Azure::CustomerInsights::Mgmt::V2017_04_26::RoleAssignments

      module Models
        KpiListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiListResult
        HubBillingInfoFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::HubBillingInfoFormat
        Participant = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Participant
        StrongId = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::StrongId
        ProfileListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProfileListResult
        MetadataDefinitionBase = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::MetadataDefinitionBase
        DataSourcePrecedence = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::DataSourcePrecedence
        SuggestRelationshipLinksResponse = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::SuggestRelationshipLinksResponse
        AuthorizationPolicy = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AuthorizationPolicy
        PredictionGradesItem = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionGradesItem
        SalesforceTable = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::SalesforceTable
        InteractionListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::InteractionListResult
        AzureBlobConnectorProperties = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AzureBlobConnectorProperties
        PredictionMappings = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionMappings
        CrmConnectorProperties = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CrmConnectorProperties
        ConnectorMappingErrorManagement = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingErrorManagement
        RelationshipsLookup = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipsLookup
        ConnectorMappingAvailability = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingAvailability
        ConnectorMappingCompleteOperation = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingCompleteOperation
        KpiThresholds = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiThresholds
        ConnectorListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorListResult
        KpiParticipantProfilesMetadata = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiParticipantProfilesMetadata
        KpiExtract = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiExtract
        ConnectorMappingListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingListResult
        TypePropertiesMapping = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::TypePropertiesMapping
        AuthorizationPolicyListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AuthorizationPolicyListResult
        PredictionSystemGeneratedEntities = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionSystemGeneratedEntities
        RelationshipTypeFieldMapping = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipTypeFieldMapping
        PredictionListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionListResult
        LinkListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::LinkListResult
        HubListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::HubListResult
        RelationshipLinkFieldMapping = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipLinkFieldMapping
        PropertyDefinition = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PropertyDefinition
        RelationshipListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipListResult
        SalesforceConnectorProperties = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::SalesforceConnectorProperties
        PredictionTrainingResults = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionTrainingResults
        ConnectorMappingFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingFormat
        RelationshipLinkListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipLinkListResult
        ConnectorMappingProperties = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingProperties
        CanonicalProfileDefinition = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CanonicalProfileDefinition
        KpiAlias = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiAlias
        PredictionModelStatus = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionModelStatus
        ViewListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ViewListResult
        CanonicalProfileDefinitionPropertiesItem = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CanonicalProfileDefinitionPropertiesItem
        RelationshipTypeMapping = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipTypeMapping
        WidgetTypeListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::WidgetTypeListResult
        ProfileEnumValidValuesFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProfileEnumValidValuesFormat
        ProxyResource = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProxyResource
        CrmConnectorEntities = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CrmConnectorEntities
        AssignmentPrincipal = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AssignmentPrincipal
        KpiGroupByMetadata = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiGroupByMetadata
        ResourceSetDescription = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ResourceSetDescription
        ParticipantPropertyReference = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ParticipantPropertyReference
        PredictionDistributionDefinition = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionDistributionDefinition
        PredictionDistributionDefinitionDistributionsItem = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionDistributionDefinitionDistributionsItem
        SalesforceDiscoverSetting = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::SalesforceDiscoverSetting
        RoleListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleListResult
        KpiDefinition = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiDefinition
        GetImageUploadUrlInput = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::GetImageUploadUrlInput
        ConnectorMappingStructure = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingStructure
        ImageDefinition = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ImageDefinition
        RoleAssignmentListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleAssignmentListResult
        EntityTypeDefinition = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::EntityTypeDefinition
        Hub = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Hub
        ParticipantProfilePropertyReference = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ParticipantProfilePropertyReference
        ProfileResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProfileResourceFormat
        InteractionResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::InteractionResourceFormat
        KpiResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiResourceFormat
        EnrichingKpi = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::EnrichingKpi
        ConnectorResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorResourceFormat
        ConnectorMappingResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingResourceFormat
        AuthorizationPolicyResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AuthorizationPolicyResourceFormat
        Resource = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Resource
        RelationshipResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipResourceFormat
        RelationshipLinkResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipLinkResourceFormat
        LinkResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::LinkResourceFormat
        WidgetTypeResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::WidgetTypeResourceFormat
        RoleAssignmentResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleAssignmentResourceFormat
        ViewResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ViewResourceFormat
        PredictionResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionResourceFormat
        OperationDisplay = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::OperationDisplay
        RoleResourceFormat = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleResourceFormat
        Operation = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Operation
        EntityTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::EntityTypes
        OperationListResult = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::OperationListResult
        ProvisioningStates = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProvisioningStates
        PermissionTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PermissionTypes
        ConnectorTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorTypes
        DataSourceType = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::DataSourceType
        ErrorManagementTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ErrorManagementTypes
        FrequencyTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::FrequencyTypes
        CompletionOperationTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CompletionOperationTypes
        ConnectorStates = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorStates
        CalculationWindowTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CalculationWindowTypes
        KpiFunctions = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiFunctions
        EntityType = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::EntityType
        ConnectorMappingStates = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingStates
        InstanceOperationType = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::InstanceOperationType
        CardinalityTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CardinalityTypes
        RoleTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleTypes
        LinkTypes = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::LinkTypes
        PredictionModelLifeCycle = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionModelLifeCycle
        CanonicalPropertyValueType = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CanonicalPropertyValueType
        Status = Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Status
      end

      class CustomerInsightsManagementClass
        attr_reader :images, :links, :operations, :hubs, :interactions, :relationships, :relationship_links, :authorization_policies, :connectors, :connector_mappings, :kpi, :widget_types, :profiles, :views, :roles, :predictions, :role_assignments, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::CustomerInsights::Mgmt::V2017_04_26::CustomerInsightsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @images = @client_0.images
          @links = @client_0.links
          @operations = @client_0.operations
          @hubs = @client_0.hubs
          @interactions = @client_0.interactions
          @relationships = @client_0.relationships
          @relationship_links = @client_0.relationship_links
          @authorization_policies = @client_0.authorization_policies
          @connectors = @client_0.connectors
          @connector_mappings = @client_0.connector_mappings
          @kpi = @client_0.kpi
          @widget_types = @client_0.widget_types
          @profiles = @client_0.profiles
          @views = @client_0.views
          @roles = @client_0.roles
          @predictions = @client_0.predictions
          @role_assignments = @client_0.role_assignments

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/CustomerInsights/Mgmt"
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
          def kpi_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiListResult
          end
          def hub_billing_info_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::HubBillingInfoFormat
          end
          def participant
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Participant
          end
          def strong_id
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::StrongId
          end
          def profile_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProfileListResult
          end
          def metadata_definition_base
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::MetadataDefinitionBase
          end
          def data_source_precedence
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::DataSourcePrecedence
          end
          def suggest_relationship_links_response
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::SuggestRelationshipLinksResponse
          end
          def authorization_policy
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AuthorizationPolicy
          end
          def prediction_grades_item
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionGradesItem
          end
          def salesforce_table
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::SalesforceTable
          end
          def interaction_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::InteractionListResult
          end
          def azure_blob_connector_properties
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AzureBlobConnectorProperties
          end
          def prediction_mappings
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionMappings
          end
          def crm_connector_properties
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CrmConnectorProperties
          end
          def connector_mapping_error_management
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingErrorManagement
          end
          def relationships_lookup
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipsLookup
          end
          def connector_mapping_availability
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingAvailability
          end
          def connector_mapping_complete_operation
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingCompleteOperation
          end
          def kpi_thresholds
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiThresholds
          end
          def connector_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorListResult
          end
          def kpi_participant_profiles_metadata
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiParticipantProfilesMetadata
          end
          def kpi_extract
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiExtract
          end
          def connector_mapping_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingListResult
          end
          def type_properties_mapping
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::TypePropertiesMapping
          end
          def authorization_policy_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AuthorizationPolicyListResult
          end
          def prediction_system_generated_entities
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionSystemGeneratedEntities
          end
          def relationship_type_field_mapping
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipTypeFieldMapping
          end
          def prediction_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionListResult
          end
          def link_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::LinkListResult
          end
          def hub_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::HubListResult
          end
          def relationship_link_field_mapping
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipLinkFieldMapping
          end
          def property_definition
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PropertyDefinition
          end
          def relationship_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipListResult
          end
          def salesforce_connector_properties
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::SalesforceConnectorProperties
          end
          def prediction_training_results
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionTrainingResults
          end
          def connector_mapping_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingFormat
          end
          def relationship_link_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipLinkListResult
          end
          def connector_mapping_properties
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingProperties
          end
          def canonical_profile_definition
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CanonicalProfileDefinition
          end
          def kpi_alias
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiAlias
          end
          def prediction_model_status
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionModelStatus
          end
          def view_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ViewListResult
          end
          def canonical_profile_definition_properties_item
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CanonicalProfileDefinitionPropertiesItem
          end
          def relationship_type_mapping
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipTypeMapping
          end
          def widget_type_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::WidgetTypeListResult
          end
          def profile_enum_valid_values_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProfileEnumValidValuesFormat
          end
          def proxy_resource
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProxyResource
          end
          def crm_connector_entities
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CrmConnectorEntities
          end
          def assignment_principal
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AssignmentPrincipal
          end
          def kpi_group_by_metadata
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiGroupByMetadata
          end
          def resource_set_description
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ResourceSetDescription
          end
          def participant_property_reference
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ParticipantPropertyReference
          end
          def prediction_distribution_definition
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionDistributionDefinition
          end
          def prediction_distribution_definition_distributions_item
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionDistributionDefinitionDistributionsItem
          end
          def salesforce_discover_setting
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::SalesforceDiscoverSetting
          end
          def role_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleListResult
          end
          def kpi_definition
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiDefinition
          end
          def get_image_upload_url_input
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::GetImageUploadUrlInput
          end
          def connector_mapping_structure
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingStructure
          end
          def image_definition
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ImageDefinition
          end
          def role_assignment_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleAssignmentListResult
          end
          def entity_type_definition
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::EntityTypeDefinition
          end
          def hub
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Hub
          end
          def participant_profile_property_reference
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ParticipantProfilePropertyReference
          end
          def profile_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProfileResourceFormat
          end
          def interaction_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::InteractionResourceFormat
          end
          def kpi_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiResourceFormat
          end
          def enriching_kpi
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::EnrichingKpi
          end
          def connector_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorResourceFormat
          end
          def connector_mapping_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingResourceFormat
          end
          def authorization_policy_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::AuthorizationPolicyResourceFormat
          end
          def resource
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Resource
          end
          def relationship_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipResourceFormat
          end
          def relationship_link_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RelationshipLinkResourceFormat
          end
          def link_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::LinkResourceFormat
          end
          def widget_type_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::WidgetTypeResourceFormat
          end
          def role_assignment_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleAssignmentResourceFormat
          end
          def view_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ViewResourceFormat
          end
          def prediction_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionResourceFormat
          end
          def operation_display
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::OperationDisplay
          end
          def role_resource_format
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleResourceFormat
          end
          def operation
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Operation
          end
          def entity_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::EntityTypes
          end
          def operation_list_result
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::OperationListResult
          end
          def provisioning_states
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ProvisioningStates
          end
          def permission_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PermissionTypes
          end
          def connector_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorTypes
          end
          def data_source_type
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::DataSourceType
          end
          def error_management_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ErrorManagementTypes
          end
          def frequency_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::FrequencyTypes
          end
          def completion_operation_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CompletionOperationTypes
          end
          def connector_states
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorStates
          end
          def calculation_window_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CalculationWindowTypes
          end
          def kpi_functions
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::KpiFunctions
          end
          def entity_type
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::EntityType
          end
          def connector_mapping_states
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::ConnectorMappingStates
          end
          def instance_operation_type
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::InstanceOperationType
          end
          def cardinality_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CardinalityTypes
          end
          def role_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::RoleTypes
          end
          def link_types
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::LinkTypes
          end
          def prediction_model_life_cycle
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::PredictionModelLifeCycle
          end
          def canonical_property_value_type
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::CanonicalPropertyValueType
          end
          def status
            Azure::CustomerInsights::Mgmt::V2017_04_26::Models::Status
          end
        end
      end
    end
  end
end
