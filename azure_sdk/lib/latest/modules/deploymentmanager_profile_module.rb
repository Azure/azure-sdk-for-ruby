# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_deployment_manager'

module Azure::Profiles::Latest
  module DeploymentManager
    module Mgmt
      ServiceTopologies = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::ServiceTopologies
      Services = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Services
      ServiceUnits = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::ServiceUnits
      Steps = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Steps
      Rollouts = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Rollouts
      ArtifactSources = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::ArtifactSources
      Operations = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Operations

      module Models
        ServiceUnitArtifacts = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitArtifacts
        Identity = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Identity
        ServiceUnitProperties = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitProperties
        StepGroup = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::StepGroup
        RolloutPropertiesModel = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutPropertiesModel
        RestResponse = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestResponse
        ArtifactSourcePropertiesModel = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ArtifactSourcePropertiesModel
        ServiceTopologyProperties = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceTopologyProperties
        CloudErrorBody = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::CloudErrorBody
        RestResponseRegex = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestResponseRegex
        StepOperationInfo = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::StepOperationInfo
        ServiceProperties = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceProperties
        Message = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Message
        RestRequest = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestRequest
        Resource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Resource
        PrePostStep = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::PrePostStep
        RestHealthCheck = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestHealthCheck
        Authentication = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Authentication
        HealthCheckStepAttributes = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::HealthCheckStepAttributes
        RolloutOperationInfo = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutOperationInfo
        RestRequestAuthentication = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestRequestAuthentication
        RolloutStep = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutStep
        OperationDetail = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::OperationDetail
        StepProperties = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::StepProperties
        ResourceOperation = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ResourceOperation
        Operation = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Operation
        WaitStepAttributes = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::WaitStepAttributes
        OperationsList = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::OperationsList
        TrackedResource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::TrackedResource
        RolloutRequest = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutRequest
        ArtifactSource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ArtifactSource
        SasAuthentication = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::SasAuthentication
        ServiceUnit = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnit
        Service = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Service
        Rollout = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Rollout
        ServiceTopologyResource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceTopologyResource
        ServiceResource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceResource
        ServiceUnitResource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitResource
        StepResource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::StepResource
        HealthCheckStepProperties = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::HealthCheckStepProperties
        RestHealthCheckStepAttributes = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestHealthCheckStepAttributes
        RolloutIdentityAuthentication = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutIdentityAuthentication
        ApiKeyAuthentication = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ApiKeyAuthentication
        WaitStepProperties = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::WaitStepProperties
        ProxyResource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ProxyResource
        AzureEntityResource = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::AzureEntityResource
        DeploymentMode = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::DeploymentMode
        RestRequestMethod = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestRequestMethod
        RestMatchQuantifier = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestMatchQuantifier
        RestAuthLocation = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestAuthLocation
      end

      class DeploymentManagerManagementClass
        attr_reader :service_topologies, :services, :service_units, :steps, :rollouts, :artifact_sources, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DeploymentManager::Mgmt::V2019_11_01_preview::AzureDeploymentManager.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @service_topologies = @client_0.service_topologies
          @services = @client_0.services
          @service_units = @client_0.service_units
          @steps = @client_0.steps
          @rollouts = @client_0.rollouts
          @artifact_sources = @client_0.artifact_sources
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DeploymentManager/Mgmt"
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
          def service_unit_artifacts
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitArtifacts
          end
          def identity
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Identity
          end
          def service_unit_properties
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitProperties
          end
          def step_group
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::StepGroup
          end
          def rollout_properties_model
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutPropertiesModel
          end
          def rest_response
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestResponse
          end
          def artifact_source_properties_model
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ArtifactSourcePropertiesModel
          end
          def service_topology_properties
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceTopologyProperties
          end
          def cloud_error_body
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::CloudErrorBody
          end
          def rest_response_regex
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestResponseRegex
          end
          def step_operation_info
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::StepOperationInfo
          end
          def service_properties
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceProperties
          end
          def message
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Message
          end
          def rest_request
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestRequest
          end
          def resource
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Resource
          end
          def pre_post_step
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::PrePostStep
          end
          def rest_health_check
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestHealthCheck
          end
          def authentication
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Authentication
          end
          def health_check_step_attributes
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::HealthCheckStepAttributes
          end
          def rollout_operation_info
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutOperationInfo
          end
          def rest_request_authentication
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestRequestAuthentication
          end
          def rollout_step
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutStep
          end
          def operation_detail
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::OperationDetail
          end
          def step_properties
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::StepProperties
          end
          def resource_operation
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ResourceOperation
          end
          def operation
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Operation
          end
          def wait_step_attributes
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::WaitStepAttributes
          end
          def operations_list
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::OperationsList
          end
          def tracked_resource
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::TrackedResource
          end
          def rollout_request
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutRequest
          end
          def artifact_source
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ArtifactSource
          end
          def sas_authentication
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::SasAuthentication
          end
          def service_unit
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnit
          end
          def service
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Service
          end
          def rollout
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::Rollout
          end
          def service_topology_resource
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceTopologyResource
          end
          def service_resource
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceResource
          end
          def service_unit_resource
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ServiceUnitResource
          end
          def step_resource
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::StepResource
          end
          def health_check_step_properties
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::HealthCheckStepProperties
          end
          def rest_health_check_step_attributes
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestHealthCheckStepAttributes
          end
          def rollout_identity_authentication
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RolloutIdentityAuthentication
          end
          def api_key_authentication
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ApiKeyAuthentication
          end
          def wait_step_properties
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::WaitStepProperties
          end
          def proxy_resource
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::ProxyResource
          end
          def azure_entity_resource
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::AzureEntityResource
          end
          def deployment_mode
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::DeploymentMode
          end
          def rest_request_method
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestRequestMethod
          end
          def rest_match_quantifier
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestMatchQuantifier
          end
          def rest_auth_location
            Azure::DeploymentManager::Mgmt::V2019_11_01_preview::Models::RestAuthLocation
          end
        end
      end
    end
  end
end
