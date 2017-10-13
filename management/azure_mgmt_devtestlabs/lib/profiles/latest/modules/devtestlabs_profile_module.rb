# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_devtestlabs'

module Azure::DevTestLabs::Profiles::Latest::Mgmt
    Labs = Azure::DevTestLabs::Mgmt::V2016_05_15::Labs
    GlobalSchedules = Azure::DevTestLabs::Mgmt::V2016_05_15::GlobalSchedules
    ArtifactSources = Azure::DevTestLabs::Mgmt::V2016_05_15::ArtifactSources
    ArmTemplates = Azure::DevTestLabs::Mgmt::V2016_05_15::ArmTemplates
    Artifacts = Azure::DevTestLabs::Mgmt::V2016_05_15::Artifacts
    Costs = Azure::DevTestLabs::Mgmt::V2016_05_15::Costs
    CustomImages = Azure::DevTestLabs::Mgmt::V2016_05_15::CustomImages
    Formulas = Azure::DevTestLabs::Mgmt::V2016_05_15::Formulas
    GalleryImages = Azure::DevTestLabs::Mgmt::V2016_05_15::GalleryImages
    NotificationChannels = Azure::DevTestLabs::Mgmt::V2016_05_15::NotificationChannels
    PolicySets = Azure::DevTestLabs::Mgmt::V2016_05_15::PolicySets
    Policies = Azure::DevTestLabs::Mgmt::V2016_05_15::Policies
    Schedules = Azure::DevTestLabs::Mgmt::V2016_05_15::Schedules
    ServiceRunners = Azure::DevTestLabs::Mgmt::V2016_05_15::ServiceRunners
    Users = Azure::DevTestLabs::Mgmt::V2016_05_15::Users
    Disks = Azure::DevTestLabs::Mgmt::V2016_05_15::Disks
    Environments = Azure::DevTestLabs::Mgmt::V2016_05_15::Environments
    Secrets = Azure::DevTestLabs::Mgmt::V2016_05_15::Secrets
    VirtualMachines = Azure::DevTestLabs::Mgmt::V2016_05_15::VirtualMachines
    VirtualMachineSchedules = Azure::DevTestLabs::Mgmt::V2016_05_15::VirtualMachineSchedules
    VirtualNetworks = Azure::DevTestLabs::Mgmt::V2016_05_15::VirtualNetworks

    module Models
      FormulaPropertiesFromVm = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::FormulaPropertiesFromVm
      WeekDetails = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WeekDetails
      ExportResourceUsageParameters = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExportResourceUsageParameters
      ExternalSubnet = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExternalSubnet
      NotificationSettings = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationSettings
      ExternalSubnetFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExternalSubnetFragment
      EvaluatePoliciesResponse = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesResponse
      Event = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Event
      DayDetailsFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DayDetailsFragment
      EventFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EventFragment
      NotificationSettingsFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationSettingsFragment
      HourDetails = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HourDetails
      ResponseWithContinuationServiceRunner = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationServiceRunner
      ArtifactParameterProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactParameterProperties
      ResponseWithContinuationLab = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLab
      ApplyArtifactsRequest = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplyArtifactsRequest
      ResponseWithContinuationLabVhd = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLabVhd
      UserSecretStore = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserSecretStore
      GalleryImageReference = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImageReference
      ArmTemplateParameterProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplateParameterProperties
      InboundNatRule = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::InboundNatRule
      ArtifactDeploymentStatusProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactDeploymentStatusProperties
      SharedPublicIpAddressConfiguration = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SharedPublicIpAddressConfiguration
      ArtifactParameterPropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactParameterPropertiesFragment
      NetworkInterfaceProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NetworkInterfaceProperties
      ResponseWithContinuationUser = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationUser
      LabVirtualMachineCreationParameter = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachineCreationParameter
      AttachDiskProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::AttachDiskProperties
      DayDetails = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DayDetails
      BulkCreationParameters = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::BulkCreationParameters
      UserSecretStoreFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserSecretStoreFragment
      UserIdentityFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserIdentityFragment
      ComputeDataDiskFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeDataDiskFragment
      GalleryImageReferenceFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImageReferenceFragment
      ComputeVmInstanceViewStatusFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmInstanceViewStatusFragment
      ParameterInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ParameterInfo
      ComputeVmPropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmPropertiesFragment
      GenerateArmTemplateRequest = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateArmTemplateRequest
      CostThresholdProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostThresholdProperties
      GenerateUploadUriParameter = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateUploadUriParameter
      LinuxOsInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LinuxOsInfo
      GenerateUploadUriResponse = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateUploadUriResponse
      CustomImagePropertiesCustom = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImagePropertiesCustom
      IdentityProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::IdentityProperties
      DataDiskProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DataDiskProperties
      InboundNatRuleFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::InboundNatRuleFragment
      DetachDiskProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DetachDiskProperties
      SubnetOverrideFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetOverrideFragment
      EnvironmentDeploymentProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EnvironmentDeploymentProperties
      TargetCostProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TargetCostProperties
      EvaluatePoliciesProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesProperties
      LabCostSummaryProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCostSummaryProperties
      PolicyViolation = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyViolation
      LabCostDetailsProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCostDetailsProperties
      WeekDetailsFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WeekDetailsFragment
      LabResourceCostProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabResourceCostProperties
      UserIdentity = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserIdentity
      SubnetSharedPublicIpAddressConfigurationFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetSharedPublicIpAddressConfigurationFragment
      ParametersValueFileInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ParametersValueFileInfo
      SubnetFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetFragment
      ResponseWithContinuationSecret = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationSecret
      LabVhd = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVhd
      ArtifactInstallPropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactInstallPropertiesFragment
      ShutdownNotificationContent = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ShutdownNotificationContent
      AttachNewDataDiskOptions = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::AttachNewDataDiskOptions
      SharedPublicIpAddressConfigurationFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SharedPublicIpAddressConfigurationFragment
      ComputeDataDisk = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeDataDisk
      NetworkInterfacePropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NetworkInterfacePropertiesFragment
      ComputeVmProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmProperties
      RetargetScheduleProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::RetargetScheduleProperties
      WindowsOsInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WindowsOsInfo
      ResponseWithContinuationVirtualNetwork = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationVirtualNetwork
      ResponseWithContinuationPolicy = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationPolicy
      SubnetOverride = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetOverride
      ResponseWithContinuationNotificationChannel = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationNotificationChannel
      NotifyParameters = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotifyParameters
      EvaluatePoliciesRequest = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesRequest
      SubnetSharedPublicIpAddressConfiguration = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetSharedPublicIpAddressConfiguration
      HourDetailsFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HourDetailsFragment
      Subnet = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Subnet
      ArmTemplateInfo = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplateInfo
      Port = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Port
      ResponseWithContinuationSchedule = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationSchedule
      PortFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PortFragment
      ComputeVmInstanceViewStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmInstanceViewStatus
      Resource = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Resource
      CustomImagePropertiesFromVm = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImagePropertiesFromVm
      ResponseWithContinuationArmTemplate = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArmTemplate
      ResponseWithContinuationLabVirtualMachine = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLabVirtualMachine
      ResponseWithContinuationArtifact = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArtifact
      ArtifactInstallProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactInstallProperties
      ResponseWithContinuationArtifactSource = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArtifactSource
      ResponseWithContinuationCustomImage = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationCustomImage
      DetachDataDiskProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DetachDataDiskProperties
      ResponseWithContinuationDisk = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationDisk
      ArtifactDeploymentStatusPropertiesFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactDeploymentStatusPropertiesFragment
      ResponseWithContinuationDtlEnvironment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationDtlEnvironment
      PolicySetResult = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicySetResult
      ResponseWithContinuationFormula = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationFormula
      PercentageCostThresholdProperties = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PercentageCostThresholdProperties
      ResponseWithContinuationGalleryImage = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationGalleryImage
      Schedule = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Schedule
      ApplicableSchedule = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplicableSchedule
      ScheduleFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ScheduleFragment
      ApplicableScheduleFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplicableScheduleFragment
      ArmTemplate = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplate
      Artifact = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Artifact
      ArtifactSource = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactSource
      ArtifactSourceFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactSourceFragment
      CustomImage = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImage
      Disk = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Disk
      DtlEnvironment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DtlEnvironment
      Formula = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Formula
      GalleryImage = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImage
      Lab = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Lab
      LabCost = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCost
      LabFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabFragment
      LabVirtualMachine = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachine
      LabVirtualMachineFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachineFragment
      NotificationChannel = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannel
      NotificationChannelFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannelFragment
      Policy = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Policy
      PolicyFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyFragment
      Secret = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Secret
      ServiceRunner = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ServiceRunner
      User = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::User
      VirtualNetwork = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualNetwork
      UserFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserFragment
      VirtualNetworkFragment = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualNetworkFragment
      EnableStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EnableStatus
      NotificationStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationStatus
      SourceControlType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SourceControlType
      StorageType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::StorageType
      CostThresholdStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostThresholdStatus
      WindowsOsState = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WindowsOsState
      LinuxOsState = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LinuxOsState
      CustomImageOsType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImageOsType
      HostCachingOptions = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HostCachingOptions
      NotificationChannelEventType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannelEventType
      TransportProtocol = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TransportProtocol
      VirtualMachineCreationSource = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualMachineCreationSource
      FileUploadOptions = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::FileUploadOptions
      PremiumDataDisk = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PremiumDataDisk
      TargetCostStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TargetCostStatus
      ReportingCycleType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ReportingCycleType
      CostType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostType
      PolicyStatus = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyStatus
      PolicyFactName = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyFactName
      PolicyEvaluatorType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyEvaluatorType
      UsagePermissionType = Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UsagePermissionType
    end

    #
    # DevTestLabs
    #
    class DevTestLabsClass
      attr_reader :labs, :global_schedules, :artifact_sources, :arm_templates, :artifacts, :costs, :custom_images, :formulas, :gallery_images, :notification_channels, :policy_sets, :policies, :schedules, :service_runners, :users, :disks, :environments, :secrets, :virtual_machines, :virtual_machine_schedules, :virtual_networks, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::DevTestLabs::Mgmt::V2016_05_15::DevTestLabsClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @labs = client_0.labs
        @global_schedules = client_0.global_schedules
        @artifact_sources = client_0.artifact_sources
        @arm_templates = client_0.arm_templates
        @artifacts = client_0.artifacts
        @costs = client_0.costs
        @custom_images = client_0.custom_images
        @formulas = client_0.formulas
        @gallery_images = client_0.gallery_images
        @notification_channels = client_0.notification_channels
        @policy_sets = client_0.policy_sets
        @policies = client_0.policies
        @schedules = client_0.schedules
        @service_runners = client_0.service_runners
        @users = client_0.users
        @disks = client_0.disks
        @environments = client_0.environments
        @secrets = client_0.secrets
        @virtual_machines = client_0.virtual_machines
        @virtual_machine_schedules = client_0.virtual_machine_schedules
        @virtual_networks = client_0.virtual_networks

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-05-15')
        case version
          when '2016-05-15'
            client = Azure::DevTestLabs::Mgmt::V2016_05_15::DevTestLabsClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def formula_properties_from_vm
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::FormulaPropertiesFromVm
        end
        def week_details
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WeekDetails
        end
        def export_resource_usage_parameters
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExportResourceUsageParameters
        end
        def external_subnet
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExternalSubnet
        end
        def notification_settings
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationSettings
        end
        def external_subnet_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ExternalSubnetFragment
        end
        def evaluate_policies_response
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesResponse
        end
        def event
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Event
        end
        def day_details_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DayDetailsFragment
        end
        def event_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EventFragment
        end
        def notification_settings_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationSettingsFragment
        end
        def hour_details
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HourDetails
        end
        def response_with_continuation_service_runner
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationServiceRunner
        end
        def artifact_parameter_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactParameterProperties
        end
        def response_with_continuation_lab
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLab
        end
        def apply_artifacts_request
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplyArtifactsRequest
        end
        def response_with_continuation_lab_vhd
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLabVhd
        end
        def user_secret_store
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserSecretStore
        end
        def gallery_image_reference
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImageReference
        end
        def arm_template_parameter_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplateParameterProperties
        end
        def inbound_nat_rule
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::InboundNatRule
        end
        def artifact_deployment_status_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactDeploymentStatusProperties
        end
        def shared_public_ip_address_configuration
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SharedPublicIpAddressConfiguration
        end
        def artifact_parameter_properties_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactParameterPropertiesFragment
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
        def attach_disk_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::AttachDiskProperties
        end
        def day_details
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DayDetails
        end
        def bulk_creation_parameters
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::BulkCreationParameters
        end
        def user_secret_store_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserSecretStoreFragment
        end
        def user_identity_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserIdentityFragment
        end
        def compute_data_disk_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeDataDiskFragment
        end
        def gallery_image_reference_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImageReferenceFragment
        end
        def compute_vm_instance_view_status_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmInstanceViewStatusFragment
        end
        def parameter_info
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ParameterInfo
        end
        def compute_vm_properties_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmPropertiesFragment
        end
        def generate_arm_template_request
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateArmTemplateRequest
        end
        def cost_threshold_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostThresholdProperties
        end
        def generate_upload_uri_parameter
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateUploadUriParameter
        end
        def linux_os_info
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LinuxOsInfo
        end
        def generate_upload_uri_response
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GenerateUploadUriResponse
        end
        def custom_image_properties_custom
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImagePropertiesCustom
        end
        def identity_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::IdentityProperties
        end
        def data_disk_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DataDiskProperties
        end
        def inbound_nat_rule_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::InboundNatRuleFragment
        end
        def detach_disk_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DetachDiskProperties
        end
        def subnet_override_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetOverrideFragment
        end
        def environment_deployment_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EnvironmentDeploymentProperties
        end
        def target_cost_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TargetCostProperties
        end
        def evaluate_policies_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesProperties
        end
        def lab_cost_summary_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCostSummaryProperties
        end
        def policy_violation
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyViolation
        end
        def lab_cost_details_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCostDetailsProperties
        end
        def week_details_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WeekDetailsFragment
        end
        def lab_resource_cost_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabResourceCostProperties
        end
        def user_identity
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserIdentity
        end
        def subnet_shared_public_ip_address_configuration_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetSharedPublicIpAddressConfigurationFragment
        end
        def parameters_value_file_info
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ParametersValueFileInfo
        end
        def subnet_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetFragment
        end
        def response_with_continuation_secret
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationSecret
        end
        def lab_vhd
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVhd
        end
        def artifact_install_properties_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactInstallPropertiesFragment
        end
        def shutdown_notification_content
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ShutdownNotificationContent
        end
        def attach_new_data_disk_options
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::AttachNewDataDiskOptions
        end
        def shared_public_ip_address_configuration_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SharedPublicIpAddressConfigurationFragment
        end
        def compute_data_disk
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeDataDisk
        end
        def network_interface_properties_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NetworkInterfacePropertiesFragment
        end
        def compute_vm_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmProperties
        end
        def retarget_schedule_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::RetargetScheduleProperties
        end
        def windows_os_info
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WindowsOsInfo
        end
        def response_with_continuation_virtual_network
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationVirtualNetwork
        end
        def response_with_continuation_policy
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationPolicy
        end
        def subnet_override
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetOverride
        end
        def response_with_continuation_notification_channel
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationNotificationChannel
        end
        def notify_parameters
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotifyParameters
        end
        def evaluate_policies_request
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EvaluatePoliciesRequest
        end
        def subnet_shared_public_ip_address_configuration
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SubnetSharedPublicIpAddressConfiguration
        end
        def hour_details_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HourDetailsFragment
        end
        def subnet
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Subnet
        end
        def arm_template_info
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplateInfo
        end
        def port
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Port
        end
        def response_with_continuation_schedule
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationSchedule
        end
        def port_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PortFragment
        end
        def compute_vm_instance_view_status
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ComputeVmInstanceViewStatus
        end
        def resource
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Resource
        end
        def custom_image_properties_from_vm
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImagePropertiesFromVm
        end
        def response_with_continuation_arm_template
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArmTemplate
        end
        def response_with_continuation_lab_virtual_machine
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationLabVirtualMachine
        end
        def response_with_continuation_artifact
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArtifact
        end
        def artifact_install_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactInstallProperties
        end
        def response_with_continuation_artifact_source
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationArtifactSource
        end
        def response_with_continuation_custom_image
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationCustomImage
        end
        def detach_data_disk_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DetachDataDiskProperties
        end
        def response_with_continuation_disk
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationDisk
        end
        def artifact_deployment_status_properties_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactDeploymentStatusPropertiesFragment
        end
        def response_with_continuation_dtl_environment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationDtlEnvironment
        end
        def policy_set_result
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicySetResult
        end
        def response_with_continuation_formula
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationFormula
        end
        def percentage_cost_threshold_properties
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PercentageCostThresholdProperties
        end
        def response_with_continuation_gallery_image
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ResponseWithContinuationGalleryImage
        end
        def schedule
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Schedule
        end
        def applicable_schedule
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplicableSchedule
        end
        def schedule_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ScheduleFragment
        end
        def applicable_schedule_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ApplicableScheduleFragment
        end
        def arm_template
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArmTemplate
        end
        def artifact
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Artifact
        end
        def artifact_source
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactSource
        end
        def artifact_source_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ArtifactSourceFragment
        end
        def custom_image
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImage
        end
        def disk
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Disk
        end
        def dtl_environment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::DtlEnvironment
        end
        def formula
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Formula
        end
        def gallery_image
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::GalleryImage
        end
        def lab
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Lab
        end
        def lab_cost
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabCost
        end
        def lab_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabFragment
        end
        def lab_virtual_machine
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachine
        end
        def lab_virtual_machine_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LabVirtualMachineFragment
        end
        def notification_channel
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannel
        end
        def notification_channel_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannelFragment
        end
        def policy
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Policy
        end
        def policy_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyFragment
        end
        def secret
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::Secret
        end
        def service_runner
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ServiceRunner
        end
        def user
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::User
        end
        def virtual_network
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualNetwork
        end
        def user_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UserFragment
        end
        def virtual_network_fragment
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::VirtualNetworkFragment
        end
        def enable_status
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::EnableStatus
        end
        def notification_status
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationStatus
        end
        def source_control_type
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::SourceControlType
        end
        def storage_type
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::StorageType
        end
        def cost_threshold_status
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostThresholdStatus
        end
        def windows_os_state
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::WindowsOsState
        end
        def linux_os_state
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::LinuxOsState
        end
        def custom_image_os_type
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CustomImageOsType
        end
        def host_caching_options
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::HostCachingOptions
        end
        def notification_channel_event_type
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::NotificationChannelEventType
        end
        def transport_protocol
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TransportProtocol
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
        def target_cost_status
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::TargetCostStatus
        end
        def reporting_cycle_type
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::ReportingCycleType
        end
        def cost_type
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::CostType
        end
        def policy_status
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyStatus
        end
        def policy_fact_name
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyFactName
        end
        def policy_evaluator_type
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::PolicyEvaluatorType
        end
        def usage_permission_type
          Azure::DevTestLabs::Mgmt::V2016_05_15::Models::UsagePermissionType
        end
      end
    end
end
