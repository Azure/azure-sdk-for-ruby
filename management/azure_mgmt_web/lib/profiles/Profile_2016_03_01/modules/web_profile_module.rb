# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_web'


module Azure::Profiles::WebModule::Management::Profile_2016_03_01
  module Web
    Certificates = Azure::ARM::Web::Api_2016_03_01::Certificates
    DeletedWebApps = Azure::ARM::Web::Api_2016_03_01::DeletedWebApps
    Provider = Azure::ARM::Web::Api_2016_03_01::Provider
    Recommendations = Azure::ARM::Web::Api_2016_03_01::Recommendations

    module Models
      RecommendationRule = Azure::ARM::Web::Api_2016_03_01::Models::RecommendationRule
      HostingEnvironmentProfile = Azure::ARM::Web::Api_2016_03_01::Models::HostingEnvironmentProfile
      Capability = Azure::ARM::Web::Api_2016_03_01::Models::Capability
      CertificateCollection = Azure::ARM::Web::Api_2016_03_01::Models::CertificateCollection
      CsmMoveResourceEnvelope = Azure::ARM::Web::Api_2016_03_01::Models::CsmMoveResourceEnvelope
      DeletedSite = Azure::ARM::Web::Api_2016_03_01::Models::DeletedSite
      CsmOperationDisplay = Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDisplay
      GeoRegionCollection = Azure::ARM::Web::Api_2016_03_01::Models::GeoRegionCollection
      MetricAvailability = Azure::ARM::Web::Api_2016_03_01::Models::MetricAvailability
      SkuCapacity = Azure::ARM::Web::Api_2016_03_01::Models::SkuCapacity
      ServiceSpecification = Azure::ARM::Web::Api_2016_03_01::Models::ServiceSpecification
      GlobalCsmSkuDescription = Azure::ARM::Web::Api_2016_03_01::Models::GlobalCsmSkuDescription
      CsmOperationDescription = Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDescription
      ValidateResponse = Azure::ARM::Web::Api_2016_03_01::Models::ValidateResponse
      Recommendation = Azure::ARM::Web::Api_2016_03_01::Models::Recommendation
      PremierAddOnOfferCollection = Azure::ARM::Web::Api_2016_03_01::Models::PremierAddOnOfferCollection
      Resource = Azure::ARM::Web::Api_2016_03_01::Models::Resource
      ProxyOnlyResource = Azure::ARM::Web::Api_2016_03_01::Models::ProxyOnlyResource
      Dimension = Azure::ARM::Web::Api_2016_03_01::Models::Dimension
      ResourceNameAvailability = Azure::ARM::Web::Api_2016_03_01::Models::ResourceNameAvailability
      CsmOperationDescriptionProperties = Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDescriptionProperties
      ResourceNameAvailabilityRequest = Azure::ARM::Web::Api_2016_03_01::Models::ResourceNameAvailabilityRequest
      ValidateRequest = Azure::ARM::Web::Api_2016_03_01::Models::ValidateRequest
      DeletedWebAppCollection = Azure::ARM::Web::Api_2016_03_01::Models::DeletedWebAppCollection
      SkuInfos = Azure::ARM::Web::Api_2016_03_01::Models::SkuInfos
      CsmOperationCollection = Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationCollection
      ValidateResponseError = Azure::ARM::Web::Api_2016_03_01::Models::ValidateResponseError
      MetricSpecification = Azure::ARM::Web::Api_2016_03_01::Models::MetricSpecification
      SourceControlCollection = Azure::ARM::Web::Api_2016_03_01::Models::SourceControlCollection
      Certificate = Azure::ARM::Web::Api_2016_03_01::Models::Certificate
      GeoRegion = Azure::ARM::Web::Api_2016_03_01::Models::GeoRegion
      PremierAddOnOffer = Azure::ARM::Web::Api_2016_03_01::Models::PremierAddOnOffer
      SourceControl = Azure::ARM::Web::Api_2016_03_01::Models::SourceControl
      User = Azure::ARM::Web::Api_2016_03_01::Models::User
      VnetParameters = Azure::ARM::Web::Api_2016_03_01::Models::VnetParameters
      VnetValidationTestFailure = Azure::ARM::Web::Api_2016_03_01::Models::VnetValidationTestFailure
      VnetValidationFailureDetails = Azure::ARM::Web::Api_2016_03_01::Models::VnetValidationFailureDetails
      KeyVaultSecretStatus = Azure::ARM::Web::Api_2016_03_01::Models::KeyVaultSecretStatus
      ResourceScopeType = Azure::ARM::Web::Api_2016_03_01::Models::ResourceScopeType
      NotificationLevel = Azure::ARM::Web::Api_2016_03_01::Models::NotificationLevel
      Channels = Azure::ARM::Web::Api_2016_03_01::Models::Channels
      AppServicePlanRestrictions = Azure::ARM::Web::Api_2016_03_01::Models::AppServicePlanRestrictions
      InAvailabilityReasonType = Azure::ARM::Web::Api_2016_03_01::Models::InAvailabilityReasonType
      CheckNameResourceTypes = Azure::ARM::Web::Api_2016_03_01::Models::CheckNameResourceTypes
      ValidateResourceTypes = Azure::ARM::Web::Api_2016_03_01::Models::ValidateResourceTypes
      SkuName = Azure::ARM::Web::Api_2016_03_01::Models::SkuName
    end

    #
    # Web
    #
    class WebClass
      attr_accessor :certificates, :deleted_web_apps, :provider, :recommendations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Web::Api_2016_03_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.certificates = Azure::ARM::Web::Api_2016_03_01::Certificates.new(client)
        self.deleted_web_apps = Azure::ARM::Web::Api_2016_03_01::DeletedWebApps.new(client)
        self.provider = Azure::ARM::Web::Api_2016_03_01::Provider.new(client)
        self.recommendations = Azure::ARM::Web::Api_2016_03_01::Recommendations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-03-01'
            client = Azure::ARM::Web::Api_2016_03_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def recommendation_rule
          Azure::ARM::Web::Api_2016_03_01::Models::RecommendationRule
        end
        def hosting_environment_profile
          Azure::ARM::Web::Api_2016_03_01::Models::HostingEnvironmentProfile
        end
        def capability
          Azure::ARM::Web::Api_2016_03_01::Models::Capability
        end
        def certificate_collection
          Azure::ARM::Web::Api_2016_03_01::Models::CertificateCollection
        end
        def csm_move_resource_envelope
          Azure::ARM::Web::Api_2016_03_01::Models::CsmMoveResourceEnvelope
        end
        def deleted_site
          Azure::ARM::Web::Api_2016_03_01::Models::DeletedSite
        end
        def csm_operation_display
          Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDisplay
        end
        def geo_region_collection
          Azure::ARM::Web::Api_2016_03_01::Models::GeoRegionCollection
        end
        def metric_availability
          Azure::ARM::Web::Api_2016_03_01::Models::MetricAvailability
        end
        def sku_capacity
          Azure::ARM::Web::Api_2016_03_01::Models::SkuCapacity
        end
        def service_specification
          Azure::ARM::Web::Api_2016_03_01::Models::ServiceSpecification
        end
        def global_csm_sku_description
          Azure::ARM::Web::Api_2016_03_01::Models::GlobalCsmSkuDescription
        end
        def csm_operation_description
          Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDescription
        end
        def validate_response
          Azure::ARM::Web::Api_2016_03_01::Models::ValidateResponse
        end
        def recommendation
          Azure::ARM::Web::Api_2016_03_01::Models::Recommendation
        end
        def premier_add_on_offer_collection
          Azure::ARM::Web::Api_2016_03_01::Models::PremierAddOnOfferCollection
        end
        def resource
          Azure::ARM::Web::Api_2016_03_01::Models::Resource
        end
        def proxy_only_resource
          Azure::ARM::Web::Api_2016_03_01::Models::ProxyOnlyResource
        end
        def dimension
          Azure::ARM::Web::Api_2016_03_01::Models::Dimension
        end
        def resource_name_availability
          Azure::ARM::Web::Api_2016_03_01::Models::ResourceNameAvailability
        end
        def csm_operation_description_properties
          Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDescriptionProperties
        end
        def resource_name_availability_request
          Azure::ARM::Web::Api_2016_03_01::Models::ResourceNameAvailabilityRequest
        end
        def validate_request
          Azure::ARM::Web::Api_2016_03_01::Models::ValidateRequest
        end
        def deleted_web_app_collection
          Azure::ARM::Web::Api_2016_03_01::Models::DeletedWebAppCollection
        end
        def sku_infos
          Azure::ARM::Web::Api_2016_03_01::Models::SkuInfos
        end
        def csm_operation_collection
          Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationCollection
        end
        def validate_response_error
          Azure::ARM::Web::Api_2016_03_01::Models::ValidateResponseError
        end
        def metric_specification
          Azure::ARM::Web::Api_2016_03_01::Models::MetricSpecification
        end
        def source_control_collection
          Azure::ARM::Web::Api_2016_03_01::Models::SourceControlCollection
        end
        def certificate
          Azure::ARM::Web::Api_2016_03_01::Models::Certificate
        end
        def geo_region
          Azure::ARM::Web::Api_2016_03_01::Models::GeoRegion
        end
        def premier_add_on_offer
          Azure::ARM::Web::Api_2016_03_01::Models::PremierAddOnOffer
        end
        def source_control
          Azure::ARM::Web::Api_2016_03_01::Models::SourceControl
        end
        def user
          Azure::ARM::Web::Api_2016_03_01::Models::User
        end
        def vnet_parameters
          Azure::ARM::Web::Api_2016_03_01::Models::VnetParameters
        end
        def vnet_validation_test_failure
          Azure::ARM::Web::Api_2016_03_01::Models::VnetValidationTestFailure
        end
        def vnet_validation_failure_details
          Azure::ARM::Web::Api_2016_03_01::Models::VnetValidationFailureDetails
        end
        def key_vault_secret_status
          Azure::ARM::Web::Api_2016_03_01::Models::KeyVaultSecretStatus
        end
        def resource_scope_type
          Azure::ARM::Web::Api_2016_03_01::Models::ResourceScopeType
        end
        def notification_level
          Azure::ARM::Web::Api_2016_03_01::Models::NotificationLevel
        end
        def channels
          Azure::ARM::Web::Api_2016_03_01::Models::Channels
        end
        def app_service_plan_restrictions
          Azure::ARM::Web::Api_2016_03_01::Models::AppServicePlanRestrictions
        end
        def in_availability_reason_type
          Azure::ARM::Web::Api_2016_03_01::Models::InAvailabilityReasonType
        end
        def check_name_resource_types
          Azure::ARM::Web::Api_2016_03_01::Models::CheckNameResourceTypes
        end
        def validate_resource_types
          Azure::ARM::Web::Api_2016_03_01::Models::ValidateResourceTypes
        end
        def sku_name
          Azure::ARM::Web::Api_2016_03_01::Models::SkuName
        end
      end
    end
  end
end
