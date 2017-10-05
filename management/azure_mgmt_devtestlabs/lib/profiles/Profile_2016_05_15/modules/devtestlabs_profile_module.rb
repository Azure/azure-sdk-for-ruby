# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_devtestlabs'


module Azure::Profiles::DevTestLabsModule::Management::Profile_2016_05_15
  module DevTestLabs
    Labs = Azure::ARM::DevTestLabs::Api_2016_05_15::Labs
    GlobalSchedules = Azure::ARM::DevTestLabs::Api_2016_05_15::GlobalSchedules
    ArtifactSources = Azure::ARM::DevTestLabs::Api_2016_05_15::ArtifactSources
    ArmTemplates = Azure::ARM::DevTestLabs::Api_2016_05_15::ArmTemplates
    Artifacts = Azure::ARM::DevTestLabs::Api_2016_05_15::Artifacts
    Costs = Azure::ARM::DevTestLabs::Api_2016_05_15::Costs
    CustomImages = Azure::ARM::DevTestLabs::Api_2016_05_15::CustomImages
    Formulas = Azure::ARM::DevTestLabs::Api_2016_05_15::Formulas
    GalleryImages = Azure::ARM::DevTestLabs::Api_2016_05_15::GalleryImages
    NotificationChannels = Azure::ARM::DevTestLabs::Api_2016_05_15::NotificationChannels
    PolicySets = Azure::ARM::DevTestLabs::Api_2016_05_15::PolicySets
    Policies = Azure::ARM::DevTestLabs::Api_2016_05_15::Policies
    Schedules = Azure::ARM::DevTestLabs::Api_2016_05_15::Schedules
    ServiceRunners = Azure::ARM::DevTestLabs::Api_2016_05_15::ServiceRunners
    Users = Azure::ARM::DevTestLabs::Api_2016_05_15::Users
    Disks = Azure::ARM::DevTestLabs::Api_2016_05_15::Disks
    Environments = Azure::ARM::DevTestLabs::Api_2016_05_15::Environments
    Secrets = Azure::ARM::DevTestLabs::Api_2016_05_15::Secrets
    VirtualMachines = Azure::ARM::DevTestLabs::Api_2016_05_15::VirtualMachines
    VirtualMachineSchedules = Azure::ARM::DevTestLabs::Api_2016_05_15::VirtualMachineSchedules
    VirtualNetworks = Azure::ARM::DevTestLabs::Api_2016_05_15::VirtualNetworks
    DevTestLabsClient = Azure::ARM::DevTestLabs::Api_2016_05_15::DevTestLabsClient

    module Models
      FormulaPropertiesFromVm = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::FormulaPropertiesFromVm
      WeekDetails = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::WeekDetails
      ExportResourceUsageParameters = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ExportResourceUsageParameters
      ExternalSubnet = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ExternalSubnet
      NotificationSettings = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationSettings
      ExternalSubnetFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ExternalSubnetFragment
      EvaluatePoliciesResponse = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EvaluatePoliciesResponse
      Event = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Event
      DayDetailsFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DayDetailsFragment
      EventFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EventFragment
      NotificationSettingsFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationSettingsFragment
      HourDetails = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::HourDetails
      ResponseWithContinuationServiceRunner = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationServiceRunner
      ArtifactParameterProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactParameterProperties
      ResponseWithContinuationLab = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationLab
      ApplyArtifactsRequest = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ApplyArtifactsRequest
      ResponseWithContinuationLabVhd = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationLabVhd
      UserSecretStore = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserSecretStore
      GalleryImageReference = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GalleryImageReference
      ArmTemplateParameterProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArmTemplateParameterProperties
      InboundNatRule = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::InboundNatRule
      ArtifactDeploymentStatusProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactDeploymentStatusProperties
      SharedPublicIpAddressConfiguration = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SharedPublicIpAddressConfiguration
      ArtifactParameterPropertiesFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactParameterPropertiesFragment
      NetworkInterfaceProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NetworkInterfaceProperties
      ResponseWithContinuationUser = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationUser
      LabVirtualMachineCreationParameter = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabVirtualMachineCreationParameter
      AttachDiskProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::AttachDiskProperties
      DayDetails = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DayDetails
      BulkCreationParameters = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::BulkCreationParameters
      UserSecretStoreFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserSecretStoreFragment
      UserIdentityFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserIdentityFragment
      ComputeDataDiskFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeDataDiskFragment
      GalleryImageReferenceFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GalleryImageReferenceFragment
      ComputeVmInstanceViewStatusFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeVmInstanceViewStatusFragment
      ParameterInfo = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ParameterInfo
      ComputeVmPropertiesFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeVmPropertiesFragment
      GenerateArmTemplateRequest = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GenerateArmTemplateRequest
      CostThresholdProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CostThresholdProperties
      GenerateUploadUriParameter = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GenerateUploadUriParameter
      LinuxOsInfo = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LinuxOsInfo
      GenerateUploadUriResponse = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GenerateUploadUriResponse
      CustomImagePropertiesCustom = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CustomImagePropertiesCustom
      IdentityProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::IdentityProperties
      DataDiskProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DataDiskProperties
      InboundNatRuleFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::InboundNatRuleFragment
      DetachDiskProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DetachDiskProperties
      SubnetOverrideFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetOverrideFragment
      EnvironmentDeploymentProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EnvironmentDeploymentProperties
      TargetCostProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::TargetCostProperties
      EvaluatePoliciesProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EvaluatePoliciesProperties
      LabCostSummaryProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabCostSummaryProperties
      PolicyViolation = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyViolation
      LabCostDetailsProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabCostDetailsProperties
      WeekDetailsFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::WeekDetailsFragment
      LabResourceCostProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabResourceCostProperties
      UserIdentity = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserIdentity
      SubnetSharedPublicIpAddressConfigurationFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetSharedPublicIpAddressConfigurationFragment
      ParametersValueFileInfo = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ParametersValueFileInfo
      SubnetFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetFragment
      ResponseWithContinuationSecret = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationSecret
      LabVhd = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabVhd
      ArtifactInstallPropertiesFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactInstallPropertiesFragment
      ShutdownNotificationContent = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ShutdownNotificationContent
      AttachNewDataDiskOptions = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::AttachNewDataDiskOptions
      SharedPublicIpAddressConfigurationFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SharedPublicIpAddressConfigurationFragment
      ComputeDataDisk = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeDataDisk
      NetworkInterfacePropertiesFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NetworkInterfacePropertiesFragment
      ComputeVmProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeVmProperties
      RetargetScheduleProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::RetargetScheduleProperties
      WindowsOsInfo = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::WindowsOsInfo
      ResponseWithContinuationVirtualNetwork = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationVirtualNetwork
      ResponseWithContinuationPolicy = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationPolicy
      SubnetOverride = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetOverride
      ResponseWithContinuationNotificationChannel = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationNotificationChannel
      NotifyParameters = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotifyParameters
      EvaluatePoliciesRequest = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EvaluatePoliciesRequest
      SubnetSharedPublicIpAddressConfiguration = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetSharedPublicIpAddressConfiguration
      HourDetailsFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::HourDetailsFragment
      Subnet = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Subnet
      ArmTemplateInfo = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArmTemplateInfo
      Port = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Port
      ResponseWithContinuationSchedule = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationSchedule
      PortFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PortFragment
      ComputeVmInstanceViewStatus = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeVmInstanceViewStatus
      CustomImagePropertiesFromVm = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CustomImagePropertiesFromVm
      ResponseWithContinuationArmTemplate = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationArmTemplate
      ResponseWithContinuationLabVirtualMachine = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationLabVirtualMachine
      ResponseWithContinuationArtifact = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationArtifact
      ArtifactInstallProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactInstallProperties
      ResponseWithContinuationArtifactSource = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationArtifactSource
      ResponseWithContinuationCustomImage = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationCustomImage
      DetachDataDiskProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DetachDataDiskProperties
      ResponseWithContinuationDisk = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationDisk
      ArtifactDeploymentStatusPropertiesFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactDeploymentStatusPropertiesFragment
      ResponseWithContinuationDtlEnvironment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationDtlEnvironment
      PolicySetResult = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicySetResult
      ResponseWithContinuationFormula = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationFormula
      PercentageCostThresholdProperties = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PercentageCostThresholdProperties
      ResponseWithContinuationGalleryImage = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationGalleryImage
      Schedule = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Schedule
      ApplicableSchedule = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ApplicableSchedule
      ScheduleFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ScheduleFragment
      ApplicableScheduleFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ApplicableScheduleFragment
      ArmTemplate = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArmTemplate
      Artifact = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Artifact
      ArtifactSource = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactSource
      ArtifactSourceFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactSourceFragment
      CustomImage = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CustomImage
      Disk = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Disk
      DtlEnvironment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DtlEnvironment
      Formula = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Formula
      GalleryImage = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GalleryImage
      Lab = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Lab
      LabCost = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabCost
      LabFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabFragment
      LabVirtualMachine = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabVirtualMachine
      LabVirtualMachineFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabVirtualMachineFragment
      NotificationChannel = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationChannel
      NotificationChannelFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationChannelFragment
      Policy = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Policy
      PolicyFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyFragment
      Secret = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Secret
      ServiceRunner = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ServiceRunner
      User = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::User
      VirtualNetwork = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::VirtualNetwork
      UserFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserFragment
      VirtualNetworkFragment = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::VirtualNetworkFragment
      EnableStatus = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EnableStatus
      NotificationStatus = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationStatus
      SourceControlType = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SourceControlType
      StorageType = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::StorageType
      CostThresholdStatus = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CostThresholdStatus
      WindowsOsState = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::WindowsOsState
      LinuxOsState = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LinuxOsState
      CustomImageOsType = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CustomImageOsType
      HostCachingOptions = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::HostCachingOptions
      NotificationChannelEventType = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationChannelEventType
      TransportProtocol = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::TransportProtocol
      VirtualMachineCreationSource = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::VirtualMachineCreationSource
      FileUploadOptions = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::FileUploadOptions
      PremiumDataDisk = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PremiumDataDisk
      TargetCostStatus = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::TargetCostStatus
      ReportingCycleType = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ReportingCycleType
      CostType = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CostType
      PolicyStatus = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyStatus
      PolicyFactName = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyFactName
      PolicyEvaluatorType = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyEvaluatorType
      UsagePermissionType = Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UsagePermissionType
    end

    #
    # DevTestLabs
    #
    class DevTestLabsClass
      attr_accessor :labs, :global_schedules, :artifact_sources, :arm_templates, :artifacts, :costs, :custom_images, :formulas, :gallery_images, :notification_channels, :policy_sets, :policies, :schedules, :service_runners, :users, :disks, :environments, :secrets, :virtual_machines, :virtual_machine_schedules, :virtual_networks, :dev_test_labs_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.labs = Azure::ARM::DevTestLabs::Api_2016_05_15::Labs.new(client)
        self.global_schedules = Azure::ARM::DevTestLabs::Api_2016_05_15::GlobalSchedules.new(client)
        self.artifact_sources = Azure::ARM::DevTestLabs::Api_2016_05_15::ArtifactSources.new(client)
        self.arm_templates = Azure::ARM::DevTestLabs::Api_2016_05_15::ArmTemplates.new(client)
        self.artifacts = Azure::ARM::DevTestLabs::Api_2016_05_15::Artifacts.new(client)
        self.costs = Azure::ARM::DevTestLabs::Api_2016_05_15::Costs.new(client)
        self.custom_images = Azure::ARM::DevTestLabs::Api_2016_05_15::CustomImages.new(client)
        self.formulas = Azure::ARM::DevTestLabs::Api_2016_05_15::Formulas.new(client)
        self.gallery_images = Azure::ARM::DevTestLabs::Api_2016_05_15::GalleryImages.new(client)
        self.notification_channels = Azure::ARM::DevTestLabs::Api_2016_05_15::NotificationChannels.new(client)
        self.policy_sets = Azure::ARM::DevTestLabs::Api_2016_05_15::PolicySets.new(client)
        self.policies = Azure::ARM::DevTestLabs::Api_2016_05_15::Policies.new(client)
        self.schedules = Azure::ARM::DevTestLabs::Api_2016_05_15::Schedules.new(client)
        self.service_runners = Azure::ARM::DevTestLabs::Api_2016_05_15::ServiceRunners.new(client)
        self.users = Azure::ARM::DevTestLabs::Api_2016_05_15::Users.new(client)
        self.disks = Azure::ARM::DevTestLabs::Api_2016_05_15::Disks.new(client)
        self.environments = Azure::ARM::DevTestLabs::Api_2016_05_15::Environments.new(client)
        self.secrets = Azure::ARM::DevTestLabs::Api_2016_05_15::Secrets.new(client)
        self.virtual_machines = Azure::ARM::DevTestLabs::Api_2016_05_15::VirtualMachines.new(client)
        self.virtual_machine_schedules = Azure::ARM::DevTestLabs::Api_2016_05_15::VirtualMachineSchedules.new(client)
        self.virtual_networks = Azure::ARM::DevTestLabs::Api_2016_05_15::VirtualNetworks.new(client)
        self.dev_test_labs_client = Azure::ARM::DevTestLabs::Api_2016_05_15::DevTestLabsClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def formula_properties_from_vm
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::FormulaPropertiesFromVm
        end
        def week_details
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::WeekDetails
        end
        def export_resource_usage_parameters
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ExportResourceUsageParameters
        end
        def external_subnet
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ExternalSubnet
        end
        def notification_settings
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationSettings
        end
        def external_subnet_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ExternalSubnetFragment
        end
        def evaluate_policies_response
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EvaluatePoliciesResponse
        end
        def event
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Event
        end
        def day_details_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DayDetailsFragment
        end
        def event_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EventFragment
        end
        def notification_settings_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationSettingsFragment
        end
        def hour_details
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::HourDetails
        end
        def response_with_continuation_service_runner
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationServiceRunner
        end
        def artifact_parameter_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactParameterProperties
        end
        def response_with_continuation_lab
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationLab
        end
        def apply_artifacts_request
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ApplyArtifactsRequest
        end
        def response_with_continuation_lab_vhd
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationLabVhd
        end
        def user_secret_store
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserSecretStore
        end
        def gallery_image_reference
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GalleryImageReference
        end
        def arm_template_parameter_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArmTemplateParameterProperties
        end
        def inbound_nat_rule
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::InboundNatRule
        end
        def artifact_deployment_status_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactDeploymentStatusProperties
        end
        def shared_public_ip_address_configuration
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SharedPublicIpAddressConfiguration
        end
        def artifact_parameter_properties_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactParameterPropertiesFragment
        end
        def network_interface_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NetworkInterfaceProperties
        end
        def response_with_continuation_user
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationUser
        end
        def lab_virtual_machine_creation_parameter
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabVirtualMachineCreationParameter
        end
        def attach_disk_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::AttachDiskProperties
        end
        def day_details
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DayDetails
        end
        def bulk_creation_parameters
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::BulkCreationParameters
        end
        def user_secret_store_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserSecretStoreFragment
        end
        def user_identity_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserIdentityFragment
        end
        def compute_data_disk_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeDataDiskFragment
        end
        def gallery_image_reference_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GalleryImageReferenceFragment
        end
        def compute_vm_instance_view_status_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeVmInstanceViewStatusFragment
        end
        def parameter_info
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ParameterInfo
        end
        def compute_vm_properties_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeVmPropertiesFragment
        end
        def generate_arm_template_request
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GenerateArmTemplateRequest
        end
        def cost_threshold_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CostThresholdProperties
        end
        def generate_upload_uri_parameter
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GenerateUploadUriParameter
        end
        def linux_os_info
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LinuxOsInfo
        end
        def generate_upload_uri_response
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GenerateUploadUriResponse
        end
        def custom_image_properties_custom
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CustomImagePropertiesCustom
        end
        def identity_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::IdentityProperties
        end
        def data_disk_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DataDiskProperties
        end
        def inbound_nat_rule_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::InboundNatRuleFragment
        end
        def detach_disk_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DetachDiskProperties
        end
        def subnet_override_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetOverrideFragment
        end
        def environment_deployment_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EnvironmentDeploymentProperties
        end
        def target_cost_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::TargetCostProperties
        end
        def evaluate_policies_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EvaluatePoliciesProperties
        end
        def lab_cost_summary_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabCostSummaryProperties
        end
        def policy_violation
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyViolation
        end
        def lab_cost_details_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabCostDetailsProperties
        end
        def week_details_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::WeekDetailsFragment
        end
        def lab_resource_cost_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabResourceCostProperties
        end
        def user_identity
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserIdentity
        end
        def subnet_shared_public_ip_address_configuration_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetSharedPublicIpAddressConfigurationFragment
        end
        def parameters_value_file_info
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ParametersValueFileInfo
        end
        def subnet_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetFragment
        end
        def response_with_continuation_secret
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationSecret
        end
        def lab_vhd
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabVhd
        end
        def artifact_install_properties_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactInstallPropertiesFragment
        end
        def shutdown_notification_content
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ShutdownNotificationContent
        end
        def attach_new_data_disk_options
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::AttachNewDataDiskOptions
        end
        def shared_public_ip_address_configuration_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SharedPublicIpAddressConfigurationFragment
        end
        def compute_data_disk
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeDataDisk
        end
        def network_interface_properties_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NetworkInterfacePropertiesFragment
        end
        def compute_vm_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeVmProperties
        end
        def retarget_schedule_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::RetargetScheduleProperties
        end
        def windows_os_info
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::WindowsOsInfo
        end
        def response_with_continuation_virtual_network
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationVirtualNetwork
        end
        def response_with_continuation_policy
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationPolicy
        end
        def subnet_override
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetOverride
        end
        def response_with_continuation_notification_channel
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationNotificationChannel
        end
        def notify_parameters
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotifyParameters
        end
        def evaluate_policies_request
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EvaluatePoliciesRequest
        end
        def subnet_shared_public_ip_address_configuration
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SubnetSharedPublicIpAddressConfiguration
        end
        def hour_details_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::HourDetailsFragment
        end
        def subnet
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Subnet
        end
        def arm_template_info
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArmTemplateInfo
        end
        def port
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Port
        end
        def response_with_continuation_schedule
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationSchedule
        end
        def port_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PortFragment
        end
        def compute_vm_instance_view_status
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ComputeVmInstanceViewStatus
        end
        def custom_image_properties_from_vm
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CustomImagePropertiesFromVm
        end
        def response_with_continuation_arm_template
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationArmTemplate
        end
        def response_with_continuation_lab_virtual_machine
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationLabVirtualMachine
        end
        def response_with_continuation_artifact
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationArtifact
        end
        def artifact_install_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactInstallProperties
        end
        def response_with_continuation_artifact_source
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationArtifactSource
        end
        def response_with_continuation_custom_image
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationCustomImage
        end
        def detach_data_disk_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DetachDataDiskProperties
        end
        def response_with_continuation_disk
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationDisk
        end
        def artifact_deployment_status_properties_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactDeploymentStatusPropertiesFragment
        end
        def response_with_continuation_dtl_environment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationDtlEnvironment
        end
        def policy_set_result
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicySetResult
        end
        def response_with_continuation_formula
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationFormula
        end
        def percentage_cost_threshold_properties
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PercentageCostThresholdProperties
        end
        def response_with_continuation_gallery_image
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ResponseWithContinuationGalleryImage
        end
        def schedule
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Schedule
        end
        def applicable_schedule
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ApplicableSchedule
        end
        def schedule_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ScheduleFragment
        end
        def applicable_schedule_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ApplicableScheduleFragment
        end
        def arm_template
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArmTemplate
        end
        def artifact
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Artifact
        end
        def artifact_source
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactSource
        end
        def artifact_source_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ArtifactSourceFragment
        end
        def custom_image
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CustomImage
        end
        def disk
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Disk
        end
        def dtl_environment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::DtlEnvironment
        end
        def formula
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Formula
        end
        def gallery_image
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::GalleryImage
        end
        def lab
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Lab
        end
        def lab_cost
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabCost
        end
        def lab_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabFragment
        end
        def lab_virtual_machine
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabVirtualMachine
        end
        def lab_virtual_machine_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LabVirtualMachineFragment
        end
        def notification_channel
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationChannel
        end
        def notification_channel_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationChannelFragment
        end
        def policy
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Policy
        end
        def policy_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyFragment
        end
        def secret
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::Secret
        end
        def service_runner
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ServiceRunner
        end
        def user
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::User
        end
        def virtual_network
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::VirtualNetwork
        end
        def user_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UserFragment
        end
        def virtual_network_fragment
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::VirtualNetworkFragment
        end
        def enable_status
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::EnableStatus
        end
        def notification_status
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationStatus
        end
        def source_control_type
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::SourceControlType
        end
        def storage_type
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::StorageType
        end
        def cost_threshold_status
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CostThresholdStatus
        end
        def windows_os_state
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::WindowsOsState
        end
        def linux_os_state
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::LinuxOsState
        end
        def custom_image_os_type
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CustomImageOsType
        end
        def host_caching_options
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::HostCachingOptions
        end
        def notification_channel_event_type
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::NotificationChannelEventType
        end
        def transport_protocol
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::TransportProtocol
        end
        def virtual_machine_creation_source
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::VirtualMachineCreationSource
        end
        def file_upload_options
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::FileUploadOptions
        end
        def premium_data_disk
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PremiumDataDisk
        end
        def target_cost_status
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::TargetCostStatus
        end
        def reporting_cycle_type
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::ReportingCycleType
        end
        def cost_type
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::CostType
        end
        def policy_status
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyStatus
        end
        def policy_fact_name
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyFactName
        end
        def policy_evaluator_type
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::PolicyEvaluatorType
        end
        def usage_permission_type
          Azure::ARM::DevTestLabs::Api_2016_05_15::Models::UsagePermissionType
        end
      end
    end
  end
end
