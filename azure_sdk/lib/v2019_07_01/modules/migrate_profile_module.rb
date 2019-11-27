# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_migrate'

module Azure::Profiles::V2019_07_01
  module Migrate
    module Mgmt
      Location = Azure::Migrate::Mgmt::V2018_02_02::Location
      AssessmentOptions = Azure::Migrate::Mgmt::V2018_02_02::AssessmentOptions
      Projects = Azure::Migrate::Mgmt::V2018_02_02::Projects
      Machines = Azure::Migrate::Mgmt::V2018_02_02::Machines
      Groups = Azure::Migrate::Mgmt::V2018_02_02::Groups
      Assessments = Azure::Migrate::Mgmt::V2018_02_02::Assessments
      AssessedMachines = Azure::Migrate::Mgmt::V2018_02_02::AssessedMachines
      Operations = Azure::Migrate::Mgmt::V2018_02_02::Operations

      module Models
        DownloadUrl = Azure::Migrate::Mgmt::V2018_02_02::Models::DownloadUrl
        Project = Azure::Migrate::Mgmt::V2018_02_02::Models::Project
        VmFamily = Azure::Migrate::Mgmt::V2018_02_02::Models::VmFamily
        Assessment = Azure::Migrate::Mgmt::V2018_02_02::Models::Assessment
        ProjectResultList = Azure::Migrate::Mgmt::V2018_02_02::Models::ProjectResultList
        NetworkAdapter = Azure::Migrate::Mgmt::V2018_02_02::Models::NetworkAdapter
        MachineResultList = Azure::Migrate::Mgmt::V2018_02_02::Models::MachineResultList
        AssessedDisk = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedDisk
        GroupResultList = Azure::Migrate::Mgmt::V2018_02_02::Models::GroupResultList
        AssessedMachine = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedMachine
        AssessedMachineResultList = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedMachineResultList
        OperationDisplay = Azure::Migrate::Mgmt::V2018_02_02::Models::OperationDisplay
        AssessmentResultList = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentResultList
        Group = Azure::Migrate::Mgmt::V2018_02_02::Models::Group
        OperationResultList = Azure::Migrate::Mgmt::V2018_02_02::Models::OperationResultList
        Machine = Azure::Migrate::Mgmt::V2018_02_02::Models::Machine
        AssessmentOptionsResultList = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentOptionsResultList
        ProjectKey = Azure::Migrate::Mgmt::V2018_02_02::Models::ProjectKey
        Disk = Azure::Migrate::Mgmt::V2018_02_02::Models::Disk
        Operation = Azure::Migrate::Mgmt::V2018_02_02::Models::Operation
        CheckNameAvailabilityParameters = Azure::Migrate::Mgmt::V2018_02_02::Models::CheckNameAvailabilityParameters
        AssessedNetworkAdapter = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedNetworkAdapter
        CheckNameAvailabilityResult = Azure::Migrate::Mgmt::V2018_02_02::Models::CheckNameAvailabilityResult
        DiscoveryStatus = Azure::Migrate::Mgmt::V2018_02_02::Models::DiscoveryStatus
        ProvisioningState = Azure::Migrate::Mgmt::V2018_02_02::Models::ProvisioningState
        AzureLocation = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureLocation
        AzureOfferCode = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureOfferCode
        AzurePricingTier = Azure::Migrate::Mgmt::V2018_02_02::Models::AzurePricingTier
        AzureStorageRedundancy = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureStorageRedundancy
        Percentile = Azure::Migrate::Mgmt::V2018_02_02::Models::Percentile
        TimeRange = Azure::Migrate::Mgmt::V2018_02_02::Models::TimeRange
        AssessmentStage = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentStage
        Currency = Azure::Migrate::Mgmt::V2018_02_02::Models::Currency
        AzureHybridUseBenefit = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureHybridUseBenefit
        AssessmentSizingCriterion = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentSizingCriterion
        AssessmentStatus = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentStatus
        MachineBootType = Azure::Migrate::Mgmt::V2018_02_02::Models::MachineBootType
        AzureDiskType = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureDiskType
        AzureDiskSize = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureDiskSize
        CloudSuitability = Azure::Migrate::Mgmt::V2018_02_02::Models::CloudSuitability
        AzureDiskSuitabilityExplanation = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureDiskSuitabilityExplanation
        AzureNetworkAdapterSuitabilityExplanation = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureNetworkAdapterSuitabilityExplanation
        AzureVmSize = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureVmSize
        AzureVmSuitabilityExplanation = Azure::Migrate::Mgmt::V2018_02_02::Models::AzureVmSuitabilityExplanation
        NameAvailabilityReason = Azure::Migrate::Mgmt::V2018_02_02::Models::NameAvailabilityReason
      end

      class MigrateManagementClass
        attr_reader :location, :assessment_options, :projects, :machines, :groups, :assessments, :assessed_machines, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Migrate::Mgmt::V2018_02_02::AzureMigrate.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @location = @client_0.location
          @assessment_options = @client_0.assessment_options
          @projects = @client_0.projects
          @machines = @client_0.machines
          @groups = @client_0.groups
          @assessments = @client_0.assessments
          @assessed_machines = @client_0.assessed_machines
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Migrate/Mgmt"
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
          def download_url
            Azure::Migrate::Mgmt::V2018_02_02::Models::DownloadUrl
          end
          def project
            Azure::Migrate::Mgmt::V2018_02_02::Models::Project
          end
          def vm_family
            Azure::Migrate::Mgmt::V2018_02_02::Models::VmFamily
          end
          def assessment
            Azure::Migrate::Mgmt::V2018_02_02::Models::Assessment
          end
          def project_result_list
            Azure::Migrate::Mgmt::V2018_02_02::Models::ProjectResultList
          end
          def network_adapter
            Azure::Migrate::Mgmt::V2018_02_02::Models::NetworkAdapter
          end
          def machine_result_list
            Azure::Migrate::Mgmt::V2018_02_02::Models::MachineResultList
          end
          def assessed_disk
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedDisk
          end
          def group_result_list
            Azure::Migrate::Mgmt::V2018_02_02::Models::GroupResultList
          end
          def assessed_machine
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedMachine
          end
          def assessed_machine_result_list
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedMachineResultList
          end
          def operation_display
            Azure::Migrate::Mgmt::V2018_02_02::Models::OperationDisplay
          end
          def assessment_result_list
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentResultList
          end
          def group
            Azure::Migrate::Mgmt::V2018_02_02::Models::Group
          end
          def operation_result_list
            Azure::Migrate::Mgmt::V2018_02_02::Models::OperationResultList
          end
          def machine
            Azure::Migrate::Mgmt::V2018_02_02::Models::Machine
          end
          def assessment_options_result_list
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentOptionsResultList
          end
          def project_key
            Azure::Migrate::Mgmt::V2018_02_02::Models::ProjectKey
          end
          def disk
            Azure::Migrate::Mgmt::V2018_02_02::Models::Disk
          end
          def operation
            Azure::Migrate::Mgmt::V2018_02_02::Models::Operation
          end
          def check_name_availability_parameters
            Azure::Migrate::Mgmt::V2018_02_02::Models::CheckNameAvailabilityParameters
          end
          def assessed_network_adapter
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessedNetworkAdapter
          end
          def check_name_availability_result
            Azure::Migrate::Mgmt::V2018_02_02::Models::CheckNameAvailabilityResult
          end
          def discovery_status
            Azure::Migrate::Mgmt::V2018_02_02::Models::DiscoveryStatus
          end
          def provisioning_state
            Azure::Migrate::Mgmt::V2018_02_02::Models::ProvisioningState
          end
          def azure_location
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureLocation
          end
          def azure_offer_code
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureOfferCode
          end
          def azure_pricing_tier
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzurePricingTier
          end
          def azure_storage_redundancy
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureStorageRedundancy
          end
          def percentile
            Azure::Migrate::Mgmt::V2018_02_02::Models::Percentile
          end
          def time_range
            Azure::Migrate::Mgmt::V2018_02_02::Models::TimeRange
          end
          def assessment_stage
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentStage
          end
          def currency
            Azure::Migrate::Mgmt::V2018_02_02::Models::Currency
          end
          def azure_hybrid_use_benefit
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureHybridUseBenefit
          end
          def assessment_sizing_criterion
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentSizingCriterion
          end
          def assessment_status
            Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentStatus
          end
          def machine_boot_type
            Azure::Migrate::Mgmt::V2018_02_02::Models::MachineBootType
          end
          def azure_disk_type
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureDiskType
          end
          def azure_disk_size
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureDiskSize
          end
          def cloud_suitability
            Azure::Migrate::Mgmt::V2018_02_02::Models::CloudSuitability
          end
          def azure_disk_suitability_explanation
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureDiskSuitabilityExplanation
          end
          def azure_network_adapter_suitability_explanation
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureNetworkAdapterSuitabilityExplanation
          end
          def azure_vm_size
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureVmSize
          end
          def azure_vm_suitability_explanation
            Azure::Migrate::Mgmt::V2018_02_02::Models::AzureVmSuitabilityExplanation
          end
          def name_availability_reason
            Azure::Migrate::Mgmt::V2018_02_02::Models::NameAvailabilityReason
          end
        end
      end
    end
  end
end
