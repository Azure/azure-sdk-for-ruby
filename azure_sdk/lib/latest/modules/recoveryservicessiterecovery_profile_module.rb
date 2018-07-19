# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services_site_recovery'

module Azure::Profiles::Latest
  module RecoveryServicesSiteRecovery
    module Mgmt
      ReplicationPolicies = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationPolicies
      Operations = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Operations
      ReplicationLogicalNetworks = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationLogicalNetworks
      ReplicationNetworks = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationNetworks
      ReplicationEvents = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationEvents
      ReplicationJobs = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationJobs
      ReplicationAlertSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationAlertSettings
      ReplicationVaultHealth = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationVaultHealth
      ReplicationProtectedItems = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationProtectedItems
      ReplicationNetworkMappings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationNetworkMappings
      ReplicationFabrics = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationFabrics
      ReplicationvCenters = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationvCenters
      ReplicationStorageClassificationMappings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationStorageClassificationMappings
      ReplicationStorageClassifications = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationStorageClassifications
      ReplicationRecoveryServicesProviders = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationRecoveryServicesProviders
      ReplicationRecoveryPlans = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationRecoveryPlans
      ReplicationProtectionContainers = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationProtectionContainers
      ReplicationProtectionContainerMappings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationProtectionContainerMappings
      RecoveryPoints = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::RecoveryPoints
      ReplicationProtectableItems = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationProtectableItems

      module Models
        ProtectionContainerMappingProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingProviderSpecificDetails
        VaultHealthProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VaultHealthProperties
        RemoveProtectionContainerMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RemoveProtectionContainerMappingInputProperties
        JobEntity = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobEntity
        CreateProtectionContainerInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerInput
        InMageDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskDetails
        ConfigureAlertRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigureAlertRequestProperties
        DiskVolumeDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiskVolumeDetails
        FabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricCreationInput
        A2AVmManagedDiskInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AVmManagedDiskInputDetails
        A2AVmDiskInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AVmDiskInputDetails
        ConfigurationSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigurationSettings
        HealthErrorSummary = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthErrorSummary
        EncryptionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EncryptionDetails
        A2AProtectedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AProtectedDiskDetails
        InMageDiskExclusionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskExclusionInput
        EventQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventQueryParameter
        InMageDiskSignatureExclusionOptions = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskSignatureExclusionOptions
        NetworkMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingProperties
        CreatePolicyInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInputProperties
        ReplicationProviderSpecificContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificContainerMappingInput
        AzureToAzureVmSyncedConfigDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureVmSyncedConfigDetails
        InMageVolumeExclusionOptions = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageVolumeExclusionOptions
        InputEndpoint = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InputEndpoint
        ASRTask = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ASRTask
        SwitchProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionInputProperties
        A2AProtectedManagedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AProtectedManagedDiskDetails
        PolicyProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProperties
        MobilityServiceUpdate = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MobilityServiceUpdate
        Alert = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Alert
        Fabric = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Fabric
        LogicalNetwork = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetwork
        NetworkMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMapping
        ProtectableItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItem
        ProtectionContainerMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMapping
        RecoveryPlan = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlan
        RecoveryServicesProvider = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryServicesProvider
        ProtectionContainer = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainer
        StorageClassification = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassification
        StorageClassificationMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMapping
        ReplicationProtectedItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItem
        VaultHealthDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VaultHealthDetails
        Policy = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy
        VCenter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenter
        VmmToVmmNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmNetworkMappingSettings
        Network = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Network
        VmmToAzureNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureNetworkMappingSettings
        VmmToVmmCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmCreateNetworkMappingInput
        AzureToAzureCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureCreateNetworkMappingInput
        AzureToAzureNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureNetworkMappingSettings
        RecoveryPoint = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPoint
        AzureToAzureUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureUpdateNetworkMappingInput
        VmmToAzureUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureUpdateNetworkMappingInput
        VmmToAzureCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureCreateNetworkMappingInput
        AzureFabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureFabricSpecificDetails
        VmmDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmDetails
        HyperVSiteDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVSiteDetails
        VmmToVmmUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmUpdateNetworkMappingInput
        VMwareV2FabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareV2FabricSpecificDetails
        HyperVReplicaBaseReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBaseReplicationDetails
        HyperVReplicaReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaReplicationDetails
        VMwareDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareDetails
        HyperVReplicaAzureReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureReplicationDetails
        InMageAzureV2ReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ReplicationDetails
        Job = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job
        HyperVReplicaBlueReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBlueReplicationDetails
        HyperVReplicaAzureEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureEnableProtectionInput
        SanEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SanEnableProtectionInput
        InMageReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageReplicationDetails
        A2AReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AReplicationDetails
        A2AEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AEnableProtectionInput
        HyperVReplicaAzureUpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureUpdateReplicationProtectedItemInput
        InMageAzureV2EnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2EnableProtectionInput
        InMageEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageEnableProtectionInput
        HyperVReplicaBaseEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBaseEventDetails
        HyperVReplica2012EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplica2012EventDetails
        InMageAzureV2UpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2UpdateReplicationProtectedItemInput
        A2AUpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AUpdateReplicationProtectedItemInput
        A2AEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AEventDetails
        InMageAzureV2EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2EventDetails
        HyperVReplica2012R2EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplica2012R2EventDetails
        HyperVReplicaAzureEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureEventDetails
        VMwareVirtualMachineDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareVirtualMachineDetails
        ReplicationGroupDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationGroupDetails
        JobStatusEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobStatusEventDetails
        HyperVVirtualMachineDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVVirtualMachineDetails
        HyperVReplicaAzureFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureFailoverProviderInput
        HyperVReplicaAzureFailbackProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureFailbackProviderInput
        InMageAzureV2RecoveryPointDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2RecoveryPointDetails
        InMageDisableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDisableProtectionProviderSpecificInput
        A2AFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AFailoverProviderInput
        HyperVReplicaAzureReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureReprotectInput
        InMageAzureV2FailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2FailoverProviderInput
        InMageFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageFailoverProviderInput
        A2AReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AReprotectInput
        HyperVReplicaAzureApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureApplyRecoveryPointInput
        InMageAzureV2ReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ReprotectInput
        InMageReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageReprotectInput
        JobTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobTaskDetails
        VirtualMachineTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VirtualMachineTaskDetails
        InMageAzureV2ApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ApplyRecoveryPointInput
        A2AApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AApplyRecoveryPointInput
        ScriptActionTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ScriptActionTaskDetails
        VmNicUpdatesTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmNicUpdatesTaskDetails
        FabricReplicationGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricReplicationGroupTaskDetails
        ManualActionTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ManualActionTaskDetails
        InlineWorkflowTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InlineWorkflowTaskDetails
        RecoveryPlanGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroupTaskDetails
        ConsistencyCheckTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConsistencyCheckTaskDetails
        AutomationRunbookTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AutomationRunbookTaskDetails
        TestFailoverJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverJobDetails
        FailoverJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverJobDetails
        RecoveryPlanShutdownGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanShutdownGroupTaskDetails
        AsrJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AsrJobDetails
        A2AContainerCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AContainerCreationInput
        A2ASwitchProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2ASwitchProtectionInput
        ExportJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ExportJobDetails
        SwitchProtectionJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionJobDetails
        HyperVReplicaPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaPolicyDetails
        HyperVReplicaBluePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBluePolicyDetails
        HyperVReplicaAzurePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzurePolicyDetails
        HyperVReplicaBasePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBasePolicyDetails
        InMagePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMagePolicyDetails
        A2APolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2APolicyDetails
        InMageBasePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageBasePolicyDetails
        InMageAzureV2PolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2PolicyDetails
        HyperVReplicaAzurePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzurePolicyInput
        HyperVReplicaPolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaPolicyInput
        RcmAzureMigrationPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RcmAzureMigrationPolicyDetails
        VmwareCbtPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmwareCbtPolicyDetails
        InMagePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMagePolicyInput
        A2APolicyCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2APolicyCreationInput
        HyperVReplicaBluePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBluePolicyInput
        InMageAzureV2PolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2PolicyInput
        RecoveryPlanAutomationRunbookActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanAutomationRunbookActionDetails
        RecoveryPlanManualActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanManualActionDetails
        Event = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Event
        RecoveryPlanScriptActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanScriptActionDetails
        RecoveryPlanInMageAzureV2FailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanInMageAzureV2FailoverInput
        RecoveryPlanInMageFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanInMageFailoverInput
        RecoveryPlanHyperVReplicaAzureFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailoverInput
        VMwareCbtPolicyCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareCbtPolicyCreationInput
        VMwareV2FabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareV2FabricCreationInput
        RecoveryPlanGroupType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroupType
        RecoveryPlanA2AFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanA2AFailoverInput
        AzureFabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureFabricCreationInput
        RecoveryPlanHyperVReplicaAzureFailbackInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailbackInput
        PolicyCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyCollection
        ReplicationProtectedItemOperation = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemOperation
        PossibleOperationsDirections = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PossibleOperationsDirections
        FailoverDeploymentModel = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverDeploymentModel
        RoleAssignment = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RoleAssignment
        LicenseType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LicenseType
        DisableProtectionReason = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionReason
        HealthErrorCategory = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthErrorCategory
        RecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPointType
        SourceSiteOperations = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SourceSiteOperations
        SetMultiVmSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SetMultiVmSyncStatus
        RecoveryPlanActionLocation = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanActionLocation
        HyperVReplicaAzureRpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureRpRecoveryPointType
        DataSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DataSyncStatus
        MultiVmSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MultiVmSyncStatus
        InMageV2RpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageV2RpRecoveryPointType
        RpInMageRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RpInMageRecoveryPointType
        A2ARpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2ARpRecoveryPointType
        AlternateLocationRecoveryOption = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlternateLocationRecoveryOption
        JobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobDetails
        Severity = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Severity
        JobCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobCollection
        IdentityProviderType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::IdentityProviderType
        Resource = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Resource
        StorageClassificationProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationProperties
        CreateRecoveryPlanInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateRecoveryPlanInput
        RecoveryPlanActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanActionDetails
        AlertCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlertCollection
        RecoveryPlanAction = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanAction
        ConfigureAlertRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigureAlertRequest
        RecoveryPlanGroup = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroup
        EventSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventSpecificDetails
        RecoveryPlanProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanProperties
        EventProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventProperties
        RunAsAccount = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RunAsAccount
        EventCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventCollection
        RecoveryPlanCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanCollection
        CreateRecoveryPlanInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateRecoveryPlanInputProperties
        FabricProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricProperties
        MasterTargetServer = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MasterTargetServer
        FabricCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricCollection
        UpdateRecoveryPlanInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateRecoveryPlanInputProperties
        FabricCreationInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricCreationInputProperties
        UpdateRecoveryPlanInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateRecoveryPlanInput
        FailoverProcessServerRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverProcessServerRequestProperties
        RecoveryPlanProviderSpecificFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanProviderSpecificFailoverInput
        TaskTypeDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TaskTypeDetails
        RecoveryPlanPlannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanPlannedFailoverInputProperties
        ServiceError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ServiceError
        RecoveryPlanPlannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanPlannedFailoverInput
        JobErrorDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobErrorDetails
        RecoveryPlanUnplannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanUnplannedFailoverInputProperties
        RecoveryPlanUnplannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanUnplannedFailoverInput
        ARMExceptionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ARMExceptionDetails
        RecoveryPlanTestFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanTestFailoverInputProperties
        ARMInnerError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ARMInnerError
        RecoveryPlanTestFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanTestFailoverInput
        Subnet = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Subnet
        InMageAzureV2ProtectedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ProtectedDiskDetails
        RecoveryPlanTestFailoverCleanupInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanTestFailoverCleanupInputProperties
        JobQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobQueryParameter
        RecoveryPlanTestFailoverCleanupInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanTestFailoverCleanupInput
        ResumeJobParams = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResumeJobParams
        ProviderSpecificRecoveryPointDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderSpecificRecoveryPointDetails
        OSDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OSDiskDetails
        RecoveryPointProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPointProperties
        NetworkMappingFabricSpecificSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingFabricSpecificSettings
        DataStore = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DataStore
        InMageProtectedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageProtectedDiskDetails
        RecoveryPointCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPointCollection
        CreateNetworkMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateNetworkMappingInputProperties
        IdentityInformation = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::IdentityInformation
        FabricSpecificUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificUpdateNetworkMappingInput
        RecoveryServicesProviderProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryServicesProviderProperties
        UpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateNetworkMappingInput
        RetentionVolume = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RetentionVolume
        NetworkProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkProperties
        RecoveryServicesProviderCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryServicesProviderCollection
        NetworkCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkCollection
        ReplicationProviderSpecificSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificSettings
        OperationsDiscovery = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OperationsDiscovery
        ReplicationProtectedItemProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemProperties
        Display = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Display
        ProcessServer = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProcessServer
        PolicyProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProviderSpecificDetails
        EnableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionProviderSpecificInput
        InitialReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InitialReplicationDetails
        EnableProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionInputProperties
        PolicyProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProviderSpecificInput
        EnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionInput
        CreatePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInput
        VMNicInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMNicInputDetails
        UpdatePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInput
        UpdateReplicationProtectedItemProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemProviderInput
        ProtectableItemProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItemProperties
        UpdateReplicationProtectedItemInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemInputProperties
        ProtectableItemCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItemCollection
        UpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemInput
        ProtectionContainerMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingProperties
        DisableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionProviderSpecificInput
        ProtectionContainerMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingCollection
        DisableProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionInputProperties
        CreateProtectionContainerMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerMappingInputProperties
        DisableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionInput
        ReplicationProviderContainerUnmappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderContainerUnmappingInput
        ProviderSpecificFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderSpecificFailoverInput
        RemoveProtectionContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RemoveProtectionContainerMappingInput
        PlannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PlannedFailoverInputProperties
        ProtectionContainerProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerProperties
        PlannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PlannedFailoverInput
        ProtectionContainerCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerCollection
        UnplannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UnplannedFailoverInputProperties
        CreateProtectionContainerInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerInputProperties
        UnplannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UnplannedFailoverInput
        DiscoverProtectableItemRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiscoverProtectableItemRequestProperties
        TestFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverInputProperties
        SwitchProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionProviderSpecificInput
        TestFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverInput
        SwitchProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionInput
        TestFailoverCleanupInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverCleanupInputProperties
        RecoveryPlanProtectedItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanProtectedItem
        TestFailoverCleanupInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverCleanupInput
        EventProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventProviderSpecificDetails
        ReverseReplicationProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationProviderSpecificInput
        OSDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OSDetails
        ReverseReplicationInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationInputProperties
        FabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificDetails
        ReverseReplicationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationInput
        FabricSpecificCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificCreationInput
        UpdateMobilityServiceRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateMobilityServiceRequestProperties
        FailoverProcessServerRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverProcessServerRequest
        UpdateMobilityServiceRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateMobilityServiceRequest
        ProviderError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderError
        ApplyRecoveryPointProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointProviderSpecificInput
        JobProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobProperties
        ApplyRecoveryPointInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointInputProperties
        ARMException = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ARMException
        ApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointInput
        ResumeJobParamsProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResumeJobParamsProperties
        AlertProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlertProperties
        LogicalNetworkCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetworkCollection
        UpdateNetworkMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateNetworkMappingInputProperties
        FabricSpecificCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificCreateNetworkMappingInput
        DiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiskDetails
        StorageClassificationCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationCollection
        OperationsDiscoveryCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OperationsDiscoveryCollection
        StorageClassificationMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingProperties
        StorageClassificationMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingCollection
        FailoverReplicationProtectedItemDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverReplicationProtectedItemDetails
        StorageMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageMappingInputProperties
        UpdatePolicyInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInputProperties
        StorageClassificationMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingInput
        VMNicDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMNicDetails
        VCenterProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenterProperties
        InMageAgentDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAgentDetails
        InconsistentVmDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InconsistentVmDetails
        CreateProtectionContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerMappingInput
        VCenterCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenterCollection
        ProtectionContainerFabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerFabricSpecificDetails
        AddVCenterRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AddVCenterRequestProperties
        ReplicationProviderSpecificContainerCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificContainerCreationInput
        AddVCenterRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AddVCenterRequest
        DiscoverProtectableItemRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiscoverProtectableItemRequest
        UpdateVCenterRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateVCenterRequestProperties
        CurrentScenarioDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CurrentScenarioDetails
        UpdateVCenterRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateVCenterRequest
        HealthError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthError
        RenewCertificateInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RenewCertificateInputProperties
        AzureVmDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureVmDiskDetails
        RenewCertificateInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RenewCertificateInput
        GroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::GroupTaskDetails
        NetworkMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingCollection
        MethodCallStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MethodCallStatus
        ReplicationProtectedItemCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemCollection
        LogicalNetworkProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetworkProperties
        ProtectedItemsQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectedItemsQueryParameter
        CreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateNetworkMappingInput
        ResourceHealthSummary = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResourceHealthSummary
      end

      class RecoveryServicesSiteRecoveryManagementClass
        attr_reader :replication_policies, :operations, :replication_logical_networks, :replication_networks, :replication_events, :replication_jobs, :replication_alert_settings, :replication_vault_health, :replication_protected_items, :replication_network_mappings, :replication_fabrics, :replicationv_centers, :replication_storage_classification_mappings, :replication_storage_classifications, :replication_recovery_services_providers, :replication_recovery_plans, :replication_protection_containers, :replication_protection_container_mappings, :recovery_points, :replication_protectable_items, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::SiteRecoveryManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @replication_policies = @client_0.replication_policies
          @operations = @client_0.operations
          @replication_logical_networks = @client_0.replication_logical_networks
          @replication_networks = @client_0.replication_networks
          @replication_events = @client_0.replication_events
          @replication_jobs = @client_0.replication_jobs
          @replication_alert_settings = @client_0.replication_alert_settings
          @replication_vault_health = @client_0.replication_vault_health
          @replication_protected_items = @client_0.replication_protected_items
          @replication_network_mappings = @client_0.replication_network_mappings
          @replication_fabrics = @client_0.replication_fabrics
          @replicationv_centers = @client_0.replicationv_centers
          @replication_storage_classification_mappings = @client_0.replication_storage_classification_mappings
          @replication_storage_classifications = @client_0.replication_storage_classifications
          @replication_recovery_services_providers = @client_0.replication_recovery_services_providers
          @replication_recovery_plans = @client_0.replication_recovery_plans
          @replication_protection_containers = @client_0.replication_protection_containers
          @replication_protection_container_mappings = @client_0.replication_protection_container_mappings
          @recovery_points = @client_0.recovery_points
          @replication_protectable_items = @client_0.replication_protectable_items

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
          def protection_container_mapping_provider_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingProviderSpecificDetails
          end
          def vault_health_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VaultHealthProperties
          end
          def remove_protection_container_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RemoveProtectionContainerMappingInputProperties
          end
          def job_entity
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobEntity
          end
          def create_protection_container_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerInput
          end
          def in_mage_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskDetails
          end
          def configure_alert_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigureAlertRequestProperties
          end
          def disk_volume_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiskVolumeDetails
          end
          def fabric_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricCreationInput
          end
          def a2_avm_managed_disk_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AVmManagedDiskInputDetails
          end
          def a2_avm_disk_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AVmDiskInputDetails
          end
          def configuration_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigurationSettings
          end
          def health_error_summary
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthErrorSummary
          end
          def encryption_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EncryptionDetails
          end
          def a2_aprotected_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AProtectedDiskDetails
          end
          def in_mage_disk_exclusion_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskExclusionInput
          end
          def event_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventQueryParameter
          end
          def in_mage_disk_signature_exclusion_options
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskSignatureExclusionOptions
          end
          def network_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingProperties
          end
          def create_policy_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInputProperties
          end
          def replication_provider_specific_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificContainerMappingInput
          end
          def azure_to_azure_vm_synced_config_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureVmSyncedConfigDetails
          end
          def in_mage_volume_exclusion_options
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageVolumeExclusionOptions
          end
          def input_endpoint
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InputEndpoint
          end
          def asrtask
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ASRTask
          end
          def switch_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionInputProperties
          end
          def a2_aprotected_managed_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AProtectedManagedDiskDetails
          end
          def policy_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProperties
          end
          def mobility_service_update
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MobilityServiceUpdate
          end
          def alert
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Alert
          end
          def fabric
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Fabric
          end
          def logical_network
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetwork
          end
          def network_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMapping
          end
          def protectable_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItem
          end
          def protection_container_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMapping
          end
          def recovery_plan
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlan
          end
          def recovery_services_provider
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryServicesProvider
          end
          def protection_container
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainer
          end
          def storage_classification
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassification
          end
          def storage_classification_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMapping
          end
          def replication_protected_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItem
          end
          def vault_health_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VaultHealthDetails
          end
          def policy
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy
          end
          def vcenter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenter
          end
          def vmm_to_vmm_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmNetworkMappingSettings
          end
          def network
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Network
          end
          def vmm_to_azure_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureNetworkMappingSettings
          end
          def vmm_to_vmm_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmCreateNetworkMappingInput
          end
          def azure_to_azure_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureCreateNetworkMappingInput
          end
          def azure_to_azure_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureNetworkMappingSettings
          end
          def recovery_point
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPoint
          end
          def azure_to_azure_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureUpdateNetworkMappingInput
          end
          def vmm_to_azure_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureUpdateNetworkMappingInput
          end
          def vmm_to_azure_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureCreateNetworkMappingInput
          end
          def azure_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureFabricSpecificDetails
          end
          def vmm_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmDetails
          end
          def hyper_vsite_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVSiteDetails
          end
          def vmm_to_vmm_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmUpdateNetworkMappingInput
          end
          def vmware_v2_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareV2FabricSpecificDetails
          end
          def hyper_vreplica_base_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBaseReplicationDetails
          end
          def hyper_vreplica_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaReplicationDetails
          end
          def vmware_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareDetails
          end
          def hyper_vreplica_azure_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureReplicationDetails
          end
          def in_mage_azure_v2_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ReplicationDetails
          end
          def job
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job
          end
          def hyper_vreplica_blue_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBlueReplicationDetails
          end
          def hyper_vreplica_azure_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureEnableProtectionInput
          end
          def san_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SanEnableProtectionInput
          end
          def in_mage_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageReplicationDetails
          end
          def a2_areplication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AReplicationDetails
          end
          def a2_aenable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AEnableProtectionInput
          end
          def hyper_vreplica_azure_update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureUpdateReplicationProtectedItemInput
          end
          def in_mage_azure_v2_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2EnableProtectionInput
          end
          def in_mage_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageEnableProtectionInput
          end
          def hyper_vreplica_base_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBaseEventDetails
          end
          def hyper_vreplica2012_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplica2012EventDetails
          end
          def in_mage_azure_v2_update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2UpdateReplicationProtectedItemInput
          end
          def a2_aupdate_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AUpdateReplicationProtectedItemInput
          end
          def a2_aevent_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AEventDetails
          end
          def in_mage_azure_v2_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2EventDetails
          end
          def hyper_vreplica2012_r2_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplica2012R2EventDetails
          end
          def hyper_vreplica_azure_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureEventDetails
          end
          def vmware_virtual_machine_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareVirtualMachineDetails
          end
          def replication_group_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationGroupDetails
          end
          def job_status_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobStatusEventDetails
          end
          def hyper_vvirtual_machine_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVVirtualMachineDetails
          end
          def hyper_vreplica_azure_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureFailoverProviderInput
          end
          def hyper_vreplica_azure_failback_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureFailbackProviderInput
          end
          def in_mage_azure_v2_recovery_point_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2RecoveryPointDetails
          end
          def in_mage_disable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDisableProtectionProviderSpecificInput
          end
          def a2_afailover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AFailoverProviderInput
          end
          def hyper_vreplica_azure_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureReprotectInput
          end
          def in_mage_azure_v2_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2FailoverProviderInput
          end
          def in_mage_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageFailoverProviderInput
          end
          def a2_areprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AReprotectInput
          end
          def hyper_vreplica_azure_apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureApplyRecoveryPointInput
          end
          def in_mage_azure_v2_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ReprotectInput
          end
          def in_mage_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageReprotectInput
          end
          def job_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobTaskDetails
          end
          def virtual_machine_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VirtualMachineTaskDetails
          end
          def in_mage_azure_v2_apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ApplyRecoveryPointInput
          end
          def a2_aapply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AApplyRecoveryPointInput
          end
          def script_action_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ScriptActionTaskDetails
          end
          def vm_nic_updates_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmNicUpdatesTaskDetails
          end
          def fabric_replication_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricReplicationGroupTaskDetails
          end
          def manual_action_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ManualActionTaskDetails
          end
          def inline_workflow_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InlineWorkflowTaskDetails
          end
          def recovery_plan_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroupTaskDetails
          end
          def consistency_check_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConsistencyCheckTaskDetails
          end
          def automation_runbook_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AutomationRunbookTaskDetails
          end
          def test_failover_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverJobDetails
          end
          def failover_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverJobDetails
          end
          def recovery_plan_shutdown_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanShutdownGroupTaskDetails
          end
          def asr_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AsrJobDetails
          end
          def a2_acontainer_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AContainerCreationInput
          end
          def a2_aswitch_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2ASwitchProtectionInput
          end
          def export_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ExportJobDetails
          end
          def switch_protection_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionJobDetails
          end
          def hyper_vreplica_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaPolicyDetails
          end
          def hyper_vreplica_blue_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBluePolicyDetails
          end
          def hyper_vreplica_azure_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzurePolicyDetails
          end
          def hyper_vreplica_base_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBasePolicyDetails
          end
          def in_mage_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMagePolicyDetails
          end
          def a2_apolicy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2APolicyDetails
          end
          def in_mage_base_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageBasePolicyDetails
          end
          def in_mage_azure_v2_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2PolicyDetails
          end
          def hyper_vreplica_azure_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzurePolicyInput
          end
          def hyper_vreplica_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaPolicyInput
          end
          def rcm_azure_migration_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RcmAzureMigrationPolicyDetails
          end
          def vmware_cbt_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmwareCbtPolicyDetails
          end
          def in_mage_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMagePolicyInput
          end
          def a2_apolicy_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2APolicyCreationInput
          end
          def hyper_vreplica_blue_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBluePolicyInput
          end
          def in_mage_azure_v2_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2PolicyInput
          end
          def recovery_plan_automation_runbook_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanAutomationRunbookActionDetails
          end
          def recovery_plan_manual_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanManualActionDetails
          end
          def event
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Event
          end
          def recovery_plan_script_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanScriptActionDetails
          end
          def recovery_plan_in_mage_azure_v2_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanInMageAzureV2FailoverInput
          end
          def recovery_plan_in_mage_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanInMageFailoverInput
          end
          def recovery_plan_hyper_vreplica_azure_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailoverInput
          end
          def vmware_cbt_policy_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareCbtPolicyCreationInput
          end
          def vmware_v2_fabric_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareV2FabricCreationInput
          end
          def recovery_plan_group_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroupType
          end
          def recovery_plan_a2_afailover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanA2AFailoverInput
          end
          def azure_fabric_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureFabricCreationInput
          end
          def recovery_plan_hyper_vreplica_azure_failback_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailbackInput
          end
          def policy_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyCollection
          end
          def replication_protected_item_operation
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemOperation
          end
          def possible_operations_directions
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PossibleOperationsDirections
          end
          def failover_deployment_model
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverDeploymentModel
          end
          def role_assignment
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RoleAssignment
          end
          def license_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LicenseType
          end
          def disable_protection_reason
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionReason
          end
          def health_error_category
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthErrorCategory
          end
          def recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPointType
          end
          def source_site_operations
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SourceSiteOperations
          end
          def set_multi_vm_sync_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SetMultiVmSyncStatus
          end
          def recovery_plan_action_location
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanActionLocation
          end
          def hyper_vreplica_azure_rp_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureRpRecoveryPointType
          end
          def data_sync_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DataSyncStatus
          end
          def multi_vm_sync_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MultiVmSyncStatus
          end
          def in_mage_v2_rp_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageV2RpRecoveryPointType
          end
          def rp_in_mage_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RpInMageRecoveryPointType
          end
          def a2_arp_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2ARpRecoveryPointType
          end
          def alternate_location_recovery_option
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlternateLocationRecoveryOption
          end
          def job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobDetails
          end
          def severity
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Severity
          end
          def job_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobCollection
          end
          def identity_provider_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::IdentityProviderType
          end
          def resource
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Resource
          end
          def storage_classification_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationProperties
          end
          def create_recovery_plan_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateRecoveryPlanInput
          end
          def recovery_plan_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanActionDetails
          end
          def alert_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlertCollection
          end
          def recovery_plan_action
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanAction
          end
          def configure_alert_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigureAlertRequest
          end
          def recovery_plan_group
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroup
          end
          def event_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventSpecificDetails
          end
          def recovery_plan_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanProperties
          end
          def event_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventProperties
          end
          def run_as_account
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RunAsAccount
          end
          def event_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventCollection
          end
          def recovery_plan_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanCollection
          end
          def create_recovery_plan_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateRecoveryPlanInputProperties
          end
          def fabric_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricProperties
          end
          def master_target_server
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MasterTargetServer
          end
          def fabric_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricCollection
          end
          def update_recovery_plan_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateRecoveryPlanInputProperties
          end
          def fabric_creation_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricCreationInputProperties
          end
          def update_recovery_plan_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateRecoveryPlanInput
          end
          def failover_process_server_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverProcessServerRequestProperties
          end
          def recovery_plan_provider_specific_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanProviderSpecificFailoverInput
          end
          def task_type_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TaskTypeDetails
          end
          def recovery_plan_planned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanPlannedFailoverInputProperties
          end
          def service_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ServiceError
          end
          def recovery_plan_planned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanPlannedFailoverInput
          end
          def job_error_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobErrorDetails
          end
          def recovery_plan_unplanned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanUnplannedFailoverInputProperties
          end
          def recovery_plan_unplanned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanUnplannedFailoverInput
          end
          def armexception_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ARMExceptionDetails
          end
          def recovery_plan_test_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanTestFailoverInputProperties
          end
          def arminner_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ARMInnerError
          end
          def recovery_plan_test_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanTestFailoverInput
          end
          def subnet
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Subnet
          end
          def in_mage_azure_v2_protected_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ProtectedDiskDetails
          end
          def recovery_plan_test_failover_cleanup_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanTestFailoverCleanupInputProperties
          end
          def job_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobQueryParameter
          end
          def recovery_plan_test_failover_cleanup_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanTestFailoverCleanupInput
          end
          def resume_job_params
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResumeJobParams
          end
          def provider_specific_recovery_point_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderSpecificRecoveryPointDetails
          end
          def osdisk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OSDiskDetails
          end
          def recovery_point_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPointProperties
          end
          def network_mapping_fabric_specific_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingFabricSpecificSettings
          end
          def data_store
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DataStore
          end
          def in_mage_protected_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageProtectedDiskDetails
          end
          def recovery_point_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPointCollection
          end
          def create_network_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateNetworkMappingInputProperties
          end
          def identity_information
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::IdentityInformation
          end
          def fabric_specific_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificUpdateNetworkMappingInput
          end
          def recovery_services_provider_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryServicesProviderProperties
          end
          def update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateNetworkMappingInput
          end
          def retention_volume
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RetentionVolume
          end
          def network_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkProperties
          end
          def recovery_services_provider_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryServicesProviderCollection
          end
          def network_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkCollection
          end
          def replication_provider_specific_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificSettings
          end
          def operations_discovery
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OperationsDiscovery
          end
          def replication_protected_item_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemProperties
          end
          def display
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Display
          end
          def process_server
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProcessServer
          end
          def policy_provider_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProviderSpecificDetails
          end
          def enable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionProviderSpecificInput
          end
          def initial_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InitialReplicationDetails
          end
          def enable_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionInputProperties
          end
          def policy_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProviderSpecificInput
          end
          def enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionInput
          end
          def create_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInput
          end
          def vmnic_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMNicInputDetails
          end
          def update_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInput
          end
          def update_replication_protected_item_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemProviderInput
          end
          def protectable_item_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItemProperties
          end
          def update_replication_protected_item_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemInputProperties
          end
          def protectable_item_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItemCollection
          end
          def update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemInput
          end
          def protection_container_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingProperties
          end
          def disable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionProviderSpecificInput
          end
          def protection_container_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingCollection
          end
          def disable_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionInputProperties
          end
          def create_protection_container_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerMappingInputProperties
          end
          def disable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionInput
          end
          def replication_provider_container_unmapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderContainerUnmappingInput
          end
          def provider_specific_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderSpecificFailoverInput
          end
          def remove_protection_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RemoveProtectionContainerMappingInput
          end
          def planned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PlannedFailoverInputProperties
          end
          def protection_container_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerProperties
          end
          def planned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PlannedFailoverInput
          end
          def protection_container_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerCollection
          end
          def unplanned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UnplannedFailoverInputProperties
          end
          def create_protection_container_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerInputProperties
          end
          def unplanned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UnplannedFailoverInput
          end
          def discover_protectable_item_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiscoverProtectableItemRequestProperties
          end
          def test_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverInputProperties
          end
          def switch_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionProviderSpecificInput
          end
          def test_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverInput
          end
          def switch_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionInput
          end
          def test_failover_cleanup_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverCleanupInputProperties
          end
          def recovery_plan_protected_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanProtectedItem
          end
          def test_failover_cleanup_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverCleanupInput
          end
          def event_provider_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventProviderSpecificDetails
          end
          def reverse_replication_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationProviderSpecificInput
          end
          def osdetails
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OSDetails
          end
          def reverse_replication_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationInputProperties
          end
          def fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificDetails
          end
          def reverse_replication_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationInput
          end
          def fabric_specific_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificCreationInput
          end
          def update_mobility_service_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateMobilityServiceRequestProperties
          end
          def failover_process_server_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverProcessServerRequest
          end
          def update_mobility_service_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateMobilityServiceRequest
          end
          def provider_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderError
          end
          def apply_recovery_point_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointProviderSpecificInput
          end
          def job_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobProperties
          end
          def apply_recovery_point_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointInputProperties
          end
          def armexception
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ARMException
          end
          def apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointInput
          end
          def resume_job_params_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResumeJobParamsProperties
          end
          def alert_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlertProperties
          end
          def logical_network_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetworkCollection
          end
          def update_network_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateNetworkMappingInputProperties
          end
          def fabric_specific_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificCreateNetworkMappingInput
          end
          def disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiskDetails
          end
          def storage_classification_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationCollection
          end
          def operations_discovery_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OperationsDiscoveryCollection
          end
          def storage_classification_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingProperties
          end
          def storage_classification_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingCollection
          end
          def failover_replication_protected_item_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverReplicationProtectedItemDetails
          end
          def storage_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageMappingInputProperties
          end
          def update_policy_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInputProperties
          end
          def storage_classification_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingInput
          end
          def vmnic_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMNicDetails
          end
          def vcenter_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenterProperties
          end
          def in_mage_agent_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAgentDetails
          end
          def inconsistent_vm_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InconsistentVmDetails
          end
          def create_protection_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerMappingInput
          end
          def vcenter_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenterCollection
          end
          def protection_container_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerFabricSpecificDetails
          end
          def add_vcenter_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AddVCenterRequestProperties
          end
          def replication_provider_specific_container_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificContainerCreationInput
          end
          def add_vcenter_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AddVCenterRequest
          end
          def discover_protectable_item_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiscoverProtectableItemRequest
          end
          def update_vcenter_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateVCenterRequestProperties
          end
          def current_scenario_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CurrentScenarioDetails
          end
          def update_vcenter_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateVCenterRequest
          end
          def health_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthError
          end
          def renew_certificate_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RenewCertificateInputProperties
          end
          def azure_vm_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureVmDiskDetails
          end
          def renew_certificate_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RenewCertificateInput
          end
          def group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::GroupTaskDetails
          end
          def network_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingCollection
          end
          def method_call_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MethodCallStatus
          end
          def replication_protected_item_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemCollection
          end
          def logical_network_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetworkProperties
          end
          def protected_items_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectedItemsQueryParameter
          end
          def create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateNetworkMappingInput
          end
          def resource_health_summary
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResourceHealthSummary
          end
        end
      end
    end
  end
end
