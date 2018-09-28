# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_devtestlabs'

module Azure::Profiles::Latest
  module DevTestLabs
    module Mgmt
      ProviderOperations = Azure::DevTestLabs::Mgmt::V2016_05_15::ProviderOperations
      Labs = Azure::DevTestLabs::Mgmt::V2016_05_15::Labs
      GlobalSchedules = Azure::DevTestLabs::Mgmt::V2016_05_15::GlobalSchedules
      GalleryImages = Azure::DevTestLabs::Mgmt::V2016_05_15::GalleryImages
      ArtifactSources = Azure::DevTestLabs::Mgmt::V2016_05_15::ArtifactSources
      ArmTemplates = Azure::DevTestLabs::Mgmt::V2016_05_15::ArmTemplates
      Artifacts = Azure::DevTestLabs::Mgmt::V2016_05_15::Artifacts
      Costs = Azure::DevTestLabs::Mgmt::V2016_05_15::Costs
      CustomImages = Azure::DevTestLabs::Mgmt::V2016_05_15::CustomImages
      Formulas = Azure::DevTestLabs::Mgmt::V2016_05_15::Formulas
      NotificationChannels = Azure::DevTestLabs::Mgmt::V2016_05_15::NotificationChannels
      Schedules = Azure::DevTestLabs::Mgmt::V2016_05_15::Schedules
      ServiceRunners = Azure::DevTestLabs::Mgmt::V2016_05_15::ServiceRunners
      PolicySets = Azure::DevTestLabs::Mgmt::V2016_05_15::PolicySets
      Users = Azure::DevTestLabs::Mgmt::V2016_05_15::Users
      Environments = Azure::DevTestLabs::Mgmt::V2016_05_15::Environments
      Secrets = Azure::DevTestLabs::Mgmt::V2016_05_15::Secrets
      VirtualMachineSchedules = Azure::DevTestLabs::Mgmt::V2016_05_15::VirtualMachineSchedules
      VirtualNetworks = Azure::DevTestLabs::Mgmt::V2016_05_15::VirtualNetworks
      Disks = Azure::DevTestLabs::Mgmt::V2016_05_15::Disks
      VirtualMachines = Azure::DevTestLabs::Mgmt::V2016_05_15::VirtualMachines
      Policies = Azure::DevTestLabs::Mgmt::V2016_05_15::Policies
      Operations = Azure::DevTestLabs::Mgmt::V2016_05_15::Operations

      module Models
        ExternalSubnetFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExternalSubnetFragment
        GalleryImageReference = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImageReference
        DayDetails = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DayDetails
        NotificationSettings = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationSettings
        SharedPublicIpAddressConfiguration = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SharedPublicIpAddressConfiguration
        ExportResourceUsageParameters = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExportResourceUsageParameters
        WeekDetailsFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WeekDetailsFragment
        ExternalSubnet = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExternalSubnet
        HourDetailsFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HourDetailsFragment
        WeekDetails = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WeekDetails
        UserSecretStore = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserSecretStore
        HourDetails = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HourDetails
        ArtifactParameterProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactParameterProperties
        ArtifactInstallProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactInstallProperties
        ResponseWithContinuationLab = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLab
        ParametersValueFileInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ParametersValueFileInfo
        ResponseWithContinuationLabVirtualMachine = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLabVirtualMachine
        ArmTemplateInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplateInfo
        NetworkInterfaceProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NetworkInterfaceProperties
        ResponseWithContinuationUser = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationUser
        LabVirtualMachineCreationParameter = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachineCreationParameter
        ArtifactDeploymentStatusPropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactDeploymentStatusPropertiesFragment
        FormulaPropertiesFromVm = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::FormulaPropertiesFromVm
        ArtifactInstallPropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactInstallPropertiesFragment
        ResponseWithContinuationLabVhd = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLabVhd
        UserSecretStoreFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserSecretStoreFragment
        AttachNewDataDiskOptions = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::AttachNewDataDiskOptions
        GalleryImageReferenceFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImageReferenceFragment
        ParameterInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ParameterInfo
        ComputeDataDisk = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeDataDisk
        GenerateArmTemplateRequest = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateArmTemplateRequest
        ComputeVmInstanceViewStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmInstanceViewStatus
        GenerateUploadUriParameter = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateUploadUriParameter
        ComputeVmProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmProperties
        GenerateUploadUriResponse = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateUploadUriResponse
        PercentageCostThresholdProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PercentageCostThresholdProperties
        IdentityProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::IdentityProperties
        WindowsOsInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WindowsOsInfo
        InboundNatRuleFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::InboundNatRuleFragment
        CustomImagePropertiesFromVm = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImagePropertiesFromVm
        UserIdentityFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserIdentityFragment
        ResponseWithContinuationSchedule = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationSchedule
        TargetCostProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TargetCostProperties
        DetachDataDiskProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DetachDataDiskProperties
        LabCostSummaryProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCostSummaryProperties
        ResponseWithContinuationPolicy = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationPolicy
        LabCostDetailsProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCostDetailsProperties
        ResponseWithContinuationNotificationChannel = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationNotificationChannel
        LabResourceCostProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabResourceCostProperties
        EvaluatePoliciesRequest = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesRequest
        SubnetOverrideFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetOverrideFragment
        PolicySetResult = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicySetResult
        SubnetSharedPublicIpAddressConfigurationFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetSharedPublicIpAddressConfigurationFragment
        LabVhd = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVhd
        DayDetailsFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DayDetailsFragment
        SubnetFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetFragment
        SharedPublicIpAddressConfigurationFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SharedPublicIpAddressConfigurationFragment
        ResponseWithContinuationServiceRunner = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationServiceRunner
        NetworkInterfacePropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NetworkInterfacePropertiesFragment
        ArtifactDeploymentStatusProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactDeploymentStatusProperties
        UserIdentity = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserIdentity
        ShutdownNotificationContent = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ShutdownNotificationContent
        ResponseWithContinuationSecret = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationSecret
        RetargetScheduleProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::RetargetScheduleProperties
        BulkCreationParameters = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::BulkCreationParameters
        ResponseWithContinuationVirtualNetwork = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationVirtualNetwork
        ComputeDataDiskFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeDataDiskFragment
        NotifyParameters = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotifyParameters
        ComputeVmPropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmPropertiesFragment
        OperationError = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::OperationError
        LinuxOsInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LinuxOsInfo
        OperationMetadataDisplay = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::OperationMetadataDisplay
        DataDiskProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DataDiskProperties
        OperationMetadata = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::OperationMetadata
        EnvironmentDeploymentProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EnvironmentDeploymentProperties
        OperationResult = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::OperationResult
        PolicyViolation = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyViolation
        SubnetOverride = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetOverride
        EventFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EventFragment
        SubnetSharedPublicIpAddressConfiguration = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetSharedPublicIpAddressConfiguration
        ApplyArtifactsRequest = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplyArtifactsRequest
        ArtifactParameterPropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactParameterPropertiesFragment
        PortFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PortFragment
        ProviderOperationResult = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ProviderOperationResult
        CostThresholdProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostThresholdProperties
        Resource = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Resource
        ResponseWithContinuationArmTemplate = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArmTemplate
        DetachDiskProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DetachDiskProperties
        ResponseWithContinuationArtifact = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArtifact
        EvaluatePoliciesResponse = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesResponse
        ResponseWithContinuationArtifactSource = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArtifactSource
        ArmTemplateParameterProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplateParameterProperties
        ResponseWithContinuationCustomImage = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationCustomImage
        ComputeVmInstanceViewStatusFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmInstanceViewStatusFragment
        ResponseWithContinuationDisk = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationDisk
        EvaluatePoliciesProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesProperties
        ResponseWithContinuationDtlEnvironment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationDtlEnvironment
        AttachDiskProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::AttachDiskProperties
        ResponseWithContinuationFormula = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationFormula
        NotificationSettingsFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationSettingsFragment
        ResponseWithContinuationGalleryImage = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationGalleryImage
        CustomImagePropertiesCustom = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImagePropertiesCustom
        ScheduleFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ScheduleFragment
        ApplicableSchedule = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplicableSchedule
        ArmTemplate = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplate
        Schedule = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Schedule
        ArtifactSource = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactSource
        Artifact = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Artifact
        ApplicableScheduleFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplicableScheduleFragment
        ArtifactSourceFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactSourceFragment
        CustomImage = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImage
        DtlEnvironment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DtlEnvironment
        InboundNatRule = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::InboundNatRule
        Lab = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Lab
        Event = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Event
        Formula = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Formula
        LabVirtualMachine = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachine
        LabCost = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCost
        LabFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabFragment
        NotificationChannelFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannelFragment
        Subnet = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Subnet
        NotificationChannel = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannel
        ServiceRunner = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ServiceRunner
        PolicyFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyFragment
        LabVirtualMachineFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachineFragment
        EnableStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EnableStatus
        UserFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserFragment
        GalleryImage = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImage
        Secret = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Secret
        NotificationStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationStatus
        User = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::User
        VirtualNetworkFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualNetworkFragment
        CostThresholdStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostThresholdStatus
        WindowsOsState = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WindowsOsState
        SourceControlType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SourceControlType
        StorageType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::StorageType
        HostCachingOptions = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HostCachingOptions
        NotificationChannelEventType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannelEventType
        LinuxOsState = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LinuxOsState
        CustomImageOsType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImageOsType
        VirtualNetwork = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualNetwork
        TargetCostStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TargetCostStatus
        VirtualMachineCreationSource = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualMachineCreationSource
        FileUploadOptions = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::FileUploadOptions
        PremiumDataDisk = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PremiumDataDisk
        HttpStatusCode = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HttpStatusCode
        ReportingCycleType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ReportingCycleType
        CostType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostType
        PolicyFactName = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyFactName
        PolicyStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyStatus
        TransportProtocol = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TransportProtocol
        Policy = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Policy
        PolicyEvaluatorType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyEvaluatorType
        UsagePermissionType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UsagePermissionType
        Port = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Port
        Disk = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Disk
      end

      class DevTestLabsManagementClass
        attr_reader :provider_operations, :labs, :global_schedules, :gallery_images, :artifact_sources, :arm_templates, :artifacts, :costs, :custom_images, :formulas, :notification_channels, :schedules, :service_runners, :policy_sets, :users, :environments, :secrets, :virtual_machine_schedules, :virtual_networks, :disks, :virtual_machines, :policies, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DevTestLabs::Mgmt::V2016_05_15::DevTestLabsClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @provider_operations = @client_0.provider_operations
          @labs = @client_0.labs
          @global_schedules = @client_0.global_schedules
          @gallery_images = @client_0.gallery_images
          @artifact_sources = @client_0.artifact_sources
          @arm_templates = @client_0.arm_templates
          @artifacts = @client_0.artifacts
          @costs = @client_0.costs
          @custom_images = @client_0.custom_images
          @formulas = @client_0.formulas
          @notification_channels = @client_0.notification_channels
          @schedules = @client_0.schedules
          @service_runners = @client_0.service_runners
          @policy_sets = @client_0.policy_sets
          @users = @client_0.users
          @environments = @client_0.environments
          @secrets = @client_0.secrets
          @virtual_machine_schedules = @client_0.virtual_machine_schedules
          @virtual_networks = @client_0.virtual_networks
          @disks = @client_0.disks
          @virtual_machines = @client_0.virtual_machines
          @policies = @client_0.policies
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DevTestLabs/Mgmt"
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
          def external_subnet_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExternalSubnetFragment
          end
          def gallery_image_reference
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImageReference
          end
          def day_details
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DayDetails
          end
          def notification_settings
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationSettings
          end
          def shared_public_ip_address_configuration
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SharedPublicIpAddressConfiguration
          end
          def export_resource_usage_parameters
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExportResourceUsageParameters
          end
          def week_details_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WeekDetailsFragment
          end
          def external_subnet
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExternalSubnet
          end
          def hour_details_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HourDetailsFragment
          end
          def week_details
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WeekDetails
          end
          def user_secret_store
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserSecretStore
          end
          def hour_details
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HourDetails
          end
          def artifact_parameter_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactParameterProperties
          end
          def artifact_install_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactInstallProperties
          end
          def response_with_continuation_lab
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLab
          end
          def parameters_value_file_info
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ParametersValueFileInfo
          end
          def response_with_continuation_lab_virtual_machine
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLabVirtualMachine
          end
          def arm_template_info
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplateInfo
          end
          def network_interface_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NetworkInterfaceProperties
          end
          def response_with_continuation_user
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationUser
          end
          def lab_virtual_machine_creation_parameter
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachineCreationParameter
          end
          def artifact_deployment_status_properties_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactDeploymentStatusPropertiesFragment
          end
          def formula_properties_from_vm
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::FormulaPropertiesFromVm
          end
          def artifact_install_properties_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactInstallPropertiesFragment
          end
          def response_with_continuation_lab_vhd
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLabVhd
          end
          def user_secret_store_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserSecretStoreFragment
          end
          def attach_new_data_disk_options
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::AttachNewDataDiskOptions
          end
          def gallery_image_reference_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImageReferenceFragment
          end
          def parameter_info
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ParameterInfo
          end
          def compute_data_disk
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeDataDisk
          end
          def generate_arm_template_request
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateArmTemplateRequest
          end
          def compute_vm_instance_view_status
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmInstanceViewStatus
          end
          def generate_upload_uri_parameter
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateUploadUriParameter
          end
          def compute_vm_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmProperties
          end
          def generate_upload_uri_response
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateUploadUriResponse
          end
          def percentage_cost_threshold_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PercentageCostThresholdProperties
          end
          def identity_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::IdentityProperties
          end
          def windows_os_info
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WindowsOsInfo
          end
          def inbound_nat_rule_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::InboundNatRuleFragment
          end
          def custom_image_properties_from_vm
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImagePropertiesFromVm
          end
          def user_identity_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserIdentityFragment
          end
          def response_with_continuation_schedule
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationSchedule
          end
          def target_cost_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TargetCostProperties
          end
          def detach_data_disk_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DetachDataDiskProperties
          end
          def lab_cost_summary_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCostSummaryProperties
          end
          def response_with_continuation_policy
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationPolicy
          end
          def lab_cost_details_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCostDetailsProperties
          end
          def response_with_continuation_notification_channel
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationNotificationChannel
          end
          def lab_resource_cost_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabResourceCostProperties
          end
          def evaluate_policies_request
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesRequest
          end
          def subnet_override_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetOverrideFragment
          end
          def policy_set_result
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicySetResult
          end
          def subnet_shared_public_ip_address_configuration_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetSharedPublicIpAddressConfigurationFragment
          end
          def lab_vhd
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVhd
          end
          def day_details_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DayDetailsFragment
          end
          def subnet_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetFragment
          end
          def shared_public_ip_address_configuration_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SharedPublicIpAddressConfigurationFragment
          end
          def response_with_continuation_service_runner
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationServiceRunner
          end
          def network_interface_properties_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NetworkInterfacePropertiesFragment
          end
          def artifact_deployment_status_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactDeploymentStatusProperties
          end
          def user_identity
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserIdentity
          end
          def shutdown_notification_content
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ShutdownNotificationContent
          end
          def response_with_continuation_secret
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationSecret
          end
          def retarget_schedule_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::RetargetScheduleProperties
          end
          def bulk_creation_parameters
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::BulkCreationParameters
          end
          def response_with_continuation_virtual_network
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationVirtualNetwork
          end
          def compute_data_disk_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeDataDiskFragment
          end
          def notify_parameters
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotifyParameters
          end
          def compute_vm_properties_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmPropertiesFragment
          end
          def operation_error
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::OperationError
          end
          def linux_os_info
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LinuxOsInfo
          end
          def operation_metadata_display
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::OperationMetadataDisplay
          end
          def data_disk_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DataDiskProperties
          end
          def operation_metadata
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::OperationMetadata
          end
          def environment_deployment_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EnvironmentDeploymentProperties
          end
          def operation_result
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::OperationResult
          end
          def policy_violation
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyViolation
          end
          def subnet_override
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetOverride
          end
          def event_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EventFragment
          end
          def subnet_shared_public_ip_address_configuration
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetSharedPublicIpAddressConfiguration
          end
          def apply_artifacts_request
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplyArtifactsRequest
          end
          def artifact_parameter_properties_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactParameterPropertiesFragment
          end
          def port_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PortFragment
          end
          def provider_operation_result
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ProviderOperationResult
          end
          def cost_threshold_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostThresholdProperties
          end
          def resource
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Resource
          end
          def response_with_continuation_arm_template
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArmTemplate
          end
          def detach_disk_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DetachDiskProperties
          end
          def response_with_continuation_artifact
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArtifact
          end
          def evaluate_policies_response
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesResponse
          end
          def response_with_continuation_artifact_source
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArtifactSource
          end
          def arm_template_parameter_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplateParameterProperties
          end
          def response_with_continuation_custom_image
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationCustomImage
          end
          def compute_vm_instance_view_status_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmInstanceViewStatusFragment
          end
          def response_with_continuation_disk
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationDisk
          end
          def evaluate_policies_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesProperties
          end
          def response_with_continuation_dtl_environment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationDtlEnvironment
          end
          def attach_disk_properties
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::AttachDiskProperties
          end
          def response_with_continuation_formula
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationFormula
          end
          def notification_settings_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationSettingsFragment
          end
          def response_with_continuation_gallery_image
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationGalleryImage
          end
          def custom_image_properties_custom
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImagePropertiesCustom
          end
          def schedule_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ScheduleFragment
          end
          def applicable_schedule
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplicableSchedule
          end
          def arm_template
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplate
          end
          def schedule
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Schedule
          end
          def artifact_source
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactSource
          end
          def artifact
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Artifact
          end
          def applicable_schedule_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplicableScheduleFragment
          end
          def artifact_source_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactSourceFragment
          end
          def custom_image
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImage
          end
          def dtl_environment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DtlEnvironment
          end
          def inbound_nat_rule
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::InboundNatRule
          end
          def lab
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Lab
          end
          def event
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Event
          end
          def formula
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Formula
          end
          def lab_virtual_machine
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachine
          end
          def lab_cost
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCost
          end
          def lab_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabFragment
          end
          def notification_channel_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannelFragment
          end
          def subnet
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Subnet
          end
          def notification_channel
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannel
          end
          def service_runner
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ServiceRunner
          end
          def policy_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyFragment
          end
          def lab_virtual_machine_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachineFragment
          end
          def enable_status
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EnableStatus
          end
          def user_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserFragment
          end
          def gallery_image
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImage
          end
          def secret
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Secret
          end
          def notification_status
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationStatus
          end
          def user
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::User
          end
          def virtual_network_fragment
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualNetworkFragment
          end
          def cost_threshold_status
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostThresholdStatus
          end
          def windows_os_state
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WindowsOsState
          end
          def source_control_type
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SourceControlType
          end
          def storage_type
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::StorageType
          end
          def host_caching_options
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HostCachingOptions
          end
          def notification_channel_event_type
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannelEventType
          end
          def linux_os_state
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LinuxOsState
          end
          def custom_image_os_type
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImageOsType
          end
          def virtual_network
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualNetwork
          end
          def target_cost_status
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TargetCostStatus
          end
          def virtual_machine_creation_source
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualMachineCreationSource
          end
          def file_upload_options
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::FileUploadOptions
          end
          def premium_data_disk
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PremiumDataDisk
          end
          def http_status_code
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HttpStatusCode
          end
          def reporting_cycle_type
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ReportingCycleType
          end
          def cost_type
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostType
          end
          def policy_fact_name
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyFactName
          end
          def policy_status
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyStatus
          end
          def transport_protocol
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TransportProtocol
          end
          def policy
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Policy
          end
          def policy_evaluator_type
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyEvaluatorType
          end
          def usage_permission_type
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UsagePermissionType
          end
          def port
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Port
          end
          def disk
            Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Disk
          end
        end
      end
    end
  end
end
