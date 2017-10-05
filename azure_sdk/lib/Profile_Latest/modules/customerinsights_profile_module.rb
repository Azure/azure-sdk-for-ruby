# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_customer_insights'


module Azure::Profiles::Management::Profile_Latest
  module CustomerInsights
    Hubs = Azure::ARM::CustomerInsights::Api_2017_04_26::Hubs
    Profiles = Azure::ARM::CustomerInsights::Api_2017_04_26::Profiles
    Interactions = Azure::ARM::CustomerInsights::Api_2017_04_26::Interactions
    Relationships = Azure::ARM::CustomerInsights::Api_2017_04_26::Relationships
    RelationshipLinks = Azure::ARM::CustomerInsights::Api_2017_04_26::RelationshipLinks
    AuthorizationPolicies = Azure::ARM::CustomerInsights::Api_2017_04_26::AuthorizationPolicies
    Connectors = Azure::ARM::CustomerInsights::Api_2017_04_26::Connectors
    ConnectorMappings = Azure::ARM::CustomerInsights::Api_2017_04_26::ConnectorMappings
    Kpi = Azure::ARM::CustomerInsights::Api_2017_04_26::Kpi
    WidgetTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::WidgetTypes
    Views = Azure::ARM::CustomerInsights::Api_2017_04_26::Views
    Links = Azure::ARM::CustomerInsights::Api_2017_04_26::Links
    Roles = Azure::ARM::CustomerInsights::Api_2017_04_26::Roles
    RoleAssignments = Azure::ARM::CustomerInsights::Api_2017_04_26::RoleAssignments
    Images = Azure::ARM::CustomerInsights::Api_2017_04_26::Images
    Predictions = Azure::ARM::CustomerInsights::Api_2017_04_26::Predictions

    module Models
      InteractionListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InteractionListResult
      ParticipantProfilePropertyReference = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ParticipantProfilePropertyReference
      Participant = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Participant
      HubListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::HubListResult
      StrongId = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::StrongId
      ProfileEnumValidValuesFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileEnumValidValuesFormat
      DataSourcePrecedence = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::DataSourcePrecedence
      PropertyDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PropertyDefinition
      RelationshipsLookup = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipsLookup
      AuthorizationPolicy = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicy
      ProfileListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileListResult
      SalesforceTable = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceTable
      ImageDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ImageDefinition
      AzureBlobConnectorProperties = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AzureBlobConnectorProperties
      HubBillingInfoFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::HubBillingInfoFormat
      CrmConnectorProperties = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CrmConnectorProperties
      ConnectorMappingFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingFormat
      KpiListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiListResult
      ConnectorMappingStructure = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingStructure
      PredictionListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionListResult
      ConnectorMappingProperties = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingProperties
      PredictionModelStatus = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionModelStatus
      KpiGroupByMetadata = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiGroupByMetadata
      ConnectorListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorListResult
      KpiAlias = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiAlias
      PredictionTrainingResults = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionTrainingResults
      KpiDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiDefinition
      ConnectorMappingListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingListResult
      ProxyResource = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProxyResource
      CanonicalProfileDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalProfileDefinition
      ParticipantPropertyReference = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ParticipantPropertyReference
      AuthorizationPolicyListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicyListResult
      RelationshipTypeMapping = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipTypeMapping
      CanonicalProfileDefinitionPropertiesItem = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalProfileDefinitionPropertiesItem
      RelationshipLinkFieldMapping = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkFieldMapping
      RoleListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleListResult
      GetImageUploadUrlInput = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::GetImageUploadUrlInput
      LinkListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkListResult
      SalesforceConnectorProperties = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceConnectorProperties
      PredictionDistributionDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionDistributionDefinition
      ConnectorMappingErrorManagement = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingErrorManagement
      RelationshipListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipListResult
      ConnectorMappingCompleteOperation = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingCompleteOperation
      PredictionDistributionDefinitionDistributionsItem = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionDistributionDefinitionDistributionsItem
      KpiParticipantProfilesMetadata = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiParticipantProfilesMetadata
      RelationshipLinkListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkListResult
      PredictionSystemGeneratedEntities = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionSystemGeneratedEntities
      RelationshipTypeFieldMapping = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipTypeFieldMapping
      ViewListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ViewListResult
      SalesforceDiscoverSetting = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceDiscoverSetting
      PredictionGradesItem = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionGradesItem
      ConnectorMappingAvailability = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingAvailability
      WidgetTypeListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::WidgetTypeListResult
      KpiExtract = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiExtract
      AssignmentPrincipal = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AssignmentPrincipal
      MetadataDefinitionBase = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::MetadataDefinitionBase
      ResourceSetDescription = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ResourceSetDescription
      KpiThresholds = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiThresholds
      PredictionMappings = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionMappings
      CrmConnectorEntities = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CrmConnectorEntities
      RoleAssignmentListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleAssignmentListResult
      TypePropertiesMapping = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::TypePropertiesMapping
      SuggestRelationshipLinksResponse = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SuggestRelationshipLinksResponse
      Hub = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Hub
      EntityTypeDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityTypeDefinition
      ProfileResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileResourceFormat
      InteractionResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InteractionResourceFormat
      KpiResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiResourceFormat
      EnrichingKpi = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EnrichingKpi
      ConnectorResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorResourceFormat
      ConnectorMappingResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingResourceFormat
      AuthorizationPolicyResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicyResourceFormat
      LinkResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkResourceFormat
      RelationshipResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipResourceFormat
      RelationshipLinkResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkResourceFormat
      ViewResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ViewResourceFormat
      WidgetTypeResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::WidgetTypeResourceFormat
      RoleAssignmentResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleAssignmentResourceFormat
      RoleResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleResourceFormat
      PredictionResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionResourceFormat
      EntityTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityTypes
      DataSourceType = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::DataSourceType
      Status = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Status
      ProvisioningStates = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProvisioningStates
      PermissionTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PermissionTypes
      ConnectorTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorTypes
      ConnectorStates = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorStates
      ErrorManagementTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ErrorManagementTypes
      FrequencyTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::FrequencyTypes
      CompletionOperationTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CompletionOperationTypes
      ConnectorMappingStates = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingStates
      CalculationWindowTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CalculationWindowTypes
      KpiFunctions = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiFunctions
      EntityType = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityType
      LinkTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkTypes
      InstanceOperationType = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InstanceOperationType
      CardinalityTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CardinalityTypes
      RoleTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleTypes
      CanonicalPropertyValueType = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalPropertyValueType
      PredictionModelLifeCycle = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionModelLifeCycle
    end

    #
    # CustomerInsights
    #
    class CustomerInsightsClass
      attr_accessor :hubs, :profiles, :interactions, :relationships, :relationship_links, :authorization_policies, :connectors, :connector_mappings, :kpi, :widget_types, :views, :links, :roles, :role_assignments, :images, :predictions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::CustomerInsights::Api_2017_04_26::CustomerInsightsManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.hubs = Azure::ARM::CustomerInsights::Api_2017_04_26::Hubs.new(client)
        self.profiles = Azure::ARM::CustomerInsights::Api_2017_04_26::Profiles.new(client)
        self.interactions = Azure::ARM::CustomerInsights::Api_2017_04_26::Interactions.new(client)
        self.relationships = Azure::ARM::CustomerInsights::Api_2017_04_26::Relationships.new(client)
        self.relationship_links = Azure::ARM::CustomerInsights::Api_2017_04_26::RelationshipLinks.new(client)
        self.authorization_policies = Azure::ARM::CustomerInsights::Api_2017_04_26::AuthorizationPolicies.new(client)
        self.connectors = Azure::ARM::CustomerInsights::Api_2017_04_26::Connectors.new(client)
        self.connector_mappings = Azure::ARM::CustomerInsights::Api_2017_04_26::ConnectorMappings.new(client)
        self.kpi = Azure::ARM::CustomerInsights::Api_2017_04_26::Kpi.new(client)
        self.widget_types = Azure::ARM::CustomerInsights::Api_2017_04_26::WidgetTypes.new(client)
        self.views = Azure::ARM::CustomerInsights::Api_2017_04_26::Views.new(client)
        self.links = Azure::ARM::CustomerInsights::Api_2017_04_26::Links.new(client)
        self.roles = Azure::ARM::CustomerInsights::Api_2017_04_26::Roles.new(client)
        self.role_assignments = Azure::ARM::CustomerInsights::Api_2017_04_26::RoleAssignments.new(client)
        self.images = Azure::ARM::CustomerInsights::Api_2017_04_26::Images.new(client)
        self.predictions = Azure::ARM::CustomerInsights::Api_2017_04_26::Predictions.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-04-26'
            client = Azure::ARM::CustomerInsights::Api_2017_04_26::CustomerInsightsManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def interaction_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InteractionListResult
        end
        def participant_profile_property_reference
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ParticipantProfilePropertyReference
        end
        def participant
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Participant
        end
        def hub_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::HubListResult
        end
        def strong_id
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::StrongId
        end
        def profile_enum_valid_values_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileEnumValidValuesFormat
        end
        def data_source_precedence
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::DataSourcePrecedence
        end
        def property_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PropertyDefinition
        end
        def relationships_lookup
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipsLookup
        end
        def authorization_policy
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicy
        end
        def profile_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileListResult
        end
        def salesforce_table
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceTable
        end
        def image_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ImageDefinition
        end
        def azure_blob_connector_properties
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AzureBlobConnectorProperties
        end
        def hub_billing_info_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::HubBillingInfoFormat
        end
        def crm_connector_properties
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CrmConnectorProperties
        end
        def connector_mapping_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingFormat
        end
        def kpi_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiListResult
        end
        def connector_mapping_structure
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingStructure
        end
        def prediction_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionListResult
        end
        def connector_mapping_properties
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingProperties
        end
        def prediction_model_status
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionModelStatus
        end
        def kpi_group_by_metadata
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiGroupByMetadata
        end
        def connector_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorListResult
        end
        def kpi_alias
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiAlias
        end
        def prediction_training_results
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionTrainingResults
        end
        def kpi_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiDefinition
        end
        def connector_mapping_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingListResult
        end
        def proxy_resource
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProxyResource
        end
        def canonical_profile_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalProfileDefinition
        end
        def participant_property_reference
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ParticipantPropertyReference
        end
        def authorization_policy_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicyListResult
        end
        def relationship_type_mapping
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipTypeMapping
        end
        def canonical_profile_definition_properties_item
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalProfileDefinitionPropertiesItem
        end
        def relationship_link_field_mapping
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkFieldMapping
        end
        def role_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleListResult
        end
        def get_image_upload_url_input
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::GetImageUploadUrlInput
        end
        def link_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkListResult
        end
        def salesforce_connector_properties
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceConnectorProperties
        end
        def prediction_distribution_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionDistributionDefinition
        end
        def connector_mapping_error_management
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingErrorManagement
        end
        def relationship_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipListResult
        end
        def connector_mapping_complete_operation
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingCompleteOperation
        end
        def prediction_distribution_definition_distributions_item
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionDistributionDefinitionDistributionsItem
        end
        def kpi_participant_profiles_metadata
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiParticipantProfilesMetadata
        end
        def relationship_link_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkListResult
        end
        def prediction_system_generated_entities
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionSystemGeneratedEntities
        end
        def relationship_type_field_mapping
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipTypeFieldMapping
        end
        def view_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ViewListResult
        end
        def salesforce_discover_setting
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceDiscoverSetting
        end
        def prediction_grades_item
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionGradesItem
        end
        def connector_mapping_availability
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingAvailability
        end
        def widget_type_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::WidgetTypeListResult
        end
        def kpi_extract
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiExtract
        end
        def assignment_principal
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AssignmentPrincipal
        end
        def metadata_definition_base
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::MetadataDefinitionBase
        end
        def resource_set_description
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ResourceSetDescription
        end
        def kpi_thresholds
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiThresholds
        end
        def prediction_mappings
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionMappings
        end
        def crm_connector_entities
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CrmConnectorEntities
        end
        def role_assignment_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleAssignmentListResult
        end
        def type_properties_mapping
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::TypePropertiesMapping
        end
        def suggest_relationship_links_response
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SuggestRelationshipLinksResponse
        end
        def hub
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Hub
        end
        def entity_type_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityTypeDefinition
        end
        def profile_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileResourceFormat
        end
        def interaction_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InteractionResourceFormat
        end
        def kpi_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiResourceFormat
        end
        def enriching_kpi
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EnrichingKpi
        end
        def connector_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorResourceFormat
        end
        def connector_mapping_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingResourceFormat
        end
        def authorization_policy_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicyResourceFormat
        end
        def link_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkResourceFormat
        end
        def relationship_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipResourceFormat
        end
        def relationship_link_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkResourceFormat
        end
        def view_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ViewResourceFormat
        end
        def widget_type_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::WidgetTypeResourceFormat
        end
        def role_assignment_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleAssignmentResourceFormat
        end
        def role_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleResourceFormat
        end
        def prediction_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionResourceFormat
        end
        def entity_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityTypes
        end
        def data_source_type
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::DataSourceType
        end
        def status
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Status
        end
        def provisioning_states
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProvisioningStates
        end
        def permission_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PermissionTypes
        end
        def connector_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorTypes
        end
        def connector_states
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorStates
        end
        def error_management_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ErrorManagementTypes
        end
        def frequency_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::FrequencyTypes
        end
        def completion_operation_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CompletionOperationTypes
        end
        def connector_mapping_states
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingStates
        end
        def calculation_window_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CalculationWindowTypes
        end
        def kpi_functions
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiFunctions
        end
        def entity_type
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityType
        end
        def link_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkTypes
        end
        def instance_operation_type
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InstanceOperationType
        end
        def cardinality_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CardinalityTypes
        end
        def role_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleTypes
        end
        def canonical_property_value_type
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalPropertyValueType
        end
        def prediction_model_life_cycle
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionModelLifeCycle
        end
      end
    end
  end
end
