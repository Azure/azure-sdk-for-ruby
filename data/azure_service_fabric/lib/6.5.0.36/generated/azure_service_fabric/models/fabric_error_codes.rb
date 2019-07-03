# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Defines values for FabricErrorCodes
    #
    module FabricErrorCodes
      FABRICEINVALIDPARTITIONKEY = "FABRIC_E_INVALID_PARTITION_KEY"
      FABRICEIMAGEBUILDERVALIDATIONERROR = "FABRIC_E_IMAGEBUILDER_VALIDATION_ERROR"
      FABRICEINVALIDADDRESS = "FABRIC_E_INVALID_ADDRESS"
      FABRICEAPPLICATIONNOTUPGRADING = "FABRIC_E_APPLICATION_NOT_UPGRADING"
      FABRICEAPPLICATIONUPGRADEVALIDATIONERROR = "FABRIC_E_APPLICATION_UPGRADE_VALIDATION_ERROR"
      FABRICEFABRICNOTUPGRADING = "FABRIC_E_FABRIC_NOT_UPGRADING"
      FABRICEFABRICUPGRADEVALIDATIONERROR = "FABRIC_E_FABRIC_UPGRADE_VALIDATION_ERROR"
      FABRICEINVALIDCONFIGURATION = "FABRIC_E_INVALID_CONFIGURATION"
      FABRICEINVALIDNAMEURI = "FABRIC_E_INVALID_NAME_URI"
      FABRICEPATHTOOLONG = "FABRIC_E_PATH_TOO_LONG"
      FABRICEKEYTOOLARGE = "FABRIC_E_KEY_TOO_LARGE"
      FABRICESERVICEAFFINITYCHAINNOTSUPPORTED = "FABRIC_E_SERVICE_AFFINITY_CHAIN_NOT_SUPPORTED"
      FABRICEINVALIDATOMICGROUP = "FABRIC_E_INVALID_ATOMIC_GROUP"
      FABRICEVALUEEMPTY = "FABRIC_E_VALUE_EMPTY"
      FABRICENODENOTFOUND = "FABRIC_E_NODE_NOT_FOUND"
      FABRICEAPPLICATIONTYPENOTFOUND = "FABRIC_E_APPLICATION_TYPE_NOT_FOUND"
      FABRICEAPPLICATIONNOTFOUND = "FABRIC_E_APPLICATION_NOT_FOUND"
      FABRICESERVICETYPENOTFOUND = "FABRIC_E_SERVICE_TYPE_NOT_FOUND"
      FABRICESERVICEDOESNOTEXIST = "FABRIC_E_SERVICE_DOES_NOT_EXIST"
      FABRICESERVICETYPETEMPLATENOTFOUND = "FABRIC_E_SERVICE_TYPE_TEMPLATE_NOT_FOUND"
      FABRICECONFIGURATIONSECTIONNOTFOUND = "FABRIC_E_CONFIGURATION_SECTION_NOT_FOUND"
      FABRICEPARTITIONNOTFOUND = "FABRIC_E_PARTITION_NOT_FOUND"
      FABRICEREPLICADOESNOTEXIST = "FABRIC_E_REPLICA_DOES_NOT_EXIST"
      FABRICESERVICEGROUPDOESNOTEXIST = "FABRIC_E_SERVICE_GROUP_DOES_NOT_EXIST"
      FABRICECONFIGURATIONPARAMETERNOTFOUND = "FABRIC_E_CONFIGURATION_PARAMETER_NOT_FOUND"
      FABRICEDIRECTORYNOTFOUND = "FABRIC_E_DIRECTORY_NOT_FOUND"
      FABRICEFABRICVERSIONNOTFOUND = "FABRIC_E_FABRIC_VERSION_NOT_FOUND"
      FABRICEFILENOTFOUND = "FABRIC_E_FILE_NOT_FOUND"
      FABRICENAMEDOESNOTEXIST = "FABRIC_E_NAME_DOES_NOT_EXIST"
      FABRICEPROPERTYDOESNOTEXIST = "FABRIC_E_PROPERTY_DOES_NOT_EXIST"
      FABRICEENUMERATIONCOMPLETED = "FABRIC_E_ENUMERATION_COMPLETED"
      FABRICESERVICEMANIFESTNOTFOUND = "FABRIC_E_SERVICE_MANIFEST_NOT_FOUND"
      FABRICEKEYNOTFOUND = "FABRIC_E_KEY_NOT_FOUND"
      FABRICEHEALTHENTITYNOTFOUND = "FABRIC_E_HEALTH_ENTITY_NOT_FOUND"
      FABRICEAPPLICATIONTYPEALREADYEXISTS = "FABRIC_E_APPLICATION_TYPE_ALREADY_EXISTS"
      FABRICEAPPLICATIONALREADYEXISTS = "FABRIC_E_APPLICATION_ALREADY_EXISTS"
      FABRICEAPPLICATIONALREADYINTARGETVERSION = "FABRIC_E_APPLICATION_ALREADY_IN_TARGET_VERSION"
      FABRICEAPPLICATIONTYPEPROVISIONINPROGRESS = "FABRIC_E_APPLICATION_TYPE_PROVISION_IN_PROGRESS"
      FABRICEAPPLICATIONUPGRADEINPROGRESS = "FABRIC_E_APPLICATION_UPGRADE_IN_PROGRESS"
      FABRICESERVICEALREADYEXISTS = "FABRIC_E_SERVICE_ALREADY_EXISTS"
      FABRICESERVICEGROUPALREADYEXISTS = "FABRIC_E_SERVICE_GROUP_ALREADY_EXISTS"
      FABRICEAPPLICATIONTYPEINUSE = "FABRIC_E_APPLICATION_TYPE_IN_USE"
      FABRICEFABRICALREADYINTARGETVERSION = "FABRIC_E_FABRIC_ALREADY_IN_TARGET_VERSION"
      FABRICEFABRICVERSIONALREADYEXISTS = "FABRIC_E_FABRIC_VERSION_ALREADY_EXISTS"
      FABRICEFABRICVERSIONINUSE = "FABRIC_E_FABRIC_VERSION_IN_USE"
      FABRICEFABRICUPGRADEINPROGRESS = "FABRIC_E_FABRIC_UPGRADE_IN_PROGRESS"
      FABRICENAMEALREADYEXISTS = "FABRIC_E_NAME_ALREADY_EXISTS"
      FABRICENAMENOTEMPTY = "FABRIC_E_NAME_NOT_EMPTY"
      FABRICEPROPERTYCHECKFAILED = "FABRIC_E_PROPERTY_CHECK_FAILED"
      FABRICESERVICEMETADATAMISMATCH = "FABRIC_E_SERVICE_METADATA_MISMATCH"
      FABRICESERVICETYPEMISMATCH = "FABRIC_E_SERVICE_TYPE_MISMATCH"
      FABRICEHEALTHSTALEREPORT = "FABRIC_E_HEALTH_STALE_REPORT"
      FABRICESEQUENCENUMBERCHECKFAILED = "FABRIC_E_SEQUENCE_NUMBER_CHECK_FAILED"
      FABRICENODEHASNOTSTOPPEDYET = "FABRIC_E_NODE_HAS_NOT_STOPPED_YET"
      FABRICEINSTANCEIDMISMATCH = "FABRIC_E_INSTANCE_ID_MISMATCH"
      FABRICEVALUETOOLARGE = "FABRIC_E_VALUE_TOO_LARGE"
      FABRICENOWRITEQUORUM = "FABRIC_E_NO_WRITE_QUORUM"
      FABRICENOTPRIMARY = "FABRIC_E_NOT_PRIMARY"
      FABRICENOTREADY = "FABRIC_E_NOT_READY"
      FABRICERECONFIGURATIONPENDING = "FABRIC_E_RECONFIGURATION_PENDING"
      FABRICESERVICEOFFLINE = "FABRIC_E_SERVICE_OFFLINE"
      EABORT = "E_ABORT"
      FABRICECOMMUNICATIONERROR = "FABRIC_E_COMMUNICATION_ERROR"
      FABRICEOPERATIONNOTCOMPLETE = "FABRIC_E_OPERATION_NOT_COMPLETE"
      FABRICETIMEOUT = "FABRIC_E_TIMEOUT"
      FABRICENODEISUP = "FABRIC_E_NODE_IS_UP"
      EFAIL = "E_FAIL"
      FABRICEBACKUPISENABLED = "FABRIC_E_BACKUP_IS_ENABLED"
      FABRICERESTORESOURCETARGETPARTITIONMISMATCH = "FABRIC_E_RESTORE_SOURCE_TARGET_PARTITION_MISMATCH"
      FABRICEINVALIDFORSTATELESSSERVICES = "FABRIC_E_INVALID_FOR_STATELESS_SERVICES"
      FABRICEBACKUPNOTENABLED = "FABRIC_E_BACKUP_NOT_ENABLED"
      FABRICEBACKUPPOLICYNOTEXISTING = "FABRIC_E_BACKUP_POLICY_NOT_EXISTING"
      FABRICEFAULTANALYSISSERVICENOTEXISTING = "FABRIC_E_FAULT_ANALYSIS_SERVICE_NOT_EXISTING"
      FABRICEBACKUPINPROGRESS = "FABRIC_E_BACKUP_IN_PROGRESS"
      FABRICERESTOREINPROGRESS = "FABRIC_E_RESTORE_IN_PROGRESS"
      FABRICEBACKUPPOLICYALREADYEXISTING = "FABRIC_E_BACKUP_POLICY_ALREADY_EXISTING"
      FABRICEINVALIDSERVICESCALINGPOLICY = "FABRIC_E_INVALID_SERVICE_SCALING_POLICY"
      EINVALIDARG = "E_INVALIDARG"
      FABRICESINGLEINSTANCEAPPLICATIONALREADYEXISTS = "FABRIC_E_SINGLE_INSTANCE_APPLICATION_ALREADY_EXISTS"
      FABRICESINGLEINSTANCEAPPLICATIONNOTFOUND = "FABRIC_E_SINGLE_INSTANCE_APPLICATION_NOT_FOUND"
      FABRICEVOLUMEALREADYEXISTS = "FABRIC_E_VOLUME_ALREADY_EXISTS"
      FABRICEVOLUMENOTFOUND = "FABRIC_E_VOLUME_NOT_FOUND"
      SerializationError = "SerializationError"
      FABRICEIMAGEBUILDERRESERVEDDIRECTORYERROR = "FABRIC_E_IMAGEBUILDER_RESERVED_DIRECTORY_ERROR"
    end
  end
end
