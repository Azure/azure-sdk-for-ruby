# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services_site_recovery'

module Azure::Profiles::Latest
  module RecoveryServicesSiteRecovery
    module Mgmt
      ReplicationVaultHealth = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationVaultHealth
      RecoveryPoints = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::RecoveryPoints
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
      ReplicationProtectableItems = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationProtectableItems
      ReplicationPolicies = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationPolicies
      ReplicationNetworks = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationNetworks
      ReplicationLogicalNetworks = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationLogicalNetworks
      ReplicationJobs = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationJobs
      Operations = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Operations
      ReplicationAlertSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationAlertSettings
      ReplicationEvents = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::ReplicationEvents

      module Models
        HyperVReplicaAzureEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureEventDetails
        HyperVReplicaBaseEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBaseEventDetails
        HyperVReplica2012EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplica2012EventDetails
        JobStatusEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobStatusEventDetails
        HyperVVirtualMachineDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVVirtualMachineDetails
        A2AEventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AEventDetails
        InMageAzureV2EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2EventDetails
        InMageAzureV2RecoveryPointDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2RecoveryPointDetails
        InMageDisableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDisableProtectionProviderSpecificInput
        VMwareVirtualMachineDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareVirtualMachineDetails
        ReplicationGroupDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationGroupDetails
        InMageAzureV2FailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2FailoverProviderInput
        InMageFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageFailoverProviderInput
        HyperVReplicaAzureFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureFailoverProviderInput
        HyperVReplicaAzureFailbackProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureFailbackProviderInput
        InMageAzureV2ReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ReprotectInput
        InMageReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageReprotectInput
        A2AFailoverProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AFailoverProviderInput
        HyperVReplicaAzureReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureReprotectInput
        InMageAzureV2ApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ApplyRecoveryPointInput
        A2AApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AApplyRecoveryPointInput
        A2AReprotectInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AReprotectInput
        HyperVReplicaAzureApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureApplyRecoveryPointInput
        FabricReplicationGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricReplicationGroupTaskDetails
        ManualActionTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ManualActionTaskDetails
        JobTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobTaskDetails
        VirtualMachineTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VirtualMachineTaskDetails
        ConsistencyCheckTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConsistencyCheckTaskDetails
        AutomationRunbookTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AutomationRunbookTaskDetails
        ScriptActionTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ScriptActionTaskDetails
        VmNicUpdatesTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmNicUpdatesTaskDetails
        RecoveryPlanShutdownGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanShutdownGroupTaskDetails
        AsrJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AsrJobDetails
        InlineWorkflowTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InlineWorkflowTaskDetails
        RecoveryPlanGroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroupTaskDetails
        ExportJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ExportJobDetails
        SwitchProtectionJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionJobDetails
        TestFailoverJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverJobDetails
        FailoverJobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverJobDetails
        HyperVReplicaAzurePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzurePolicyDetails
        HyperVReplicaBasePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBasePolicyDetails
        A2AContainerCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AContainerCreationInput
        A2ASwitchProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2ASwitchProtectionInput
        InMageBasePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageBasePolicyDetails
        InMageAzureV2PolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2PolicyDetails
        HyperVReplicaPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaPolicyDetails
        HyperVReplicaBluePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBluePolicyDetails
        RcmAzureMigrationPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RcmAzureMigrationPolicyDetails
        VmwareCbtPolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmwareCbtPolicyDetails
        InMagePolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMagePolicyDetails
        A2APolicyDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2APolicyDetails
        HyperVReplicaBluePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBluePolicyInput
        InMageAzureV2PolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2PolicyInput
        HyperVReplicaAzurePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzurePolicyInput
        HyperVReplicaPolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaPolicyInput
        VMwareCbtPolicyCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareCbtPolicyCreationInput
        RecoveryPlanScriptActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanScriptActionDetails
        InMagePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMagePolicyInput
        A2APolicyCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2APolicyCreationInput
        RecoveryPlanHyperVReplicaAzureFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailoverInput
        RecoveryPlanHyperVReplicaAzureFailbackInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailbackInput
        RecoveryPlanAutomationRunbookActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanAutomationRunbookActionDetails
        RecoveryPlanManualActionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanManualActionDetails
        RecoveryPlanA2AFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanA2AFailoverInput
        Job = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job
        RecoveryPlanInMageAzureV2FailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanInMageAzureV2FailoverInput
        RecoveryPlanInMageFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanInMageFailoverInput
        ReplicationProtectedItemOperation = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemOperation
        AzureFabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureFabricCreationInput
        VMwareV2FabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareV2FabricCreationInput
        RecoveryPlanGroupType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroupType
        LicenseType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LicenseType
        PossibleOperationsDirections = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PossibleOperationsDirections
        FailoverDeploymentModel = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverDeploymentModel
        SourceSiteOperations = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SourceSiteOperations
        MultiVmSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MultiVmSyncStatus
        DisableProtectionReason = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionReason
        HealthErrorCategory = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthErrorCategory
        RecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPointType
        DataSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DataSyncStatus
        SetMultiVmSyncStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SetMultiVmSyncStatus
        RecoveryPlanActionLocation = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanActionLocation
        HyperVReplicaAzureRpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureRpRecoveryPointType
        A2ARpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2ARpRecoveryPointType
        AlternateLocationRecoveryOption = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlternateLocationRecoveryOption
        InMageV2RpRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageV2RpRecoveryPointType
        RpInMageRecoveryPointType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RpInMageRecoveryPointType
        IdentityProviderType = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::IdentityProviderType
        Event = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Event
        RoleAssignment = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RoleAssignment
        PolicyCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyCollection
        JobDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobDetails
        JobCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobCollection
        Severity = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Severity
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
        PolicyProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProviderSpecificDetails
        ProcessServer = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProcessServer
        InitialReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InitialReplicationDetails
        EnableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionProviderSpecificInput
        PolicyProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProviderSpecificInput
        EnableProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionInputProperties
        CreatePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInput
        EnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionInput
        UpdatePolicyInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInput
        VMNicInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMNicInputDetails
        ProtectableItemProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItemProperties
        UpdateReplicationProtectedItemProviderInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemProviderInput
        ProtectableItemCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItemCollection
        UpdateReplicationProtectedItemInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemInputProperties
        ProtectionContainerMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingProperties
        UpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemInput
        ProtectionContainerMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingCollection
        DisableProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionProviderSpecificInput
        CreateProtectionContainerMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerMappingInputProperties
        DisableProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionInputProperties
        ReplicationProviderContainerUnmappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderContainerUnmappingInput
        DisableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionInput
        RemoveProtectionContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RemoveProtectionContainerMappingInput
        ProviderSpecificFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderSpecificFailoverInput
        ProtectionContainerProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerProperties
        PlannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PlannedFailoverInputProperties
        ProtectionContainerCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerCollection
        PlannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PlannedFailoverInput
        CreateProtectionContainerInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerInputProperties
        UnplannedFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UnplannedFailoverInputProperties
        DiscoverProtectableItemRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiscoverProtectableItemRequestProperties
        UnplannedFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UnplannedFailoverInput
        SwitchProtectionProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionProviderSpecificInput
        TestFailoverInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverInputProperties
        SwitchProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionInput
        TestFailoverInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverInput
        RecoveryPlanProtectedItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanProtectedItem
        TestFailoverCleanupInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverCleanupInputProperties
        EventProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventProviderSpecificDetails
        TestFailoverCleanupInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverCleanupInput
        OSDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OSDetails
        ReverseReplicationProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationProviderSpecificInput
        FabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificDetails
        ReverseReplicationInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationInputProperties
        FabricSpecificCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificCreationInput
        ReverseReplicationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationInput
        FailoverProcessServerRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverProcessServerRequest
        UpdateMobilityServiceRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateMobilityServiceRequestProperties
        ProviderError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderError
        UpdateMobilityServiceRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateMobilityServiceRequest
        JobProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobProperties
        ApplyRecoveryPointProviderSpecificInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointProviderSpecificInput
        ARMException = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ARMException
        ApplyRecoveryPointInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointInputProperties
        ResumeJobParamsProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResumeJobParamsProperties
        ApplyRecoveryPointInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointInput
        LogicalNetworkCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetworkCollection
        AlertProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlertProperties
        FabricSpecificCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificCreateNetworkMappingInput
        UpdateNetworkMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateNetworkMappingInputProperties
        StorageClassificationCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationCollection
        DiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiskDetails
        StorageClassificationMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingProperties
        OperationsDiscoveryCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OperationsDiscoveryCollection
        FailoverReplicationProtectedItemDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverReplicationProtectedItemDetails
        StorageClassificationMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingCollection
        UpdatePolicyInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInputProperties
        StorageMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageMappingInputProperties
        VMNicDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMNicDetails
        StorageClassificationMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingInput
        InMageAgentDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAgentDetails
        VCenterProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenterProperties
        CreateProtectionContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerMappingInput
        InconsistentVmDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InconsistentVmDetails
        ProtectionContainerFabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerFabricSpecificDetails
        VCenterCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenterCollection
        ReplicationProviderSpecificContainerCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificContainerCreationInput
        AddVCenterRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AddVCenterRequestProperties
        DiscoverProtectableItemRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiscoverProtectableItemRequest
        AddVCenterRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AddVCenterRequest
        CurrentScenarioDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CurrentScenarioDetails
        UpdateVCenterRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateVCenterRequestProperties
        HealthError = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthError
        UpdateVCenterRequest = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateVCenterRequest
        AzureVmDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureVmDiskDetails
        RenewCertificateInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RenewCertificateInputProperties
        GroupTaskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::GroupTaskDetails
        RenewCertificateInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RenewCertificateInput
        MethodCallStatus = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MethodCallStatus
        NetworkMappingCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingCollection
        LogicalNetworkProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetworkProperties
        ReplicationProtectedItemCollection = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemCollection
        CreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateNetworkMappingInput
        ProtectedItemsQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectedItemsQueryParameter
        HealthErrorSummary = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthErrorSummary
        CreatePolicyInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInputProperties
        ResourceHealthSummary = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResourceHealthSummary
        ProtectionContainerMappingProviderSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingProviderSpecificDetails
        VaultHealthProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VaultHealthProperties
        RemoveProtectionContainerMappingInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RemoveProtectionContainerMappingInputProperties
        JobEntity = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobEntity
        CreateProtectionContainerInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerInput
        InMageDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskDetails
        ConfigureAlertRequestProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigureAlertRequestProperties
        DiskVolumeDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiskVolumeDetails
        FabricCreationInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricCreationInput
        Display = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Display
        A2AVmManagedDiskInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AVmManagedDiskInputDetails
        Subnet = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Subnet
        ConfigurationSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigurationSettings
        EncryptionDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EncryptionDetails
        A2AProtectedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AProtectedDiskDetails
        Resource = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Resource
        A2AVmDiskInputDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AVmDiskInputDetails
        InMageDiskSignatureExclusionOptions = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskSignatureExclusionOptions
        InMageDiskExclusionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskExclusionInput
        InMageVolumeExclusionOptions = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageVolumeExclusionOptions
        NetworkMappingProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingProperties
        EventQueryParameter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventQueryParameter
        ReplicationProviderSpecificContainerMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificContainerMappingInput
        InputEndpoint = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InputEndpoint
        AzureToAzureVmSyncedConfigDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureVmSyncedConfigDetails
        SwitchProtectionInputProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionInputProperties
        A2AProtectedManagedDiskDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AProtectedManagedDiskDetails
        ASRTask = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ASRTask
        MobilityServiceUpdate = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MobilityServiceUpdate
        Alert = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Alert
        PolicyProperties = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProperties
        LogicalNetwork = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetwork
        NetworkMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMapping
        Fabric = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Fabric
        ProtectionContainerMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMapping
        Policy = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy
        ProtectableItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItem
        ProtectionContainer = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainer
        Network = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Network
        RecoveryServicesProvider = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryServicesProvider
        ReplicationProtectedItem = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItem
        StorageClassification = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassification
        RecoveryPlan = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlan
        VCenter = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenter
        VaultHealthDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VaultHealthDetails
        AzureToAzureNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureNetworkMappingSettings
        StorageClassificationMapping = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMapping
        VmmToVmmNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmNetworkMappingSettings
        AzureToAzureCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureCreateNetworkMappingInput
        VmmToAzureCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureCreateNetworkMappingInput
        RecoveryPoint = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPoint
        AzureToAzureUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureUpdateNetworkMappingInput
        VmmToAzureUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureUpdateNetworkMappingInput
        VmmToVmmUpdateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmUpdateNetworkMappingInput
        VmmToVmmCreateNetworkMappingInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmCreateNetworkMappingInput
        VmmToAzureNetworkMappingSettings = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureNetworkMappingSettings
        HyperVSiteDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVSiteDetails
        VMwareDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareDetails
        AzureFabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureFabricSpecificDetails
        VmmDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmDetails
        HyperVReplicaReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaReplicationDetails
        HyperVReplicaBlueReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBlueReplicationDetails
        VMwareV2FabricSpecificDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareV2FabricSpecificDetails
        HyperVReplicaBaseReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBaseReplicationDetails
        InMageReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageReplicationDetails
        A2AReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AReplicationDetails
        HyperVReplicaAzureReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureReplicationDetails
        InMageAzureV2ReplicationDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ReplicationDetails
        InMageAzureV2EnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2EnableProtectionInput
        InMageEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageEnableProtectionInput
        HyperVReplicaAzureEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureEnableProtectionInput
        SanEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SanEnableProtectionInput
        InMageAzureV2UpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2UpdateReplicationProtectedItemInput
        A2AUpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AUpdateReplicationProtectedItemInput
        A2AEnableProtectionInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AEnableProtectionInput
        HyperVReplicaAzureUpdateReplicationProtectedItemInput = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureUpdateReplicationProtectedItemInput
        HyperVReplica2012R2EventDetails = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplica2012R2EventDetails
      end

      class RecoveryServicesSiteRecoveryManagementClass
        attr_reader :replication_vault_health, :recovery_points, :replication_protected_items, :replication_network_mappings, :replication_fabrics, :replicationv_centers, :replication_storage_classification_mappings, :replication_storage_classifications, :replication_recovery_services_providers, :replication_recovery_plans, :replication_protection_containers, :replication_protection_container_mappings, :replication_protectable_items, :replication_policies, :replication_networks, :replication_logical_networks, :replication_jobs, :operations, :replication_alert_settings, :replication_events, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::SiteRecoveryManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @replication_vault_health = @client_0.replication_vault_health
          @recovery_points = @client_0.recovery_points
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
          @replication_protectable_items = @client_0.replication_protectable_items
          @replication_policies = @client_0.replication_policies
          @replication_networks = @client_0.replication_networks
          @replication_logical_networks = @client_0.replication_logical_networks
          @replication_jobs = @client_0.replication_jobs
          @operations = @client_0.operations
          @replication_alert_settings = @client_0.replication_alert_settings
          @replication_events = @client_0.replication_events

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
          def hyper_vreplica_azure_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureEventDetails
          end
          def hyper_vreplica_base_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBaseEventDetails
          end
          def hyper_vreplica2012_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplica2012EventDetails
          end
          def job_status_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobStatusEventDetails
          end
          def hyper_vvirtual_machine_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVVirtualMachineDetails
          end
          def a2_aevent_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AEventDetails
          end
          def in_mage_azure_v2_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2EventDetails
          end
          def in_mage_azure_v2_recovery_point_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2RecoveryPointDetails
          end
          def in_mage_disable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDisableProtectionProviderSpecificInput
          end
          def vmware_virtual_machine_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareVirtualMachineDetails
          end
          def replication_group_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationGroupDetails
          end
          def in_mage_azure_v2_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2FailoverProviderInput
          end
          def in_mage_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageFailoverProviderInput
          end
          def hyper_vreplica_azure_failover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureFailoverProviderInput
          end
          def hyper_vreplica_azure_failback_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureFailbackProviderInput
          end
          def in_mage_azure_v2_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ReprotectInput
          end
          def in_mage_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageReprotectInput
          end
          def a2_afailover_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AFailoverProviderInput
          end
          def hyper_vreplica_azure_reprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureReprotectInput
          end
          def in_mage_azure_v2_apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ApplyRecoveryPointInput
          end
          def a2_aapply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AApplyRecoveryPointInput
          end
          def a2_areprotect_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AReprotectInput
          end
          def hyper_vreplica_azure_apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureApplyRecoveryPointInput
          end
          def fabric_replication_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricReplicationGroupTaskDetails
          end
          def manual_action_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ManualActionTaskDetails
          end
          def job_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobTaskDetails
          end
          def virtual_machine_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VirtualMachineTaskDetails
          end
          def consistency_check_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConsistencyCheckTaskDetails
          end
          def automation_runbook_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AutomationRunbookTaskDetails
          end
          def script_action_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ScriptActionTaskDetails
          end
          def vm_nic_updates_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmNicUpdatesTaskDetails
          end
          def recovery_plan_shutdown_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanShutdownGroupTaskDetails
          end
          def asr_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AsrJobDetails
          end
          def inline_workflow_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InlineWorkflowTaskDetails
          end
          def recovery_plan_group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroupTaskDetails
          end
          def export_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ExportJobDetails
          end
          def switch_protection_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionJobDetails
          end
          def test_failover_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverJobDetails
          end
          def failover_job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverJobDetails
          end
          def hyper_vreplica_azure_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzurePolicyDetails
          end
          def hyper_vreplica_base_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBasePolicyDetails
          end
          def a2_acontainer_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AContainerCreationInput
          end
          def a2_aswitch_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2ASwitchProtectionInput
          end
          def in_mage_base_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageBasePolicyDetails
          end
          def in_mage_azure_v2_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2PolicyDetails
          end
          def hyper_vreplica_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaPolicyDetails
          end
          def hyper_vreplica_blue_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBluePolicyDetails
          end
          def rcm_azure_migration_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RcmAzureMigrationPolicyDetails
          end
          def vmware_cbt_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmwareCbtPolicyDetails
          end
          def in_mage_policy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMagePolicyDetails
          end
          def a2_apolicy_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2APolicyDetails
          end
          def hyper_vreplica_blue_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBluePolicyInput
          end
          def in_mage_azure_v2_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2PolicyInput
          end
          def hyper_vreplica_azure_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzurePolicyInput
          end
          def hyper_vreplica_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaPolicyInput
          end
          def vmware_cbt_policy_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareCbtPolicyCreationInput
          end
          def recovery_plan_script_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanScriptActionDetails
          end
          def in_mage_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMagePolicyInput
          end
          def a2_apolicy_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2APolicyCreationInput
          end
          def recovery_plan_hyper_vreplica_azure_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailoverInput
          end
          def recovery_plan_hyper_vreplica_azure_failback_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailbackInput
          end
          def recovery_plan_automation_runbook_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanAutomationRunbookActionDetails
          end
          def recovery_plan_manual_action_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanManualActionDetails
          end
          def recovery_plan_a2_afailover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanA2AFailoverInput
          end
          def job
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job
          end
          def recovery_plan_in_mage_azure_v2_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanInMageAzureV2FailoverInput
          end
          def recovery_plan_in_mage_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanInMageFailoverInput
          end
          def replication_protected_item_operation
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemOperation
          end
          def azure_fabric_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureFabricCreationInput
          end
          def vmware_v2_fabric_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareV2FabricCreationInput
          end
          def recovery_plan_group_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanGroupType
          end
          def license_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LicenseType
          end
          def possible_operations_directions
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PossibleOperationsDirections
          end
          def failover_deployment_model
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverDeploymentModel
          end
          def source_site_operations
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SourceSiteOperations
          end
          def multi_vm_sync_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MultiVmSyncStatus
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
          def data_sync_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DataSyncStatus
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
          def a2_arp_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2ARpRecoveryPointType
          end
          def alternate_location_recovery_option
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlternateLocationRecoveryOption
          end
          def in_mage_v2_rp_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageV2RpRecoveryPointType
          end
          def rp_in_mage_recovery_point_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RpInMageRecoveryPointType
          end
          def identity_provider_type
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::IdentityProviderType
          end
          def event
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Event
          end
          def role_assignment
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RoleAssignment
          end
          def policy_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyCollection
          end
          def job_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobDetails
          end
          def job_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobCollection
          end
          def severity
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Severity
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
          def policy_provider_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProviderSpecificDetails
          end
          def process_server
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProcessServer
          end
          def initial_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InitialReplicationDetails
          end
          def enable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionProviderSpecificInput
          end
          def policy_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProviderSpecificInput
          end
          def enable_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionInputProperties
          end
          def create_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInput
          end
          def enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EnableProtectionInput
          end
          def update_policy_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInput
          end
          def vmnic_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMNicInputDetails
          end
          def protectable_item_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItemProperties
          end
          def update_replication_protected_item_provider_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemProviderInput
          end
          def protectable_item_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItemCollection
          end
          def update_replication_protected_item_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemInputProperties
          end
          def protection_container_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingProperties
          end
          def update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateReplicationProtectedItemInput
          end
          def protection_container_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMappingCollection
          end
          def disable_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionProviderSpecificInput
          end
          def create_protection_container_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerMappingInputProperties
          end
          def disable_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionInputProperties
          end
          def replication_provider_container_unmapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderContainerUnmappingInput
          end
          def disable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DisableProtectionInput
          end
          def remove_protection_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RemoveProtectionContainerMappingInput
          end
          def provider_specific_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderSpecificFailoverInput
          end
          def protection_container_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerProperties
          end
          def planned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PlannedFailoverInputProperties
          end
          def protection_container_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerCollection
          end
          def planned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PlannedFailoverInput
          end
          def create_protection_container_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerInputProperties
          end
          def unplanned_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UnplannedFailoverInputProperties
          end
          def discover_protectable_item_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiscoverProtectableItemRequestProperties
          end
          def unplanned_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UnplannedFailoverInput
          end
          def switch_protection_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionProviderSpecificInput
          end
          def test_failover_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverInputProperties
          end
          def switch_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionInput
          end
          def test_failover_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverInput
          end
          def recovery_plan_protected_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlanProtectedItem
          end
          def test_failover_cleanup_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverCleanupInputProperties
          end
          def event_provider_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventProviderSpecificDetails
          end
          def test_failover_cleanup_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::TestFailoverCleanupInput
          end
          def osdetails
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OSDetails
          end
          def reverse_replication_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationProviderSpecificInput
          end
          def fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificDetails
          end
          def reverse_replication_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationInputProperties
          end
          def fabric_specific_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificCreationInput
          end
          def reverse_replication_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReverseReplicationInput
          end
          def failover_process_server_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverProcessServerRequest
          end
          def update_mobility_service_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateMobilityServiceRequestProperties
          end
          def provider_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProviderError
          end
          def update_mobility_service_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateMobilityServiceRequest
          end
          def job_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobProperties
          end
          def apply_recovery_point_provider_specific_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointProviderSpecificInput
          end
          def armexception
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ARMException
          end
          def apply_recovery_point_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointInputProperties
          end
          def resume_job_params_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResumeJobParamsProperties
          end
          def apply_recovery_point_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ApplyRecoveryPointInput
          end
          def logical_network_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetworkCollection
          end
          def alert_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AlertProperties
          end
          def fabric_specific_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FabricSpecificCreateNetworkMappingInput
          end
          def update_network_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateNetworkMappingInputProperties
          end
          def storage_classification_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationCollection
          end
          def disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiskDetails
          end
          def storage_classification_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingProperties
          end
          def operations_discovery_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::OperationsDiscoveryCollection
          end
          def failover_replication_protected_item_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::FailoverReplicationProtectedItemDetails
          end
          def storage_classification_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingCollection
          end
          def update_policy_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInputProperties
          end
          def storage_mapping_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageMappingInputProperties
          end
          def vmnic_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMNicDetails
          end
          def storage_classification_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMappingInput
          end
          def in_mage_agent_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAgentDetails
          end
          def vcenter_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenterProperties
          end
          def create_protection_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateProtectionContainerMappingInput
          end
          def inconsistent_vm_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InconsistentVmDetails
          end
          def protection_container_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerFabricSpecificDetails
          end
          def vcenter_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenterCollection
          end
          def replication_provider_specific_container_creation_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificContainerCreationInput
          end
          def add_vcenter_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AddVCenterRequestProperties
          end
          def discover_protectable_item_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::DiscoverProtectableItemRequest
          end
          def add_vcenter_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AddVCenterRequest
          end
          def current_scenario_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CurrentScenarioDetails
          end
          def update_vcenter_request_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateVCenterRequestProperties
          end
          def health_error
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthError
          end
          def update_vcenter_request
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdateVCenterRequest
          end
          def azure_vm_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureVmDiskDetails
          end
          def renew_certificate_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RenewCertificateInputProperties
          end
          def group_task_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::GroupTaskDetails
          end
          def renew_certificate_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RenewCertificateInput
          end
          def method_call_status
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MethodCallStatus
          end
          def network_mapping_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingCollection
          end
          def logical_network_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetworkProperties
          end
          def replication_protected_item_collection
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItemCollection
          end
          def create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreateNetworkMappingInput
          end
          def protected_items_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectedItemsQueryParameter
          end
          def health_error_summary
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HealthErrorSummary
          end
          def create_policy_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInputProperties
          end
          def resource_health_summary
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResourceHealthSummary
          end
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
          def display
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Display
          end
          def a2_avm_managed_disk_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AVmManagedDiskInputDetails
          end
          def subnet
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Subnet
          end
          def configuration_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ConfigurationSettings
          end
          def encryption_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EncryptionDetails
          end
          def a2_aprotected_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AProtectedDiskDetails
          end
          def resource
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Resource
          end
          def a2_avm_disk_input_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AVmDiskInputDetails
          end
          def in_mage_disk_signature_exclusion_options
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskSignatureExclusionOptions
          end
          def in_mage_disk_exclusion_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageDiskExclusionInput
          end
          def in_mage_volume_exclusion_options
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageVolumeExclusionOptions
          end
          def network_mapping_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMappingProperties
          end
          def event_query_parameter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::EventQueryParameter
          end
          def replication_provider_specific_container_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProviderSpecificContainerMappingInput
          end
          def input_endpoint
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InputEndpoint
          end
          def azure_to_azure_vm_synced_config_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureVmSyncedConfigDetails
          end
          def switch_protection_input_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SwitchProtectionInputProperties
          end
          def a2_aprotected_managed_disk_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AProtectedManagedDiskDetails
          end
          def asrtask
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ASRTask
          end
          def mobility_service_update
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::MobilityServiceUpdate
          end
          def alert
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Alert
          end
          def policy_properties
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyProperties
          end
          def logical_network
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::LogicalNetwork
          end
          def network_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::NetworkMapping
          end
          def fabric
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Fabric
          end
          def protection_container_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainerMapping
          end
          def policy
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy
          end
          def protectable_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectableItem
          end
          def protection_container
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ProtectionContainer
          end
          def network
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Network
          end
          def recovery_services_provider
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryServicesProvider
          end
          def replication_protected_item
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ReplicationProtectedItem
          end
          def storage_classification
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassification
          end
          def recovery_plan
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::RecoveryPlan
          end
          def vcenter
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VCenter
          end
          def vault_health_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VaultHealthDetails
          end
          def azure_to_azure_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureNetworkMappingSettings
          end
          def storage_classification_mapping
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::StorageClassificationMapping
          end
          def vmm_to_vmm_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmNetworkMappingSettings
          end
          def azure_to_azure_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureToAzureCreateNetworkMappingInput
          end
          def vmm_to_azure_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureCreateNetworkMappingInput
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
          def vmm_to_vmm_update_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmUpdateNetworkMappingInput
          end
          def vmm_to_vmm_create_network_mapping_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToVmmCreateNetworkMappingInput
          end
          def vmm_to_azure_network_mapping_settings
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmToAzureNetworkMappingSettings
          end
          def hyper_vsite_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVSiteDetails
          end
          def vmware_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareDetails
          end
          def azure_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::AzureFabricSpecificDetails
          end
          def vmm_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VmmDetails
          end
          def hyper_vreplica_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaReplicationDetails
          end
          def hyper_vreplica_blue_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBlueReplicationDetails
          end
          def vmware_v2_fabric_specific_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::VMwareV2FabricSpecificDetails
          end
          def hyper_vreplica_base_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaBaseReplicationDetails
          end
          def in_mage_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageReplicationDetails
          end
          def a2_areplication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AReplicationDetails
          end
          def hyper_vreplica_azure_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureReplicationDetails
          end
          def in_mage_azure_v2_replication_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2ReplicationDetails
          end
          def in_mage_azure_v2_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2EnableProtectionInput
          end
          def in_mage_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageEnableProtectionInput
          end
          def hyper_vreplica_azure_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureEnableProtectionInput
          end
          def san_enable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::SanEnableProtectionInput
          end
          def in_mage_azure_v2_update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::InMageAzureV2UpdateReplicationProtectedItemInput
          end
          def a2_aupdate_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AUpdateReplicationProtectedItemInput
          end
          def a2_aenable_protection_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::A2AEnableProtectionInput
          end
          def hyper_vreplica_azure_update_replication_protected_item_input
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplicaAzureUpdateReplicationProtectedItemInput
          end
          def hyper_vreplica2012_r2_event_details
            Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::HyperVReplica2012R2EventDetails
          end
        end
      end
    end
  end
end
