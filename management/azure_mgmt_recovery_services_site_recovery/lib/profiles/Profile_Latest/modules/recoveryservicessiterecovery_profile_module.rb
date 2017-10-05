# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_recovery_services_site_recovery'


module Azure::Profiles::RecoveryServicesSiteRecoveryModule::Management::Profile_Latest
  module RecoveryServicesSiteRecovery
    ReplicationVaultHealth = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationVaultHealth
    ReplicationProtectedItems = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationProtectedItems
    ReplicationNetworkMappings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationNetworkMappings
    ReplicationFabrics = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationFabrics
    ReplicationvCenters = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationvCenters
    ReplicationStorageClassificationMappings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationStorageClassificationMappings
    ReplicationStorageClassifications = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationStorageClassifications
    ReplicationRecoveryServicesProviders = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationRecoveryServicesProviders
    RecoveryPoints = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::RecoveryPoints
    ReplicationRecoveryPlans = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationRecoveryPlans
    ReplicationProtectionContainers = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationProtectionContainers
    ReplicationProtectionContainerMappings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationProtectionContainerMappings
    ReplicationProtectableItems = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationProtectableItems
    ReplicationPolicies = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationPolicies
    Operations = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Operations
    ReplicationNetworks = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationNetworks
    ReplicationLogicalNetworks = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationLogicalNetworks
    ReplicationJobs = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationJobs
    ReplicationEvents = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationEvents
    ReplicationAlertSettings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationAlertSettings

    module Models
      StorageClassificationProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationProperties
      CreateRecoveryPlanInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateRecoveryPlanInput
      RecoveryPlanActionDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanActionDetails
      AlertCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AlertCollection
      RecoveryPlanAction = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanAction
      ConfigureAlertRequest = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ConfigureAlertRequest
      RecoveryPlanGroup = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanGroup
      EventSpecificDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventSpecificDetails
      RecoveryPlanProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanProperties
      EventProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventProperties
      RunAsAccount = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RunAsAccount
      EventCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventCollection
      RecoveryPlanCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanCollection
      EncryptionDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EncryptionDetails
      CreateRecoveryPlanInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateRecoveryPlanInputProperties
      FabricProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricProperties
      MasterTargetServer = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::MasterTargetServer
      FabricCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricCollection
      UpdateRecoveryPlanInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateRecoveryPlanInputProperties
      FabricCreationInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricCreationInputProperties
      UpdateRecoveryPlanInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateRecoveryPlanInput
      FailoverProcessServerRequestProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverProcessServerRequestProperties
      RecoveryPlanProviderSpecificFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanProviderSpecificFailoverInput
      TaskTypeDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TaskTypeDetails
      RecoveryPlanPlannedFailoverInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanPlannedFailoverInputProperties
      ServiceError = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ServiceError
      RecoveryPlanPlannedFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanPlannedFailoverInput
      JobErrorDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobErrorDetails
      RecoveryPlanUnplannedFailoverInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanUnplannedFailoverInputProperties
      JobDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobDetails
      RecoveryPlanUnplannedFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanUnplannedFailoverInput
      ARMExceptionDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ARMExceptionDetails
      RecoveryPlanTestFailoverInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanTestFailoverInputProperties
      ARMInnerError = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ARMInnerError
      RecoveryPlanTestFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanTestFailoverInput
      InMageAzureV2ProtectedDiskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2ProtectedDiskDetails
      RecoveryPlanTestFailoverCleanupInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanTestFailoverCleanupInputProperties
      JobQueryParameter = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobQueryParameter
      RecoveryPlanTestFailoverCleanupInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanTestFailoverCleanupInput
      ResumeJobParams = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ResumeJobParams
      ProviderSpecificRecoveryPointDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProviderSpecificRecoveryPointDetails
      OSDiskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::OSDiskDetails
      RecoveryPointProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPointProperties
      NetworkMappingFabricSpecificSettings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkMappingFabricSpecificSettings
      DataStore = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DataStore
      InMageProtectedDiskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageProtectedDiskDetails
      RecoveryPointCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPointCollection
      CreateNetworkMappingInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateNetworkMappingInputProperties
      IdentityInformation = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::IdentityInformation
      FabricSpecificUpdateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricSpecificUpdateNetworkMappingInput
      RecoveryServicesProviderProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryServicesProviderProperties
      UpdateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateNetworkMappingInput
      RetentionVolume = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RetentionVolume
      NetworkProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkProperties
      RecoveryServicesProviderCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryServicesProviderCollection
      NetworkCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkCollection
      ReplicationProviderSpecificSettings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProviderSpecificSettings
      OperationsDiscovery = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::OperationsDiscovery
      ReplicationProtectedItemProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProtectedItemProperties
      PolicyProviderSpecificDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PolicyProviderSpecificDetails
      ProcessServer = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProcessServer
      InitialReplicationDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InitialReplicationDetails
      EnableProtectionProviderSpecificInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EnableProtectionProviderSpecificInput
      PolicyProviderSpecificInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PolicyProviderSpecificInput
      EnableProtectionInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EnableProtectionInputProperties
      CreatePolicyInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreatePolicyInput
      EnableProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EnableProtectionInput
      UpdatePolicyInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdatePolicyInput
      VMNicInputDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMNicInputDetails
      ProtectableItemProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectableItemProperties
      UpdateReplicationProtectedItemProviderInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateReplicationProtectedItemProviderInput
      ProtectableItemCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectableItemCollection
      UpdateReplicationProtectedItemInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateReplicationProtectedItemInputProperties
      ProtectionContainerMappingProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerMappingProperties
      UpdateReplicationProtectedItemInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateReplicationProtectedItemInput
      ProtectionContainerMappingCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerMappingCollection
      DisableProtectionProviderSpecificInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DisableProtectionProviderSpecificInput
      CreateProtectionContainerMappingInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateProtectionContainerMappingInputProperties
      DisableProtectionInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DisableProtectionInputProperties
      ReplicationProviderContainerUnmappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProviderContainerUnmappingInput
      DisableProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DisableProtectionInput
      RemoveProtectionContainerMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RemoveProtectionContainerMappingInput
      ProviderSpecificFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProviderSpecificFailoverInput
      ProtectionContainerProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerProperties
      PlannedFailoverInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PlannedFailoverInputProperties
      ProtectionContainerCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerCollection
      PlannedFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PlannedFailoverInput
      CreateProtectionContainerInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateProtectionContainerInputProperties
      UnplannedFailoverInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UnplannedFailoverInputProperties
      DiscoverProtectableItemRequestProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DiscoverProtectableItemRequestProperties
      UnplannedFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UnplannedFailoverInput
      SwitchProtectionProviderSpecificInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SwitchProtectionProviderSpecificInput
      TestFailoverInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverInputProperties
      SwitchProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SwitchProtectionInput
      TestFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverInput
      RecoveryPlanProtectedItem = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanProtectedItem
      TestFailoverCleanupInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverCleanupInputProperties
      EventProviderSpecificDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventProviderSpecificDetails
      TestFailoverCleanupInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverCleanupInput
      OSDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::OSDetails
      ReverseReplicationProviderSpecificInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReverseReplicationProviderSpecificInput
      FabricSpecificDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricSpecificDetails
      ReverseReplicationInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReverseReplicationInputProperties
      FabricSpecificCreationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricSpecificCreationInput
      ReverseReplicationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReverseReplicationInput
      FailoverProcessServerRequest = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverProcessServerRequest
      UpdateMobilityServiceRequestProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateMobilityServiceRequestProperties
      ProviderError = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProviderError
      UpdateMobilityServiceRequest = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateMobilityServiceRequest
      JobProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobProperties
      ApplyRecoveryPointProviderSpecificInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ApplyRecoveryPointProviderSpecificInput
      ARMException = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ARMException
      ApplyRecoveryPointInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ApplyRecoveryPointInputProperties
      ResumeJobParamsProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ResumeJobParamsProperties
      ApplyRecoveryPointInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ApplyRecoveryPointInput
      LogicalNetworkCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::LogicalNetworkCollection
      AlertProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AlertProperties
      FabricSpecificCreateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricSpecificCreateNetworkMappingInput
      UpdateNetworkMappingInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateNetworkMappingInputProperties
      StorageClassificationCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationCollection
      DiskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DiskDetails
      StorageClassificationMappingProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationMappingProperties
      OperationsDiscoveryCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::OperationsDiscoveryCollection
      FailoverReplicationProtectedItemDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverReplicationProtectedItemDetails
      PolicyCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PolicyCollection
      StorageClassificationMappingCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationMappingCollection
      UpdatePolicyInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdatePolicyInputProperties
      StorageMappingInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageMappingInputProperties
      VMNicDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMNicDetails
      StorageClassificationMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationMappingInput
      InMageAgentDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAgentDetails
      VCenterProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VCenterProperties
      CreateProtectionContainerMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateProtectionContainerMappingInput
      InconsistentVmDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InconsistentVmDetails
      ProtectionContainerFabricSpecificDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerFabricSpecificDetails
      VCenterCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VCenterCollection
      ReplicationProviderSpecificContainerCreationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProviderSpecificContainerCreationInput
      AddVCenterRequestProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AddVCenterRequestProperties
      DiscoverProtectableItemRequest = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DiscoverProtectableItemRequest
      AddVCenterRequest = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AddVCenterRequest
      CurrentScenarioDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CurrentScenarioDetails
      UpdateVCenterRequestProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateVCenterRequestProperties
      HealthError = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HealthError
      UpdateVCenterRequest = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateVCenterRequest
      AzureVmDiskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureVmDiskDetails
      RenewCertificateInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RenewCertificateInputProperties
      GroupTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::GroupTaskDetails
      RenewCertificateInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RenewCertificateInput
      MethodCallStatus = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::MethodCallStatus
      NetworkMappingCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkMappingCollection
      LogicalNetworkProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::LogicalNetworkProperties
      ReplicationProtectedItemCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProtectedItemCollection
      CreateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateNetworkMappingInput
      ProtectedItemsQueryParameter = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectedItemsQueryParameter
      Display = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Display
      HealthErrorSummary = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HealthErrorSummary
      CreatePolicyInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreatePolicyInputProperties
      ResourceHealthSummary = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ResourceHealthSummary
      ProtectionContainerMappingProviderSpecificDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerMappingProviderSpecificDetails
      VaultHealthProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VaultHealthProperties
      RemoveProtectionContainerMappingInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RemoveProtectionContainerMappingInputProperties
      JobEntity = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobEntity
      CreateProtectionContainerInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateProtectionContainerInput
      InMageDiskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageDiskDetails
      ConfigureAlertRequestProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ConfigureAlertRequestProperties
      DiskVolumeDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DiskVolumeDetails
      FabricCreationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricCreationInput
      JobCollection = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobCollection
      A2AVmManagedDiskInputDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AVmManagedDiskInputDetails
      Subnet = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Subnet
      A2AVmDiskInputDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AVmDiskInputDetails
      ConfigurationSettings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ConfigurationSettings
      InMageDiskExclusionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageDiskExclusionInput
      A2AProtectedDiskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AProtectedDiskDetails
      InMageDiskSignatureExclusionOptions = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageDiskSignatureExclusionOptions
      EventQueryParameter = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventQueryParameter
      InMageVolumeExclusionOptions = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageVolumeExclusionOptions
      NetworkMappingProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkMappingProperties
      AzureToAzureVmSyncedConfigDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureToAzureVmSyncedConfigDetails
      ReplicationProviderSpecificContainerMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProviderSpecificContainerMappingInput
      InputEndpoint = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InputEndpoint
      ASRTask = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ASRTask
      RoleAssignment = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RoleAssignment
      SwitchProtectionInputProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SwitchProtectionInputProperties
      A2AProtectedManagedDiskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AProtectedManagedDiskDetails
      PolicyProperties = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PolicyProperties
      MobilityServiceUpdate = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::MobilityServiceUpdate
      Alert = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Alert
      Event = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Event
      Fabric = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Fabric
      Job = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Job
      LogicalNetwork = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::LogicalNetwork
      NetworkMapping = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkMapping
      Network = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Network
      Policy = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Policy
      ProtectableItem = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectableItem
      ProtectionContainerMapping = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerMapping
      ProtectionContainer = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainer
      RecoveryPlan = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlan
      RecoveryPoint = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPoint
      RecoveryServicesProvider = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryServicesProvider
      ReplicationProtectedItem = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProtectedItem
      StorageClassification = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassification
      StorageClassificationMapping = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationMapping
      VCenter = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VCenter
      VaultHealthDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VaultHealthDetails
      AzureToAzureNetworkMappingSettings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureToAzureNetworkMappingSettings
      VmmToAzureNetworkMappingSettings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToAzureNetworkMappingSettings
      VmmToVmmNetworkMappingSettings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToVmmNetworkMappingSettings
      AzureToAzureCreateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureToAzureCreateNetworkMappingInput
      VmmToAzureCreateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToAzureCreateNetworkMappingInput
      VmmToVmmCreateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToVmmCreateNetworkMappingInput
      AzureToAzureUpdateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureToAzureUpdateNetworkMappingInput
      VmmToAzureUpdateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToAzureUpdateNetworkMappingInput
      VmmToVmmUpdateNetworkMappingInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToVmmUpdateNetworkMappingInput
      AzureFabricSpecificDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureFabricSpecificDetails
      VmmDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmDetails
      HyperVSiteDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVSiteDetails
      VMwareDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareDetails
      VMwareV2FabricSpecificDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareV2FabricSpecificDetails
      HyperVReplicaBaseReplicationDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBaseReplicationDetails
      HyperVReplicaReplicationDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaReplicationDetails
      HyperVReplicaBlueReplicationDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBlueReplicationDetails
      HyperVReplicaAzureReplicationDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureReplicationDetails
      InMageAzureV2ReplicationDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2ReplicationDetails
      InMageReplicationDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageReplicationDetails
      A2AReplicationDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AReplicationDetails
      HyperVReplicaAzureEnableProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureEnableProtectionInput
      SanEnableProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SanEnableProtectionInput
      InMageAzureV2EnableProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2EnableProtectionInput
      InMageEnableProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageEnableProtectionInput
      A2AEnableProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AEnableProtectionInput
      HyperVReplicaAzureUpdateReplicationProtectedItemInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureUpdateReplicationProtectedItemInput
      InMageAzureV2UpdateReplicationProtectedItemInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2UpdateReplicationProtectedItemInput
      A2AUpdateReplicationProtectedItemInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AUpdateReplicationProtectedItemInput
      HyperVReplicaBaseEventDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBaseEventDetails
      HyperVReplica2012EventDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplica2012EventDetails
      HyperVReplica2012R2EventDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplica2012R2EventDetails
      HyperVReplicaAzureEventDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureEventDetails
      A2AEventDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AEventDetails
      InMageAzureV2EventDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2EventDetails
      JobStatusEventDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobStatusEventDetails
      HyperVVirtualMachineDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVVirtualMachineDetails
      VMwareVirtualMachineDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareVirtualMachineDetails
      ReplicationGroupDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationGroupDetails
      InMageAzureV2RecoveryPointDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2RecoveryPointDetails
      InMageDisableProtectionProviderSpecificInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageDisableProtectionProviderSpecificInput
      HyperVReplicaAzureFailoverProviderInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureFailoverProviderInput
      HyperVReplicaAzureFailbackProviderInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureFailbackProviderInput
      InMageAzureV2FailoverProviderInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2FailoverProviderInput
      InMageFailoverProviderInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageFailoverProviderInput
      A2AFailoverProviderInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AFailoverProviderInput
      HyperVReplicaAzureReprotectInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureReprotectInput
      InMageAzureV2ReprotectInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2ReprotectInput
      InMageReprotectInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageReprotectInput
      A2AReprotectInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AReprotectInput
      HyperVReplicaAzureApplyRecoveryPointInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureApplyRecoveryPointInput
      InMageAzureV2ApplyRecoveryPointInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2ApplyRecoveryPointInput
      A2AApplyRecoveryPointInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AApplyRecoveryPointInput
      JobTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobTaskDetails
      VirtualMachineTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VirtualMachineTaskDetails
      FabricReplicationGroupTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricReplicationGroupTaskDetails
      ManualActionTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ManualActionTaskDetails
      ScriptActionTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ScriptActionTaskDetails
      VmNicUpdatesTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmNicUpdatesTaskDetails
      ConsistencyCheckTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ConsistencyCheckTaskDetails
      AutomationRunbookTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AutomationRunbookTaskDetails
      InlineWorkflowTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InlineWorkflowTaskDetails
      RecoveryPlanGroupTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanGroupTaskDetails
      RecoveryPlanShutdownGroupTaskDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanShutdownGroupTaskDetails
      AsrJobDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AsrJobDetails
      TestFailoverJobDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverJobDetails
      FailoverJobDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverJobDetails
      ExportJobDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ExportJobDetails
      SwitchProtectionJobDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SwitchProtectionJobDetails
      A2AContainerCreationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AContainerCreationInput
      A2ASwitchProtectionInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2ASwitchProtectionInput
      HyperVReplicaAzurePolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzurePolicyDetails
      HyperVReplicaBasePolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBasePolicyDetails
      HyperVReplicaPolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaPolicyDetails
      HyperVReplicaBluePolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBluePolicyDetails
      InMageBasePolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageBasePolicyDetails
      InMageAzureV2PolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2PolicyDetails
      InMagePolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMagePolicyDetails
      A2APolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2APolicyDetails
      RcmAzureMigrationPolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RcmAzureMigrationPolicyDetails
      VmwareCbtPolicyDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmwareCbtPolicyDetails
      HyperVReplicaAzurePolicyInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzurePolicyInput
      HyperVReplicaPolicyInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaPolicyInput
      HyperVReplicaBluePolicyInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBluePolicyInput
      InMageAzureV2PolicyInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2PolicyInput
      InMagePolicyInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMagePolicyInput
      A2APolicyCreationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2APolicyCreationInput
      VMwareCbtPolicyCreationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareCbtPolicyCreationInput
      RecoveryPlanScriptActionDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanScriptActionDetails
      RecoveryPlanAutomationRunbookActionDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanAutomationRunbookActionDetails
      RecoveryPlanManualActionDetails = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanManualActionDetails
      RecoveryPlanHyperVReplicaAzureFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailoverInput
      RecoveryPlanHyperVReplicaAzureFailbackInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailbackInput
      RecoveryPlanInMageAzureV2FailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanInMageAzureV2FailoverInput
      RecoveryPlanInMageFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanInMageFailoverInput
      RecoveryPlanA2AFailoverInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanA2AFailoverInput
      AzureFabricCreationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureFabricCreationInput
      VMwareV2FabricCreationInput = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareV2FabricCreationInput
      RecoveryPlanGroupType = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanGroupType
      ReplicationProtectedItemOperation = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProtectedItemOperation
      PossibleOperationsDirections = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PossibleOperationsDirections
      FailoverDeploymentModel = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverDeploymentModel
      SourceSiteOperations = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SourceSiteOperations
      IdentityProviderType = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::IdentityProviderType
      LicenseType = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::LicenseType
      DisableProtectionReason = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DisableProtectionReason
      HealthErrorCategory = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HealthErrorCategory
      Severity = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Severity
      RecoveryPointType = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPointType
      MultiVmSyncStatus = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::MultiVmSyncStatus
      SetMultiVmSyncStatus = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SetMultiVmSyncStatus
      RecoveryPlanActionLocation = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanActionLocation
      HyperVReplicaAzureRpRecoveryPointType = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureRpRecoveryPointType
      DataSyncStatus = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DataSyncStatus
      AlternateLocationRecoveryOption = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AlternateLocationRecoveryOption
      InMageV2RpRecoveryPointType = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageV2RpRecoveryPointType
      RpInMageRecoveryPointType = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RpInMageRecoveryPointType
      A2ARpRecoveryPointType = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2ARpRecoveryPointType
    end

    #
    # RecoveryServicesSiteRecovery
    #
    class RecoveryServicesSiteRecoveryClass
      attr_accessor :replication_vault_health, :replication_protected_items, :replication_network_mappings, :replication_fabrics, :replicationv_centers, :replication_storage_classification_mappings, :replication_storage_classifications, :replication_recovery_services_providers, :recovery_points, :replication_recovery_plans, :replication_protection_containers, :replication_protection_container_mappings, :replication_protectable_items, :replication_policies, :operations, :replication_networks, :replication_logical_networks, :replication_jobs, :replication_events, :replication_alert_settings, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::SiteRecoveryManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.replication_vault_health = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationVaultHealth.new(client)
        self.replication_protected_items = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationProtectedItems.new(client)
        self.replication_network_mappings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationNetworkMappings.new(client)
        self.replication_fabrics = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationFabrics.new(client)
        self.replicationv_centers = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationvCenters.new(client)
        self.replication_storage_classification_mappings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationStorageClassificationMappings.new(client)
        self.replication_storage_classifications = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationStorageClassifications.new(client)
        self.replication_recovery_services_providers = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationRecoveryServicesProviders.new(client)
        self.recovery_points = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::RecoveryPoints.new(client)
        self.replication_recovery_plans = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationRecoveryPlans.new(client)
        self.replication_protection_containers = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationProtectionContainers.new(client)
        self.replication_protection_container_mappings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationProtectionContainerMappings.new(client)
        self.replication_protectable_items = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationProtectableItems.new(client)
        self.replication_policies = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationPolicies.new(client)
        self.operations = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Operations.new(client)
        self.replication_networks = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationNetworks.new(client)
        self.replication_logical_networks = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationLogicalNetworks.new(client)
        self.replication_jobs = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationJobs.new(client)
        self.replication_events = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationEvents.new(client)
        self.replication_alert_settings = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::ReplicationAlertSettings.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-08-10'
            client = Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::SiteRecoveryManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def storage_classification_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationProperties
        end
        def create_recovery_plan_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateRecoveryPlanInput
        end
        def recovery_plan_action_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanActionDetails
        end
        def alert_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AlertCollection
        end
        def recovery_plan_action
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanAction
        end
        def configure_alert_request
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ConfigureAlertRequest
        end
        def recovery_plan_group
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanGroup
        end
        def event_specific_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventSpecificDetails
        end
        def recovery_plan_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanProperties
        end
        def event_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventProperties
        end
        def run_as_account
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RunAsAccount
        end
        def event_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventCollection
        end
        def recovery_plan_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanCollection
        end
        def encryption_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EncryptionDetails
        end
        def create_recovery_plan_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateRecoveryPlanInputProperties
        end
        def fabric_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricProperties
        end
        def master_target_server
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::MasterTargetServer
        end
        def fabric_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricCollection
        end
        def update_recovery_plan_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateRecoveryPlanInputProperties
        end
        def fabric_creation_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricCreationInputProperties
        end
        def update_recovery_plan_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateRecoveryPlanInput
        end
        def failover_process_server_request_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverProcessServerRequestProperties
        end
        def recovery_plan_provider_specific_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanProviderSpecificFailoverInput
        end
        def task_type_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TaskTypeDetails
        end
        def recovery_plan_planned_failover_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanPlannedFailoverInputProperties
        end
        def service_error
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ServiceError
        end
        def recovery_plan_planned_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanPlannedFailoverInput
        end
        def job_error_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobErrorDetails
        end
        def recovery_plan_unplanned_failover_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanUnplannedFailoverInputProperties
        end
        def job_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobDetails
        end
        def recovery_plan_unplanned_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanUnplannedFailoverInput
        end
        def armexception_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ARMExceptionDetails
        end
        def recovery_plan_test_failover_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanTestFailoverInputProperties
        end
        def arminner_error
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ARMInnerError
        end
        def recovery_plan_test_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanTestFailoverInput
        end
        def in_mage_azure_v2_protected_disk_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2ProtectedDiskDetails
        end
        def recovery_plan_test_failover_cleanup_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanTestFailoverCleanupInputProperties
        end
        def job_query_parameter
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobQueryParameter
        end
        def recovery_plan_test_failover_cleanup_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanTestFailoverCleanupInput
        end
        def resume_job_params
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ResumeJobParams
        end
        def provider_specific_recovery_point_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProviderSpecificRecoveryPointDetails
        end
        def osdisk_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::OSDiskDetails
        end
        def recovery_point_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPointProperties
        end
        def network_mapping_fabric_specific_settings
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkMappingFabricSpecificSettings
        end
        def data_store
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DataStore
        end
        def in_mage_protected_disk_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageProtectedDiskDetails
        end
        def recovery_point_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPointCollection
        end
        def create_network_mapping_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateNetworkMappingInputProperties
        end
        def identity_information
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::IdentityInformation
        end
        def fabric_specific_update_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricSpecificUpdateNetworkMappingInput
        end
        def recovery_services_provider_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryServicesProviderProperties
        end
        def update_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateNetworkMappingInput
        end
        def retention_volume
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RetentionVolume
        end
        def network_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkProperties
        end
        def recovery_services_provider_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryServicesProviderCollection
        end
        def network_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkCollection
        end
        def replication_provider_specific_settings
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProviderSpecificSettings
        end
        def operations_discovery
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::OperationsDiscovery
        end
        def replication_protected_item_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProtectedItemProperties
        end
        def policy_provider_specific_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PolicyProviderSpecificDetails
        end
        def process_server
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProcessServer
        end
        def initial_replication_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InitialReplicationDetails
        end
        def enable_protection_provider_specific_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EnableProtectionProviderSpecificInput
        end
        def policy_provider_specific_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PolicyProviderSpecificInput
        end
        def enable_protection_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EnableProtectionInputProperties
        end
        def create_policy_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreatePolicyInput
        end
        def enable_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EnableProtectionInput
        end
        def update_policy_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdatePolicyInput
        end
        def vmnic_input_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMNicInputDetails
        end
        def protectable_item_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectableItemProperties
        end
        def update_replication_protected_item_provider_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateReplicationProtectedItemProviderInput
        end
        def protectable_item_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectableItemCollection
        end
        def update_replication_protected_item_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateReplicationProtectedItemInputProperties
        end
        def protection_container_mapping_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerMappingProperties
        end
        def update_replication_protected_item_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateReplicationProtectedItemInput
        end
        def protection_container_mapping_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerMappingCollection
        end
        def disable_protection_provider_specific_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DisableProtectionProviderSpecificInput
        end
        def create_protection_container_mapping_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateProtectionContainerMappingInputProperties
        end
        def disable_protection_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DisableProtectionInputProperties
        end
        def replication_provider_container_unmapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProviderContainerUnmappingInput
        end
        def disable_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DisableProtectionInput
        end
        def remove_protection_container_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RemoveProtectionContainerMappingInput
        end
        def provider_specific_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProviderSpecificFailoverInput
        end
        def protection_container_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerProperties
        end
        def planned_failover_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PlannedFailoverInputProperties
        end
        def protection_container_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerCollection
        end
        def planned_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PlannedFailoverInput
        end
        def create_protection_container_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateProtectionContainerInputProperties
        end
        def unplanned_failover_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UnplannedFailoverInputProperties
        end
        def discover_protectable_item_request_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DiscoverProtectableItemRequestProperties
        end
        def unplanned_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UnplannedFailoverInput
        end
        def switch_protection_provider_specific_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SwitchProtectionProviderSpecificInput
        end
        def test_failover_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverInputProperties
        end
        def switch_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SwitchProtectionInput
        end
        def test_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverInput
        end
        def recovery_plan_protected_item
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanProtectedItem
        end
        def test_failover_cleanup_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverCleanupInputProperties
        end
        def event_provider_specific_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventProviderSpecificDetails
        end
        def test_failover_cleanup_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverCleanupInput
        end
        def osdetails
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::OSDetails
        end
        def reverse_replication_provider_specific_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReverseReplicationProviderSpecificInput
        end
        def fabric_specific_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricSpecificDetails
        end
        def reverse_replication_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReverseReplicationInputProperties
        end
        def fabric_specific_creation_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricSpecificCreationInput
        end
        def reverse_replication_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReverseReplicationInput
        end
        def failover_process_server_request
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverProcessServerRequest
        end
        def update_mobility_service_request_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateMobilityServiceRequestProperties
        end
        def provider_error
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProviderError
        end
        def update_mobility_service_request
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateMobilityServiceRequest
        end
        def job_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobProperties
        end
        def apply_recovery_point_provider_specific_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ApplyRecoveryPointProviderSpecificInput
        end
        def armexception
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ARMException
        end
        def apply_recovery_point_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ApplyRecoveryPointInputProperties
        end
        def resume_job_params_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ResumeJobParamsProperties
        end
        def apply_recovery_point_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ApplyRecoveryPointInput
        end
        def logical_network_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::LogicalNetworkCollection
        end
        def alert_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AlertProperties
        end
        def fabric_specific_create_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricSpecificCreateNetworkMappingInput
        end
        def update_network_mapping_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateNetworkMappingInputProperties
        end
        def storage_classification_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationCollection
        end
        def disk_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DiskDetails
        end
        def storage_classification_mapping_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationMappingProperties
        end
        def operations_discovery_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::OperationsDiscoveryCollection
        end
        def failover_replication_protected_item_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverReplicationProtectedItemDetails
        end
        def policy_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PolicyCollection
        end
        def storage_classification_mapping_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationMappingCollection
        end
        def update_policy_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdatePolicyInputProperties
        end
        def storage_mapping_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageMappingInputProperties
        end
        def vmnic_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMNicDetails
        end
        def storage_classification_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationMappingInput
        end
        def in_mage_agent_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAgentDetails
        end
        def vcenter_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VCenterProperties
        end
        def create_protection_container_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateProtectionContainerMappingInput
        end
        def inconsistent_vm_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InconsistentVmDetails
        end
        def protection_container_fabric_specific_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerFabricSpecificDetails
        end
        def vcenter_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VCenterCollection
        end
        def replication_provider_specific_container_creation_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProviderSpecificContainerCreationInput
        end
        def add_vcenter_request_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AddVCenterRequestProperties
        end
        def discover_protectable_item_request
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DiscoverProtectableItemRequest
        end
        def add_vcenter_request
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AddVCenterRequest
        end
        def current_scenario_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CurrentScenarioDetails
        end
        def update_vcenter_request_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateVCenterRequestProperties
        end
        def health_error
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HealthError
        end
        def update_vcenter_request
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::UpdateVCenterRequest
        end
        def azure_vm_disk_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureVmDiskDetails
        end
        def renew_certificate_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RenewCertificateInputProperties
        end
        def group_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::GroupTaskDetails
        end
        def renew_certificate_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RenewCertificateInput
        end
        def method_call_status
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::MethodCallStatus
        end
        def network_mapping_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkMappingCollection
        end
        def logical_network_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::LogicalNetworkProperties
        end
        def replication_protected_item_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProtectedItemCollection
        end
        def create_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateNetworkMappingInput
        end
        def protected_items_query_parameter
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectedItemsQueryParameter
        end
        def display
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Display
        end
        def health_error_summary
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HealthErrorSummary
        end
        def create_policy_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreatePolicyInputProperties
        end
        def resource_health_summary
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ResourceHealthSummary
        end
        def protection_container_mapping_provider_specific_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerMappingProviderSpecificDetails
        end
        def vault_health_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VaultHealthProperties
        end
        def remove_protection_container_mapping_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RemoveProtectionContainerMappingInputProperties
        end
        def job_entity
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobEntity
        end
        def create_protection_container_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::CreateProtectionContainerInput
        end
        def in_mage_disk_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageDiskDetails
        end
        def configure_alert_request_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ConfigureAlertRequestProperties
        end
        def disk_volume_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DiskVolumeDetails
        end
        def fabric_creation_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricCreationInput
        end
        def job_collection
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobCollection
        end
        def a2_avm_managed_disk_input_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AVmManagedDiskInputDetails
        end
        def subnet
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Subnet
        end
        def a2_avm_disk_input_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AVmDiskInputDetails
        end
        def configuration_settings
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ConfigurationSettings
        end
        def in_mage_disk_exclusion_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageDiskExclusionInput
        end
        def a2_aprotected_disk_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AProtectedDiskDetails
        end
        def in_mage_disk_signature_exclusion_options
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageDiskSignatureExclusionOptions
        end
        def event_query_parameter
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::EventQueryParameter
        end
        def in_mage_volume_exclusion_options
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageVolumeExclusionOptions
        end
        def network_mapping_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkMappingProperties
        end
        def azure_to_azure_vm_synced_config_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureToAzureVmSyncedConfigDetails
        end
        def replication_provider_specific_container_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProviderSpecificContainerMappingInput
        end
        def input_endpoint
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InputEndpoint
        end
        def asrtask
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ASRTask
        end
        def role_assignment
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RoleAssignment
        end
        def switch_protection_input_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SwitchProtectionInputProperties
        end
        def a2_aprotected_managed_disk_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AProtectedManagedDiskDetails
        end
        def policy_properties
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PolicyProperties
        end
        def mobility_service_update
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::MobilityServiceUpdate
        end
        def alert
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Alert
        end
        def event
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Event
        end
        def fabric
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Fabric
        end
        def job
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Job
        end
        def logical_network
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::LogicalNetwork
        end
        def network_mapping
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::NetworkMapping
        end
        def network
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Network
        end
        def policy
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Policy
        end
        def protectable_item
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectableItem
        end
        def protection_container_mapping
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainerMapping
        end
        def protection_container
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ProtectionContainer
        end
        def recovery_plan
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlan
        end
        def recovery_point
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPoint
        end
        def recovery_services_provider
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryServicesProvider
        end
        def replication_protected_item
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProtectedItem
        end
        def storage_classification
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassification
        end
        def storage_classification_mapping
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::StorageClassificationMapping
        end
        def vcenter
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VCenter
        end
        def vault_health_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VaultHealthDetails
        end
        def azure_to_azure_network_mapping_settings
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureToAzureNetworkMappingSettings
        end
        def vmm_to_azure_network_mapping_settings
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToAzureNetworkMappingSettings
        end
        def vmm_to_vmm_network_mapping_settings
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToVmmNetworkMappingSettings
        end
        def azure_to_azure_create_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureToAzureCreateNetworkMappingInput
        end
        def vmm_to_azure_create_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToAzureCreateNetworkMappingInput
        end
        def vmm_to_vmm_create_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToVmmCreateNetworkMappingInput
        end
        def azure_to_azure_update_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureToAzureUpdateNetworkMappingInput
        end
        def vmm_to_azure_update_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToAzureUpdateNetworkMappingInput
        end
        def vmm_to_vmm_update_network_mapping_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmToVmmUpdateNetworkMappingInput
        end
        def azure_fabric_specific_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureFabricSpecificDetails
        end
        def vmm_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmmDetails
        end
        def hyper_vsite_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVSiteDetails
        end
        def vmware_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareDetails
        end
        def vmware_v2_fabric_specific_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareV2FabricSpecificDetails
        end
        def hyper_vreplica_base_replication_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBaseReplicationDetails
        end
        def hyper_vreplica_replication_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaReplicationDetails
        end
        def hyper_vreplica_blue_replication_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBlueReplicationDetails
        end
        def hyper_vreplica_azure_replication_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureReplicationDetails
        end
        def in_mage_azure_v2_replication_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2ReplicationDetails
        end
        def in_mage_replication_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageReplicationDetails
        end
        def a2_areplication_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AReplicationDetails
        end
        def hyper_vreplica_azure_enable_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureEnableProtectionInput
        end
        def san_enable_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SanEnableProtectionInput
        end
        def in_mage_azure_v2_enable_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2EnableProtectionInput
        end
        def in_mage_enable_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageEnableProtectionInput
        end
        def a2_aenable_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AEnableProtectionInput
        end
        def hyper_vreplica_azure_update_replication_protected_item_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureUpdateReplicationProtectedItemInput
        end
        def in_mage_azure_v2_update_replication_protected_item_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2UpdateReplicationProtectedItemInput
        end
        def a2_aupdate_replication_protected_item_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AUpdateReplicationProtectedItemInput
        end
        def hyper_vreplica_base_event_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBaseEventDetails
        end
        def hyper_vreplica2012_event_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplica2012EventDetails
        end
        def hyper_vreplica2012_r2_event_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplica2012R2EventDetails
        end
        def hyper_vreplica_azure_event_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureEventDetails
        end
        def a2_aevent_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AEventDetails
        end
        def in_mage_azure_v2_event_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2EventDetails
        end
        def job_status_event_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobStatusEventDetails
        end
        def hyper_vvirtual_machine_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVVirtualMachineDetails
        end
        def vmware_virtual_machine_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareVirtualMachineDetails
        end
        def replication_group_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationGroupDetails
        end
        def in_mage_azure_v2_recovery_point_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2RecoveryPointDetails
        end
        def in_mage_disable_protection_provider_specific_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageDisableProtectionProviderSpecificInput
        end
        def hyper_vreplica_azure_failover_provider_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureFailoverProviderInput
        end
        def hyper_vreplica_azure_failback_provider_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureFailbackProviderInput
        end
        def in_mage_azure_v2_failover_provider_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2FailoverProviderInput
        end
        def in_mage_failover_provider_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageFailoverProviderInput
        end
        def a2_afailover_provider_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AFailoverProviderInput
        end
        def hyper_vreplica_azure_reprotect_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureReprotectInput
        end
        def in_mage_azure_v2_reprotect_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2ReprotectInput
        end
        def in_mage_reprotect_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageReprotectInput
        end
        def a2_areprotect_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AReprotectInput
        end
        def hyper_vreplica_azure_apply_recovery_point_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureApplyRecoveryPointInput
        end
        def in_mage_azure_v2_apply_recovery_point_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2ApplyRecoveryPointInput
        end
        def a2_aapply_recovery_point_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AApplyRecoveryPointInput
        end
        def job_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::JobTaskDetails
        end
        def virtual_machine_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VirtualMachineTaskDetails
        end
        def fabric_replication_group_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FabricReplicationGroupTaskDetails
        end
        def manual_action_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ManualActionTaskDetails
        end
        def script_action_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ScriptActionTaskDetails
        end
        def vm_nic_updates_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmNicUpdatesTaskDetails
        end
        def consistency_check_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ConsistencyCheckTaskDetails
        end
        def automation_runbook_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AutomationRunbookTaskDetails
        end
        def inline_workflow_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InlineWorkflowTaskDetails
        end
        def recovery_plan_group_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanGroupTaskDetails
        end
        def recovery_plan_shutdown_group_task_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanShutdownGroupTaskDetails
        end
        def asr_job_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AsrJobDetails
        end
        def test_failover_job_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::TestFailoverJobDetails
        end
        def failover_job_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverJobDetails
        end
        def export_job_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ExportJobDetails
        end
        def switch_protection_job_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SwitchProtectionJobDetails
        end
        def a2_acontainer_creation_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2AContainerCreationInput
        end
        def a2_aswitch_protection_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2ASwitchProtectionInput
        end
        def hyper_vreplica_azure_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzurePolicyDetails
        end
        def hyper_vreplica_base_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBasePolicyDetails
        end
        def hyper_vreplica_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaPolicyDetails
        end
        def hyper_vreplica_blue_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBluePolicyDetails
        end
        def in_mage_base_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageBasePolicyDetails
        end
        def in_mage_azure_v2_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2PolicyDetails
        end
        def in_mage_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMagePolicyDetails
        end
        def a2_apolicy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2APolicyDetails
        end
        def rcm_azure_migration_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RcmAzureMigrationPolicyDetails
        end
        def vmware_cbt_policy_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VmwareCbtPolicyDetails
        end
        def hyper_vreplica_azure_policy_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzurePolicyInput
        end
        def hyper_vreplica_policy_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaPolicyInput
        end
        def hyper_vreplica_blue_policy_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaBluePolicyInput
        end
        def in_mage_azure_v2_policy_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageAzureV2PolicyInput
        end
        def in_mage_policy_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMagePolicyInput
        end
        def a2_apolicy_creation_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2APolicyCreationInput
        end
        def vmware_cbt_policy_creation_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareCbtPolicyCreationInput
        end
        def recovery_plan_script_action_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanScriptActionDetails
        end
        def recovery_plan_automation_runbook_action_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanAutomationRunbookActionDetails
        end
        def recovery_plan_manual_action_details
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanManualActionDetails
        end
        def recovery_plan_hyper_vreplica_azure_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailoverInput
        end
        def recovery_plan_hyper_vreplica_azure_failback_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanHyperVReplicaAzureFailbackInput
        end
        def recovery_plan_in_mage_azure_v2_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanInMageAzureV2FailoverInput
        end
        def recovery_plan_in_mage_failover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanInMageFailoverInput
        end
        def recovery_plan_a2_afailover_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanA2AFailoverInput
        end
        def azure_fabric_creation_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AzureFabricCreationInput
        end
        def vmware_v2_fabric_creation_input
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::VMwareV2FabricCreationInput
        end
        def recovery_plan_group_type
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanGroupType
        end
        def replication_protected_item_operation
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::ReplicationProtectedItemOperation
        end
        def possible_operations_directions
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::PossibleOperationsDirections
        end
        def failover_deployment_model
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::FailoverDeploymentModel
        end
        def source_site_operations
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SourceSiteOperations
        end
        def identity_provider_type
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::IdentityProviderType
        end
        def license_type
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::LicenseType
        end
        def disable_protection_reason
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DisableProtectionReason
        end
        def health_error_category
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HealthErrorCategory
        end
        def severity
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::Severity
        end
        def recovery_point_type
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPointType
        end
        def multi_vm_sync_status
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::MultiVmSyncStatus
        end
        def set_multi_vm_sync_status
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::SetMultiVmSyncStatus
        end
        def recovery_plan_action_location
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RecoveryPlanActionLocation
        end
        def hyper_vreplica_azure_rp_recovery_point_type
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::HyperVReplicaAzureRpRecoveryPointType
        end
        def data_sync_status
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::DataSyncStatus
        end
        def alternate_location_recovery_option
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::AlternateLocationRecoveryOption
        end
        def in_mage_v2_rp_recovery_point_type
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::InMageV2RpRecoveryPointType
        end
        def rp_in_mage_recovery_point_type
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::RpInMageRecoveryPointType
        end
        def a2_arp_recovery_point_type
          Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10::Models::A2ARpRecoveryPointType
        end
      end
    end
  end
end
