# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services_site_recovery'

module Azure::Profiles::Latest
  module RecoveryServicesSiteRecovery
    module Mgmt
      ReplicationJobs = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationJobs
      RecoveryPoints = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::RecoveryPoints
      ReplicationPolicies = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationPolicies
      ReplicationVaultHealth = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationVaultHealth
      ReplicationRecoveryPlans = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationRecoveryPlans
      Operations = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Operations
      ReplicationAlertSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationAlertSettings
      ReplicationEvents = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationEvents
      ReplicationFabrics = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationFabrics
      ReplicationLogicalNetworks = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationLogicalNetworks
      ReplicationNetworks = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationNetworks
      ReplicationNetworkMappings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationNetworkMappings
      ReplicationProtectionContainers = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationProtectionContainers
      ReplicationProtectableItems = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationProtectableItems
      ReplicationProtectedItems = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationProtectedItems
      TargetComputeSizes = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::TargetComputeSizes
      ReplicationProtectionContainerMappings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationProtectionContainerMappings
      ReplicationRecoveryServicesProviders = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationRecoveryServicesProviders
      ReplicationStorageClassifications = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationStorageClassifications
      ReplicationStorageClassificationMappings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationStorageClassificationMappings
      ReplicationvCenters = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::ReplicationvCenters

      module Models
        Display = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Display
        Event = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Event
        JobCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobCollection
        ProtectionContainer = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainer
        RecoveryPoint = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPoint
        EncryptionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EncryptionDetails
        Severity = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Severity
        RoleAssignment = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RoleAssignment
        Policy = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Policy
        Network = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Network
        JobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobDetails
        OSDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::OSDiskDetails
        FabricCreationInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricCreationInputProperties
        FabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricCreationInput
        VCenterCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VCenterCollection
        JobEntity = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobEntity
        A2AVmManagedDiskInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AVmManagedDiskInputDetails
        TargetComputeSizeCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TargetComputeSizeCollection
        VaultHealthProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VaultHealthProperties
        FabricSpecificUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricSpecificUpdateNetworkMappingInput
        UpdateVCenterRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateVCenterRequestProperties
        FailoverReplicationProtectedItemDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverReplicationProtectedItemDetails
        A2AProtectedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AProtectedDiskDetails
        TargetComputeSize = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TargetComputeSize
        UpdateReplicationProtectedItemInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateReplicationProtectedItemInputProperties
        FailoverProcessServerRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverProcessServerRequestProperties
        VMNicDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMNicDetails
        FailoverProcessServerRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverProcessServerRequest
        InputEndpoint = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InputEndpoint
        HealthErrorSummary = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HealthErrorSummary
        VMNicInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMNicInputDetails
        TargetComputeSizeProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TargetComputeSizeProperties
        UpdateRecoveryPlanInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateRecoveryPlanInputProperties
        SwitchProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SwitchProtectionInput
        A2AVmManagedDiskUpdateDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AVmManagedDiskUpdateDetails
        SwitchProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SwitchProtectionInputProperties
        AddVCenterRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AddVCenterRequestProperties
        SwitchProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SwitchProtectionProviderSpecificInput
        AlertProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AlertProperties
        StorageClassificationMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationMappingInput
        AlertCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AlertCollection
        StorageMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageMappingInputProperties
        ApplyRecoveryPointInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ApplyRecoveryPointInputProperties
        StorageClassificationMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationMappingCollection
        UpdatePolicyInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdatePolicyInputProperties
        StorageClassificationMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationMappingProperties
        GroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::GroupTaskDetails
        StorageClassificationCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationCollection
        ProviderError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProviderError
        InitialReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InitialReplicationDetails
        ASRTask = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ASRTask
        OSDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::OSDetails
        UpdateNetworkMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateNetworkMappingInputProperties
        StorageClassificationProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationProperties
        UpdateMobilityServiceRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateMobilityServiceRequestProperties
        RunAsAccount = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RunAsAccount
        UnplannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UnplannedFailoverInputProperties
        ReverseReplicationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReverseReplicationInput
        ComputeSizeErrorDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ComputeSizeErrorDetails
        ReverseReplicationInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReverseReplicationInputProperties
        ConfigureAlertRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ConfigureAlertRequestProperties
        ReverseReplicationProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReverseReplicationProviderSpecificInput
        InconsistentVmDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InconsistentVmDetails
        ResumeJobParams = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ResumeJobParams
        FabricSpecificCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricSpecificCreateNetworkMappingInput
        ResumeJobParamsProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ResumeJobParamsProperties
        CreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateNetworkMappingInput
        ResourceHealthSummary = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ResourceHealthSummary
        CreatePolicyInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreatePolicyInputProperties
        ReplicationProviderSpecificContainerCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderSpecificContainerCreationInput
        ReplicationProviderSpecificUpdateContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderSpecificUpdateContainerMappingInput
        CreateProtectionContainerInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateProtectionContainerInput
        ReplicationProtectedItemCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProtectedItemCollection
        CreateProtectionContainerMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateProtectionContainerMappingInputProperties
        ReplicationProtectedItemProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProtectedItemProperties
        RecoveryPlanProtectedItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanProtectedItem
        ReplicationProviderSpecificSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderSpecificSettings
        RecoveryPlanAction = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanAction
        RenewCertificateInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RenewCertificateInput
        CreateRecoveryPlanInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateRecoveryPlanInputProperties
        IdentityInformation = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::IdentityInformation
        CurrentScenarioDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CurrentScenarioDetails
        RenewCertificateInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RenewCertificateInputProperties
        DisableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DisableProtectionProviderSpecificInput
        InMageAgentDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAgentDetails
        DisableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DisableProtectionInput
        InMageAgentVersionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAgentVersionDetails
        DiscoverProtectableItemRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DiscoverProtectableItemRequest
        RemoveProtectionContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RemoveProtectionContainerMappingInput
        DiskVolumeDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DiskVolumeDetails
        RemoveProtectionContainerMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RemoveProtectionContainerMappingInputProperties
        EnableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EnableProtectionProviderSpecificInput
        ReplicationProviderContainerUnmappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderContainerUnmappingInput
        EnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EnableProtectionInput
        RecoveryServicesProviderCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryServicesProviderCollection
        EventProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventProviderSpecificDetails
        RecoveryServicesProviderProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryServicesProviderProperties
        InnerHealthError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InnerHealthError
        RecoveryPointCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPointCollection
        EventProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventProperties
        InMageAzureV2ProtectedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2ProtectedDiskDetails
        EventCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventCollection
        RecoveryPointProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPointProperties
        TestFailoverCleanupInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverCleanupInput
        RecoveryPlanUnplannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanUnplannedFailoverInput
        FabricProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricProperties
        RecoveryPlanUnplannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanUnplannedFailoverInputProperties
        FabricCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricCollection
        RecoveryPlanTestFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanTestFailoverInput
        RecoveryPlanTestFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanTestFailoverInputProperties
        VCenterProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VCenterProperties
        RecoveryPlanTestFailoverCleanupInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanTestFailoverCleanupInput
        UpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateReplicationProtectedItemInput
        InMageDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageDiskDetails
        UpdateReplicationProtectedItemProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateReplicationProtectedItemProviderInput
        InMageVolumeExclusionOptions = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageVolumeExclusionOptions
        AzureToAzureVmSyncedConfigDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureToAzureVmSyncedConfigDetails
        InMageDiskSignatureExclusionOptions = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageDiskSignatureExclusionOptions
        UpdateProtectionContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateProtectionContainerMappingInput
        InMageDiskExclusionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageDiskExclusionInput
        AddVCenterRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AddVCenterRequest
        RecoveryPlanTestFailoverCleanupInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanTestFailoverCleanupInputProperties
        ApplyRecoveryPointProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ApplyRecoveryPointProviderSpecificInput
        RecoveryPlanPlannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanPlannedFailoverInput
        TaskTypeDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TaskTypeDetails
        RecoveryPlanPlannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanPlannedFailoverInputProperties
        JobErrorDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobErrorDetails
        RecoveryPlanProviderSpecificFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanProviderSpecificFailoverInput
        UpdateMobilityServiceRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateMobilityServiceRequest
        InMageProtectedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageProtectedDiskDetails
        AzureVmDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureVmDiskDetails
        RecoveryPlanCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanCollection
        ConfigureAlertRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ConfigureAlertRequest
        RecoveryPlanProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanProperties
        CreateNetworkMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateNetworkMappingInputProperties
        ProviderSpecificRecoveryPointDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProviderSpecificRecoveryPointDetails
        CreatePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreatePolicyInput
        ReplicationProviderSpecificContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderSpecificContainerMappingInput
        JobProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobProperties
        RecoveryPlanActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanActionDetails
        ProtectionContainerMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerMappingCollection
        CreateRecoveryPlanInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateRecoveryPlanInput
        DisableProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DisableProtectionInputProperties
        JobQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobQueryParameter
        DiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DiskDetails
        ProtectionContainerMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerMappingProperties
        EnableProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EnableProtectionInputProperties
        ProtectionContainerMappingProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerMappingProviderSpecificDetails
        EventSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventSpecificDetails
        LogicalNetworkProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::LogicalNetworkProperties
        TestFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverInputProperties
        ProtectionContainerCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerCollection
        FabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricSpecificDetails
        LogicalNetworkCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::LogicalNetworkCollection
        FabricSpecificCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricSpecificCreationInput
        ProtectionContainerProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerProperties
        UpdateVCenterRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateVCenterRequest
        RetentionVolume = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RetentionVolume
        VersionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VersionDetails
        UpdateProtectionContainerMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateProtectionContainerMappingInputProperties
        MasterTargetServer = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MasterTargetServer
        ApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ApplyRecoveryPointInput
        MobilityServiceUpdate = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MobilityServiceUpdate
        UpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateNetworkMappingInput
        ConfigurationSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ConfigurationSettings
        NetworkProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkProperties
        PolicyProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PolicyProviderSpecificInput
        ProtectionContainerFabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerFabricSpecificDetails
        CreateProtectionContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateProtectionContainerMappingInput
        NetworkCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkCollection
        DataStore = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DataStore
        NetworkMappingFabricSpecificSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkMappingFabricSpecificSettings
        NetworkMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkMappingProperties
        HealthError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HealthError
        ProtectedItemsQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectedItemsQueryParameter
        TestFailoverCleanupInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverCleanupInputProperties
        NetworkMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkMappingCollection
        A2AProtectedManagedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AProtectedManagedDiskDetails
        OperationsDiscovery = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::OperationsDiscovery
        UpdatePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdatePolicyInput
        Subnet = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Subnet
        OperationsDiscoveryCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::OperationsDiscoveryCollection
        ProviderSpecificFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProviderSpecificFailoverInput
        CreateProtectionContainerInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateProtectionContainerInputProperties
        UnplannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UnplannedFailoverInput
        PlannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PlannedFailoverInputProperties
        DiscoverProtectableItemRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DiscoverProtectableItemRequestProperties
        PlannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PlannedFailoverInput
        EventQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventQueryParameter
        PolicyProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PolicyProviderSpecificDetails
        UpdateRecoveryPlanInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateRecoveryPlanInput
        PolicyProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PolicyProperties
        TestFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverInput
        ProtectableItemQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectableItemQueryParameter
        ServiceError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ServiceError
        ProcessServer = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProcessServer
        A2AVmDiskInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AVmDiskInputDetails
        ProtectableItemProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectableItemProperties
        RecoveryPlanGroup = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanGroup
        ProtectableItemCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectableItemCollection
        A2AApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AApplyRecoveryPointInput
        A2AContainerCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AContainerCreationInput
        A2AEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AEnableProtectionInput
        A2AEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AEventDetails
        PolicyCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PolicyCollection
        A2APolicyCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2APolicyCreationInput
        A2APolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2APolicyDetails
        A2AContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AContainerMappingInput
        A2ARecoveryPointDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2ARecoveryPointDetails
        A2AReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AReplicationDetails
        A2AFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AFailoverProviderInput
        A2ASwitchProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2ASwitchProtectionInput
        A2AUpdateContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AUpdateContainerMappingInput
        A2AProtectionContainerMappingDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AProtectionContainerMappingDetails
        Alert = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Alert
        AsrJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AsrJobDetails
        A2AReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AReprotectInput
        AzureFabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureFabricCreationInput
        AzureFabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureFabricSpecificDetails
        A2AUpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AUpdateReplicationProtectedItemInput
        AzureToAzureNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureToAzureNetworkMappingSettings
        AzureToAzureUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureToAzureUpdateNetworkMappingInput
        AutomationRunbookTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AutomationRunbookTaskDetails
        ExportJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ExportJobDetails
        Fabric = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Fabric
        AzureToAzureCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureToAzureCreateNetworkMappingInput
        FailoverJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverJobDetails
        HyperVReplica2012EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplica2012EventDetails
        ConsistencyCheckTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ConsistencyCheckTaskDetails
        HyperVReplicaAzureApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureApplyRecoveryPointInput
        HyperVReplicaAzureEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureEnableProtectionInput
        FabricReplicationGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricReplicationGroupTaskDetails
        HyperVReplicaAzureFailbackProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureFailbackProviderInput
        HyperVReplicaAzureFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureFailoverProviderInput
        HyperVReplica2012R2EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplica2012R2EventDetails
        HyperVReplicaAzurePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzurePolicyInput
        HyperVReplicaAzureReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureReplicationDetails
        HyperVReplicaAzurePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzurePolicyDetails
        HyperVReplicaAzureReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureReprotectInput
        HyperVReplicaAzureUpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureUpdateReplicationProtectedItemInput
        HyperVReplicaBaseEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBaseEventDetails
        HyperVReplicaAzureEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureEventDetails
        HyperVReplicaBaseReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBaseReplicationDetails
        HyperVReplicaBasePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBasePolicyDetails
        HyperVReplicaBluePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBluePolicyInput
        HyperVReplicaBluePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBluePolicyDetails
        HyperVReplicaPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaPolicyDetails
        HyperVReplicaBlueReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBlueReplicationDetails
        HyperVReplicaReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaReplicationDetails
        HyperVReplicaPolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaPolicyInput
        HyperVVirtualMachineDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVVirtualMachineDetails
        HyperVSiteDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVSiteDetails
        InMageAzureV2ApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2ApplyRecoveryPointInput
        InlineWorkflowTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InlineWorkflowTaskDetails
        InMageAzureV2EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2EventDetails
        InMageAzureV2EnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2EnableProtectionInput
        InMageAzureV2PolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2PolicyDetails
        InMageAzureV2FailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2FailoverProviderInput
        InMageAzureV2RecoveryPointDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2RecoveryPointDetails
        InMageAzureV2PolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2PolicyInput
        InMageAzureV2ReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2ReprotectInput
        InMageAzureV2ReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2ReplicationDetails
        InMageBasePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageBasePolicyDetails
        InMageAzureV2UpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2UpdateReplicationProtectedItemInput
        InMageEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageEnableProtectionInput
        InMageDisableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageDisableProtectionProviderSpecificInput
        InMagePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMagePolicyDetails
        InMageFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageFailoverProviderInput
        InMageReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageReplicationDetails
        InMagePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMagePolicyInput
        JobStatusEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobStatusEventDetails
        InMageReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageReprotectInput
        LogicalNetwork = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::LogicalNetwork
        ManualActionTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ManualActionTaskDetails
        NetworkMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkMapping
        ProtectionContainerMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerMapping
        Resource = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Resource
        RcmAzureMigrationPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RcmAzureMigrationPolicyDetails
        RecoveryPlan = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlan
        RecoveryPlanAutomationRunbookActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanAutomationRunbookActionDetails
        JobTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobTaskDetails
        RecoveryPlanGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanGroupTaskDetails
        RecoveryPlanHyperVReplicaAzureFailbackInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanHyperVReplicaAzureFailbackInput
        RecoveryPlanInMageAzureV2FailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanInMageAzureV2FailoverInput
        ProtectableItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectableItem
        RecoveryPlanInMageFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanInMageFailoverInput
        RecoveryPlanManualActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanManualActionDetails
        RecoveryPlanScriptActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanScriptActionDetails
        RecoveryPlanA2AFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanA2AFailoverInput
        RecoveryServicesProvider = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryServicesProvider
        ReplicationGroupDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationGroupDetails
        ReplicationProtectedItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProtectedItem
        Job = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Job
        RecoveryPlanShutdownGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanShutdownGroupTaskDetails
        SanEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SanEnableProtectionInput
        StorageClassificationMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationMapping
        StorageClassification = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassification
        RecoveryPlanHyperVReplicaAzureFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanHyperVReplicaAzureFailoverInput
        SwitchProtectionJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SwitchProtectionJobDetails
        TestFailoverJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverJobDetails
        VirtualMachineTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VirtualMachineTaskDetails
        VCenter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VCenter
        ScriptActionTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ScriptActionTaskDetails
        VmmDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmDetails
        VmmToAzureCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToAzureCreateNetworkMappingInput
        VmmToVmmCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToVmmCreateNetworkMappingInput
        VmmToAzureUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToAzureUpdateNetworkMappingInput
        VaultHealthDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VaultHealthDetails
        VmmToVmmNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToVmmNetworkMappingSettings
        VmmToVmmUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToVmmUpdateNetworkMappingInput
        VMwareCbtPolicyCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareCbtPolicyCreationInput
        VmNicUpdatesTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmNicUpdatesTaskDetails
        VmmToAzureNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToAzureNetworkMappingSettings
        VmwareCbtPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmwareCbtPolicyDetails
        VMwareDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareDetails
        VMwareVirtualMachineDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareVirtualMachineDetails
        VMwareV2FabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareV2FabricSpecificDetails
        VmmVirtualMachineDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmVirtualMachineDetails
        AgentAutoUpdateStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AgentAutoUpdateStatus
        SetMultiVmSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SetMultiVmSyncStatus
        FailoverDeploymentModel = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverDeploymentModel
        MultiVmGroupCreateOption = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MultiVmGroupCreateOption
        VMwareV2FabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareV2FabricCreationInput
        RecoveryPlanGroupType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanGroupType
        ReplicationProtectedItemOperation = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProtectedItemOperation
        HealthErrorCategory = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HealthErrorCategory
        DisableProtectionReason = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DisableProtectionReason
        RecoveryPointSyncType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPointSyncType
        PresenceStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PresenceStatus
        AgentVersionStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AgentVersionStatus
        A2ARpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2ARpRecoveryPointType
        MultiVmSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MultiVmSyncStatus
        PossibleOperationsDirections = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PossibleOperationsDirections
        MultiVmSyncPointOption = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MultiVmSyncPointOption
        RecoveryPlanActionLocation = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanActionLocation
        HyperVReplicaAzureRpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureRpRecoveryPointType
        AlternateLocationRecoveryOption = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AlternateLocationRecoveryOption
        RpInMageRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RpInMageRecoveryPointType
        DataSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DataSyncStatus
        LicenseType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::LicenseType
        SourceSiteOperations = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SourceSiteOperations
        InMageV2RpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageV2RpRecoveryPointType
        IdentityProviderType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::IdentityProviderType
        RecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPointType
      end

      class RecoveryServicesSiteRecoveryManagementClass
        attr_reader :replication_jobs, :recovery_points, :replication_policies, :replication_vault_health, :replication_recovery_plans, :operations, :replication_alert_settings, :replication_events, :replication_fabrics, :replication_logical_networks, :replication_networks, :replication_network_mappings, :replication_protection_containers, :replication_protectable_items, :replication_protected_items, :target_compute_sizes, :replication_protection_container_mappings, :replication_recovery_services_providers, :replication_storage_classifications, :replication_storage_classification_mappings, :replicationv_centers, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::SiteRecoveryManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @replication_jobs = @client_0.replication_jobs
          @recovery_points = @client_0.recovery_points
          @replication_policies = @client_0.replication_policies
          @replication_vault_health = @client_0.replication_vault_health
          @replication_recovery_plans = @client_0.replication_recovery_plans
          @operations = @client_0.operations
          @replication_alert_settings = @client_0.replication_alert_settings
          @replication_events = @client_0.replication_events
          @replication_fabrics = @client_0.replication_fabrics
          @replication_logical_networks = @client_0.replication_logical_networks
          @replication_networks = @client_0.replication_networks
          @replication_network_mappings = @client_0.replication_network_mappings
          @replication_protection_containers = @client_0.replication_protection_containers
          @replication_protectable_items = @client_0.replication_protectable_items
          @replication_protected_items = @client_0.replication_protected_items
          @target_compute_sizes = @client_0.target_compute_sizes
          @replication_protection_container_mappings = @client_0.replication_protection_container_mappings
          @replication_recovery_services_providers = @client_0.replication_recovery_services_providers
          @replication_storage_classifications = @client_0.replication_storage_classifications
          @replication_storage_classification_mappings = @client_0.replication_storage_classification_mappings
          @replicationv_centers = @client_0.replicationv_centers

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/RecoveryServicesSiteRecovery/Mgmt"
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
          def display
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Display
          end
          def event
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Event
          end
          def job_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobCollection
          end
          def protection_container
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainer
          end
          def recovery_point
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPoint
          end
          def encryption_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EncryptionDetails
          end
          def severity
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Severity
          end
          def role_assignment
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RoleAssignment
          end
          def policy
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Policy
          end
          def network
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Network
          end
          def job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobDetails
          end
          def osdisk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::OSDiskDetails
          end
          def fabric_creation_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricCreationInputProperties
          end
          def fabric_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricCreationInput
          end
          def vcenter_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VCenterCollection
          end
          def job_entity
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobEntity
          end
          def a2_avm_managed_disk_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AVmManagedDiskInputDetails
          end
          def target_compute_size_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TargetComputeSizeCollection
          end
          def vault_health_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VaultHealthProperties
          end
          def fabric_specific_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricSpecificUpdateNetworkMappingInput
          end
          def update_vcenter_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateVCenterRequestProperties
          end
          def failover_replication_protected_item_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverReplicationProtectedItemDetails
          end
          def a2_aprotected_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AProtectedDiskDetails
          end
          def target_compute_size
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TargetComputeSize
          end
          def update_replication_protected_item_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateReplicationProtectedItemInputProperties
          end
          def failover_process_server_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverProcessServerRequestProperties
          end
          def vmnic_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMNicDetails
          end
          def failover_process_server_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverProcessServerRequest
          end
          def input_endpoint
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InputEndpoint
          end
          def health_error_summary
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HealthErrorSummary
          end
          def vmnic_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMNicInputDetails
          end
          def target_compute_size_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TargetComputeSizeProperties
          end
          def update_recovery_plan_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateRecoveryPlanInputProperties
          end
          def switch_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SwitchProtectionInput
          end
          def a2_avm_managed_disk_update_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AVmManagedDiskUpdateDetails
          end
          def switch_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SwitchProtectionInputProperties
          end
          def add_vcenter_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AddVCenterRequestProperties
          end
          def switch_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SwitchProtectionProviderSpecificInput
          end
          def alert_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AlertProperties
          end
          def storage_classification_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationMappingInput
          end
          def alert_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AlertCollection
          end
          def storage_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageMappingInputProperties
          end
          def apply_recovery_point_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ApplyRecoveryPointInputProperties
          end
          def storage_classification_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationMappingCollection
          end
          def update_policy_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdatePolicyInputProperties
          end
          def storage_classification_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationMappingProperties
          end
          def group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::GroupTaskDetails
          end
          def storage_classification_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationCollection
          end
          def provider_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProviderError
          end
          def initial_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InitialReplicationDetails
          end
          def asrtask
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ASRTask
          end
          def osdetails
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::OSDetails
          end
          def update_network_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateNetworkMappingInputProperties
          end
          def storage_classification_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationProperties
          end
          def update_mobility_service_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateMobilityServiceRequestProperties
          end
          def run_as_account
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RunAsAccount
          end
          def unplanned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UnplannedFailoverInputProperties
          end
          def reverse_replication_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReverseReplicationInput
          end
          def compute_size_error_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ComputeSizeErrorDetails
          end
          def reverse_replication_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReverseReplicationInputProperties
          end
          def configure_alert_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ConfigureAlertRequestProperties
          end
          def reverse_replication_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReverseReplicationProviderSpecificInput
          end
          def inconsistent_vm_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InconsistentVmDetails
          end
          def resume_job_params
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ResumeJobParams
          end
          def fabric_specific_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricSpecificCreateNetworkMappingInput
          end
          def resume_job_params_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ResumeJobParamsProperties
          end
          def create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateNetworkMappingInput
          end
          def resource_health_summary
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ResourceHealthSummary
          end
          def create_policy_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreatePolicyInputProperties
          end
          def replication_provider_specific_container_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderSpecificContainerCreationInput
          end
          def replication_provider_specific_update_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderSpecificUpdateContainerMappingInput
          end
          def create_protection_container_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateProtectionContainerInput
          end
          def replication_protected_item_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProtectedItemCollection
          end
          def create_protection_container_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateProtectionContainerMappingInputProperties
          end
          def replication_protected_item_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProtectedItemProperties
          end
          def recovery_plan_protected_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanProtectedItem
          end
          def replication_provider_specific_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderSpecificSettings
          end
          def recovery_plan_action
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanAction
          end
          def renew_certificate_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RenewCertificateInput
          end
          def create_recovery_plan_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateRecoveryPlanInputProperties
          end
          def identity_information
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::IdentityInformation
          end
          def current_scenario_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CurrentScenarioDetails
          end
          def renew_certificate_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RenewCertificateInputProperties
          end
          def disable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DisableProtectionProviderSpecificInput
          end
          def in_mage_agent_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAgentDetails
          end
          def disable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DisableProtectionInput
          end
          def in_mage_agent_version_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAgentVersionDetails
          end
          def discover_protectable_item_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DiscoverProtectableItemRequest
          end
          def remove_protection_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RemoveProtectionContainerMappingInput
          end
          def disk_volume_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DiskVolumeDetails
          end
          def remove_protection_container_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RemoveProtectionContainerMappingInputProperties
          end
          def enable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EnableProtectionProviderSpecificInput
          end
          def replication_provider_container_unmapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderContainerUnmappingInput
          end
          def enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EnableProtectionInput
          end
          def recovery_services_provider_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryServicesProviderCollection
          end
          def event_provider_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventProviderSpecificDetails
          end
          def recovery_services_provider_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryServicesProviderProperties
          end
          def inner_health_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InnerHealthError
          end
          def recovery_point_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPointCollection
          end
          def event_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventProperties
          end
          def in_mage_azure_v2_protected_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2ProtectedDiskDetails
          end
          def event_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventCollection
          end
          def recovery_point_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPointProperties
          end
          def test_failover_cleanup_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverCleanupInput
          end
          def recovery_plan_unplanned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanUnplannedFailoverInput
          end
          def fabric_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricProperties
          end
          def recovery_plan_unplanned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanUnplannedFailoverInputProperties
          end
          def fabric_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricCollection
          end
          def recovery_plan_test_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanTestFailoverInput
          end
          def recovery_plan_test_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanTestFailoverInputProperties
          end
          def vcenter_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VCenterProperties
          end
          def recovery_plan_test_failover_cleanup_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanTestFailoverCleanupInput
          end
          def update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateReplicationProtectedItemInput
          end
          def in_mage_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageDiskDetails
          end
          def update_replication_protected_item_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateReplicationProtectedItemProviderInput
          end
          def in_mage_volume_exclusion_options
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageVolumeExclusionOptions
          end
          def azure_to_azure_vm_synced_config_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureToAzureVmSyncedConfigDetails
          end
          def in_mage_disk_signature_exclusion_options
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageDiskSignatureExclusionOptions
          end
          def update_protection_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateProtectionContainerMappingInput
          end
          def in_mage_disk_exclusion_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageDiskExclusionInput
          end
          def add_vcenter_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AddVCenterRequest
          end
          def recovery_plan_test_failover_cleanup_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanTestFailoverCleanupInputProperties
          end
          def apply_recovery_point_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ApplyRecoveryPointProviderSpecificInput
          end
          def recovery_plan_planned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanPlannedFailoverInput
          end
          def task_type_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TaskTypeDetails
          end
          def recovery_plan_planned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanPlannedFailoverInputProperties
          end
          def job_error_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobErrorDetails
          end
          def recovery_plan_provider_specific_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanProviderSpecificFailoverInput
          end
          def update_mobility_service_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateMobilityServiceRequest
          end
          def in_mage_protected_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageProtectedDiskDetails
          end
          def azure_vm_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureVmDiskDetails
          end
          def recovery_plan_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanCollection
          end
          def configure_alert_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ConfigureAlertRequest
          end
          def recovery_plan_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanProperties
          end
          def create_network_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateNetworkMappingInputProperties
          end
          def provider_specific_recovery_point_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProviderSpecificRecoveryPointDetails
          end
          def create_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreatePolicyInput
          end
          def replication_provider_specific_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProviderSpecificContainerMappingInput
          end
          def job_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobProperties
          end
          def recovery_plan_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanActionDetails
          end
          def protection_container_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerMappingCollection
          end
          def create_recovery_plan_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateRecoveryPlanInput
          end
          def disable_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DisableProtectionInputProperties
          end
          def job_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobQueryParameter
          end
          def disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DiskDetails
          end
          def protection_container_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerMappingProperties
          end
          def enable_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EnableProtectionInputProperties
          end
          def protection_container_mapping_provider_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerMappingProviderSpecificDetails
          end
          def event_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventSpecificDetails
          end
          def logical_network_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::LogicalNetworkProperties
          end
          def test_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverInputProperties
          end
          def protection_container_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerCollection
          end
          def fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricSpecificDetails
          end
          def logical_network_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::LogicalNetworkCollection
          end
          def fabric_specific_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricSpecificCreationInput
          end
          def protection_container_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerProperties
          end
          def update_vcenter_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateVCenterRequest
          end
          def retention_volume
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RetentionVolume
          end
          def version_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VersionDetails
          end
          def update_protection_container_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateProtectionContainerMappingInputProperties
          end
          def master_target_server
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MasterTargetServer
          end
          def apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ApplyRecoveryPointInput
          end
          def mobility_service_update
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MobilityServiceUpdate
          end
          def update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateNetworkMappingInput
          end
          def configuration_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ConfigurationSettings
          end
          def network_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkProperties
          end
          def policy_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PolicyProviderSpecificInput
          end
          def protection_container_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerFabricSpecificDetails
          end
          def create_protection_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateProtectionContainerMappingInput
          end
          def network_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkCollection
          end
          def data_store
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DataStore
          end
          def network_mapping_fabric_specific_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkMappingFabricSpecificSettings
          end
          def network_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkMappingProperties
          end
          def health_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HealthError
          end
          def protected_items_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectedItemsQueryParameter
          end
          def test_failover_cleanup_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverCleanupInputProperties
          end
          def network_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkMappingCollection
          end
          def a2_aprotected_managed_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AProtectedManagedDiskDetails
          end
          def operations_discovery
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::OperationsDiscovery
          end
          def update_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdatePolicyInput
          end
          def subnet
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Subnet
          end
          def operations_discovery_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::OperationsDiscoveryCollection
          end
          def provider_specific_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProviderSpecificFailoverInput
          end
          def create_protection_container_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::CreateProtectionContainerInputProperties
          end
          def unplanned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UnplannedFailoverInput
          end
          def planned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PlannedFailoverInputProperties
          end
          def discover_protectable_item_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DiscoverProtectableItemRequestProperties
          end
          def planned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PlannedFailoverInput
          end
          def event_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::EventQueryParameter
          end
          def policy_provider_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PolicyProviderSpecificDetails
          end
          def update_recovery_plan_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::UpdateRecoveryPlanInput
          end
          def policy_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PolicyProperties
          end
          def test_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverInput
          end
          def protectable_item_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectableItemQueryParameter
          end
          def service_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ServiceError
          end
          def process_server
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProcessServer
          end
          def a2_avm_disk_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AVmDiskInputDetails
          end
          def protectable_item_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectableItemProperties
          end
          def recovery_plan_group
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanGroup
          end
          def protectable_item_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectableItemCollection
          end
          def a2_aapply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AApplyRecoveryPointInput
          end
          def a2_acontainer_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AContainerCreationInput
          end
          def a2_aenable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AEnableProtectionInput
          end
          def a2_aevent_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AEventDetails
          end
          def policy_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PolicyCollection
          end
          def a2_apolicy_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2APolicyCreationInput
          end
          def a2_apolicy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2APolicyDetails
          end
          def a2_acontainer_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AContainerMappingInput
          end
          def a2_arecovery_point_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2ARecoveryPointDetails
          end
          def a2_areplication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AReplicationDetails
          end
          def a2_afailover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AFailoverProviderInput
          end
          def a2_aswitch_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2ASwitchProtectionInput
          end
          def a2_aupdate_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AUpdateContainerMappingInput
          end
          def a2_aprotection_container_mapping_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AProtectionContainerMappingDetails
          end
          def alert
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Alert
          end
          def asr_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AsrJobDetails
          end
          def a2_areprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AReprotectInput
          end
          def azure_fabric_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureFabricCreationInput
          end
          def azure_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureFabricSpecificDetails
          end
          def a2_aupdate_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2AUpdateReplicationProtectedItemInput
          end
          def azure_to_azure_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureToAzureNetworkMappingSettings
          end
          def azure_to_azure_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureToAzureUpdateNetworkMappingInput
          end
          def automation_runbook_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AutomationRunbookTaskDetails
          end
          def export_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ExportJobDetails
          end
          def fabric
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Fabric
          end
          def azure_to_azure_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AzureToAzureCreateNetworkMappingInput
          end
          def failover_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverJobDetails
          end
          def hyper_vreplica2012_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplica2012EventDetails
          end
          def consistency_check_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ConsistencyCheckTaskDetails
          end
          def hyper_vreplica_azure_apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureApplyRecoveryPointInput
          end
          def hyper_vreplica_azure_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureEnableProtectionInput
          end
          def fabric_replication_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FabricReplicationGroupTaskDetails
          end
          def hyper_vreplica_azure_failback_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureFailbackProviderInput
          end
          def hyper_vreplica_azure_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureFailoverProviderInput
          end
          def hyper_vreplica2012_r2_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplica2012R2EventDetails
          end
          def hyper_vreplica_azure_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzurePolicyInput
          end
          def hyper_vreplica_azure_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureReplicationDetails
          end
          def hyper_vreplica_azure_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzurePolicyDetails
          end
          def hyper_vreplica_azure_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureReprotectInput
          end
          def hyper_vreplica_azure_update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureUpdateReplicationProtectedItemInput
          end
          def hyper_vreplica_base_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBaseEventDetails
          end
          def hyper_vreplica_azure_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureEventDetails
          end
          def hyper_vreplica_base_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBaseReplicationDetails
          end
          def hyper_vreplica_base_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBasePolicyDetails
          end
          def hyper_vreplica_blue_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBluePolicyInput
          end
          def hyper_vreplica_blue_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBluePolicyDetails
          end
          def hyper_vreplica_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaPolicyDetails
          end
          def hyper_vreplica_blue_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaBlueReplicationDetails
          end
          def hyper_vreplica_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaReplicationDetails
          end
          def hyper_vreplica_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaPolicyInput
          end
          def hyper_vvirtual_machine_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVVirtualMachineDetails
          end
          def hyper_vsite_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVSiteDetails
          end
          def in_mage_azure_v2_apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2ApplyRecoveryPointInput
          end
          def inline_workflow_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InlineWorkflowTaskDetails
          end
          def in_mage_azure_v2_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2EventDetails
          end
          def in_mage_azure_v2_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2EnableProtectionInput
          end
          def in_mage_azure_v2_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2PolicyDetails
          end
          def in_mage_azure_v2_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2FailoverProviderInput
          end
          def in_mage_azure_v2_recovery_point_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2RecoveryPointDetails
          end
          def in_mage_azure_v2_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2PolicyInput
          end
          def in_mage_azure_v2_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2ReprotectInput
          end
          def in_mage_azure_v2_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2ReplicationDetails
          end
          def in_mage_base_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageBasePolicyDetails
          end
          def in_mage_azure_v2_update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageAzureV2UpdateReplicationProtectedItemInput
          end
          def in_mage_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageEnableProtectionInput
          end
          def in_mage_disable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageDisableProtectionProviderSpecificInput
          end
          def in_mage_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMagePolicyDetails
          end
          def in_mage_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageFailoverProviderInput
          end
          def in_mage_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageReplicationDetails
          end
          def in_mage_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMagePolicyInput
          end
          def job_status_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobStatusEventDetails
          end
          def in_mage_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageReprotectInput
          end
          def logical_network
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::LogicalNetwork
          end
          def manual_action_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ManualActionTaskDetails
          end
          def network_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::NetworkMapping
          end
          def protection_container_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectionContainerMapping
          end
          def resource
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Resource
          end
          def rcm_azure_migration_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RcmAzureMigrationPolicyDetails
          end
          def recovery_plan
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlan
          end
          def recovery_plan_automation_runbook_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanAutomationRunbookActionDetails
          end
          def job_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::JobTaskDetails
          end
          def recovery_plan_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanGroupTaskDetails
          end
          def recovery_plan_hyper_vreplica_azure_failback_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanHyperVReplicaAzureFailbackInput
          end
          def recovery_plan_in_mage_azure_v2_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanInMageAzureV2FailoverInput
          end
          def protectable_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ProtectableItem
          end
          def recovery_plan_in_mage_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanInMageFailoverInput
          end
          def recovery_plan_manual_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanManualActionDetails
          end
          def recovery_plan_script_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanScriptActionDetails
          end
          def recovery_plan_a2_afailover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanA2AFailoverInput
          end
          def recovery_services_provider
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryServicesProvider
          end
          def replication_group_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationGroupDetails
          end
          def replication_protected_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProtectedItem
          end
          def job
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::Job
          end
          def recovery_plan_shutdown_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanShutdownGroupTaskDetails
          end
          def san_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SanEnableProtectionInput
          end
          def storage_classification_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassificationMapping
          end
          def storage_classification
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::StorageClassification
          end
          def recovery_plan_hyper_vreplica_azure_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanHyperVReplicaAzureFailoverInput
          end
          def switch_protection_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SwitchProtectionJobDetails
          end
          def test_failover_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::TestFailoverJobDetails
          end
          def virtual_machine_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VirtualMachineTaskDetails
          end
          def vcenter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VCenter
          end
          def script_action_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ScriptActionTaskDetails
          end
          def vmm_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmDetails
          end
          def vmm_to_azure_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToAzureCreateNetworkMappingInput
          end
          def vmm_to_vmm_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToVmmCreateNetworkMappingInput
          end
          def vmm_to_azure_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToAzureUpdateNetworkMappingInput
          end
          def vault_health_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VaultHealthDetails
          end
          def vmm_to_vmm_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToVmmNetworkMappingSettings
          end
          def vmm_to_vmm_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToVmmUpdateNetworkMappingInput
          end
          def vmware_cbt_policy_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareCbtPolicyCreationInput
          end
          def vm_nic_updates_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmNicUpdatesTaskDetails
          end
          def vmm_to_azure_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmToAzureNetworkMappingSettings
          end
          def vmware_cbt_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmwareCbtPolicyDetails
          end
          def vmware_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareDetails
          end
          def vmware_virtual_machine_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareVirtualMachineDetails
          end
          def vmware_v2_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareV2FabricSpecificDetails
          end
          def vmm_virtual_machine_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VmmVirtualMachineDetails
          end
          def agent_auto_update_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AgentAutoUpdateStatus
          end
          def set_multi_vm_sync_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SetMultiVmSyncStatus
          end
          def failover_deployment_model
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::FailoverDeploymentModel
          end
          def multi_vm_group_create_option
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MultiVmGroupCreateOption
          end
          def vmware_v2_fabric_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::VMwareV2FabricCreationInput
          end
          def recovery_plan_group_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanGroupType
          end
          def replication_protected_item_operation
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::ReplicationProtectedItemOperation
          end
          def health_error_category
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HealthErrorCategory
          end
          def disable_protection_reason
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DisableProtectionReason
          end
          def recovery_point_sync_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPointSyncType
          end
          def presence_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PresenceStatus
          end
          def agent_version_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AgentVersionStatus
          end
          def a2_arp_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::A2ARpRecoveryPointType
          end
          def multi_vm_sync_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MultiVmSyncStatus
          end
          def possible_operations_directions
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::PossibleOperationsDirections
          end
          def multi_vm_sync_point_option
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::MultiVmSyncPointOption
          end
          def recovery_plan_action_location
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPlanActionLocation
          end
          def hyper_vreplica_azure_rp_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::HyperVReplicaAzureRpRecoveryPointType
          end
          def alternate_location_recovery_option
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::AlternateLocationRecoveryOption
          end
          def rp_in_mage_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RpInMageRecoveryPointType
          end
          def data_sync_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::DataSyncStatus
          end
          def license_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::LicenseType
          end
          def source_site_operations
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::SourceSiteOperations
          end
          def in_mage_v2_rp_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::InMageV2RpRecoveryPointType
          end
          def identity_provider_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::IdentityProviderType
          end
          def recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10::Models::RecoveryPointType
          end
        end
      end
    end
  end
end
