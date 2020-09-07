# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_key_vault'

module Azure::KeyVault::Profiles::Latest
  RoleDefinitions = Azure::KeyVault::V7_2_preview::RoleDefinitions
  RoleAssignments = Azure::KeyVault::V7_2_preview::RoleAssignments
  HSMSecurityDomain = Azure::KeyVault::V7_2_preview::HSMSecurityDomain

  module Models
    RoleAssignmentFilter = Azure::KeyVault::V7_2_preview::Models::RoleAssignmentFilter
    RoleAssignmentPropertiesWithScope = Azure::KeyVault::V7_2_preview::Models::RoleAssignmentPropertiesWithScope
    CertificateItem = Azure::KeyVault::V7_2_preview::Models::CertificateItem
    RoleAssignment = Azure::KeyVault::V7_2_preview::Models::RoleAssignment
    KeyProperties = Azure::KeyVault::V7_2_preview::Models::KeyProperties
    RoleAssignmentListResult = Azure::KeyVault::V7_2_preview::Models::RoleAssignmentListResult
    SubjectAlternativeNames = Azure::KeyVault::V7_2_preview::Models::SubjectAlternativeNames
    RoleAssignmentProperties = Azure::KeyVault::V7_2_preview::Models::RoleAssignmentProperties
    Trigger = Azure::KeyVault::V7_2_preview::Models::Trigger
    RoleAssignmentCreateParameters = Azure::KeyVault::V7_2_preview::Models::RoleAssignmentCreateParameters
    LifetimeAction = Azure::KeyVault::V7_2_preview::Models::LifetimeAction
    RoleDefinitionFilter = Azure::KeyVault::V7_2_preview::Models::RoleDefinitionFilter
    CertificatePolicy = Azure::KeyVault::V7_2_preview::Models::CertificatePolicy
    Permission = Azure::KeyVault::V7_2_preview::Models::Permission
    CertificateIssuerItem = Azure::KeyVault::V7_2_preview::Models::CertificateIssuerItem
    SecretProperties = Azure::KeyVault::V7_2_preview::Models::SecretProperties
    Error = Azure::KeyVault::V7_2_preview::Models::Error
    X509CertificateProperties = Azure::KeyVault::V7_2_preview::Models::X509CertificateProperties
    IssuerCredentials = Azure::KeyVault::V7_2_preview::Models::IssuerCredentials
    Action = Azure::KeyVault::V7_2_preview::Models::Action
    OrganizationDetails = Azure::KeyVault::V7_2_preview::Models::OrganizationDetails
    IssuerParameters = Azure::KeyVault::V7_2_preview::Models::IssuerParameters
    IssuerBundle = Azure::KeyVault::V7_2_preview::Models::IssuerBundle
    CertificateBundle = Azure::KeyVault::V7_2_preview::Models::CertificateBundle
    Contacts = Azure::KeyVault::V7_2_preview::Models::Contacts
    SecurityDomainOperationStatus = Azure::KeyVault::V7_2_preview::Models::SecurityDomainOperationStatus
    CertificateImportParameters = Azure::KeyVault::V7_2_preview::Models::CertificateImportParameters
    RoleDefinition = Azure::KeyVault::V7_2_preview::Models::RoleDefinition
    CertificateMergeParameters = Azure::KeyVault::V7_2_preview::Models::CertificateMergeParameters
    RoleDefinitionListResult = Azure::KeyVault::V7_2_preview::Models::RoleDefinitionListResult
    CertificateIssuerUpdateParameters = Azure::KeyVault::V7_2_preview::Models::CertificateIssuerUpdateParameters
    SecurityDomainObject = Azure::KeyVault::V7_2_preview::Models::SecurityDomainObject
    CertificateListResult = Azure::KeyVault::V7_2_preview::Models::CertificateListResult
    SecretBundle = Azure::KeyVault::V7_2_preview::Models::SecretBundle
    CertificateIssuerListResult = Azure::KeyVault::V7_2_preview::Models::CertificateIssuerListResult
    SecretItem = Azure::KeyVault::V7_2_preview::Models::SecretItem
    CertificateRestoreParameters = Azure::KeyVault::V7_2_preview::Models::CertificateRestoreParameters
    SecurityDomainObjectData = Azure::KeyVault::V7_2_preview::Models::SecurityDomainObjectData
    Attributes = Azure::KeyVault::V7_2_preview::Models::Attributes
    SecurityDomainObjectDataSharedKeys = Azure::KeyVault::V7_2_preview::Models::SecurityDomainObjectDataSharedKeys
    KeyReleaseCondition = Azure::KeyVault::V7_2_preview::Models::KeyReleaseCondition
    SecretRestoreParameters = Azure::KeyVault::V7_2_preview::Models::SecretRestoreParameters
    KeyReleasePolicy = Azure::KeyVault::V7_2_preview::Models::KeyReleasePolicy
    SecretSetParameters = Azure::KeyVault::V7_2_preview::Models::SecretSetParameters
    SecurityDomainUploadObject = Azure::KeyVault::V7_2_preview::Models::SecurityDomainUploadObject
    SecretUpdateParameters = Azure::KeyVault::V7_2_preview::Models::SecretUpdateParameters
    KeyItem = Azure::KeyVault::V7_2_preview::Models::KeyItem
    SecretListResult = Azure::KeyVault::V7_2_preview::Models::SecretListResult
    SecurityDomainUploadObjectValueWrappedKey = Azure::KeyVault::V7_2_preview::Models::SecurityDomainUploadObjectValueWrappedKey
    DeletedSecretListResult = Azure::KeyVault::V7_2_preview::Models::DeletedSecretListResult
    KeyImportParameters = Azure::KeyVault::V7_2_preview::Models::KeyImportParameters
    BackupSecretResult = Azure::KeyVault::V7_2_preview::Models::BackupSecretResult
    KeyOperationsParameters = Azure::KeyVault::V7_2_preview::Models::KeyOperationsParameters
    StorageRestoreParameters = Azure::KeyVault::V7_2_preview::Models::StorageRestoreParameters
    KeyVerifyParameters = Azure::KeyVault::V7_2_preview::Models::KeyVerifyParameters
    StorageAccountAttributes = Azure::KeyVault::V7_2_preview::Models::StorageAccountAttributes
    KeyRestoreParameters = Azure::KeyVault::V7_2_preview::Models::KeyRestoreParameters
    StorageBundle = Azure::KeyVault::V7_2_preview::Models::StorageBundle
    KeyVerifyResult = Azure::KeyVault::V7_2_preview::Models::KeyVerifyResult
    Key = Azure::KeyVault::V7_2_preview::Models::Key
    DeletedKeyListResult = Azure::KeyVault::V7_2_preview::Models::DeletedKeyListResult
    StorageAccountCreateParameters = Azure::KeyVault::V7_2_preview::Models::StorageAccountCreateParameters
    CertificateInfoObject = Azure::KeyVault::V7_2_preview::Models::CertificateInfoObject
    StorageAccountUpdateParameters = Azure::KeyVault::V7_2_preview::Models::StorageAccountUpdateParameters
    AdministratorDetails = Azure::KeyVault::V7_2_preview::Models::AdministratorDetails
    StorageAccountRegenerteKeyParameters = Azure::KeyVault::V7_2_preview::Models::StorageAccountRegenerteKeyParameters
    Contact = Azure::KeyVault::V7_2_preview::Models::Contact
    StorageAccountItem = Azure::KeyVault::V7_2_preview::Models::StorageAccountItem
    CertificateUpdateParameters = Azure::KeyVault::V7_2_preview::Models::CertificateUpdateParameters
    EncDataSet = Azure::KeyVault::V7_2_preview::Models::EncDataSet
    CertificateOperationUpdateParameter = Azure::KeyVault::V7_2_preview::Models::CertificateOperationUpdateParameter
    StorageListResult = Azure::KeyVault::V7_2_preview::Models::StorageListResult
    PendingCertificateSigningRequestResult = Azure::KeyVault::V7_2_preview::Models::PendingCertificateSigningRequestResult
    DeletedStorageListResult = Azure::KeyVault::V7_2_preview::Models::DeletedStorageListResult
    KeyVaultError = Azure::KeyVault::V7_2_preview::Models::KeyVaultError
    SasDefinitionAttributes = Azure::KeyVault::V7_2_preview::Models::SasDefinitionAttributes
    JsonWebKey = Azure::KeyVault::V7_2_preview::Models::JsonWebKey
    SasDefinitionBundle = Azure::KeyVault::V7_2_preview::Models::SasDefinitionBundle
    SecurityDomainUploadObjectValue = Azure::KeyVault::V7_2_preview::Models::SecurityDomainUploadObjectValue
    EncDataSetItem = Azure::KeyVault::V7_2_preview::Models::EncDataSetItem
    KeyExportParameters = Azure::KeyVault::V7_2_preview::Models::KeyExportParameters
    SasDefinitionItem = Azure::KeyVault::V7_2_preview::Models::SasDefinitionItem
    KeyUpdateParameters = Azure::KeyVault::V7_2_preview::Models::KeyUpdateParameters
    TransferKey = Azure::KeyVault::V7_2_preview::Models::TransferKey
    KeyListResult = Azure::KeyVault::V7_2_preview::Models::KeyListResult
    SasDefinitionListResult = Azure::KeyVault::V7_2_preview::Models::SasDefinitionListResult
    CertificateOperation = Azure::KeyVault::V7_2_preview::Models::CertificateOperation
    DeletedSasDefinitionListResult = Azure::KeyVault::V7_2_preview::Models::DeletedSasDefinitionListResult
    CertificateCreateParameters = Azure::KeyVault::V7_2_preview::Models::CertificateCreateParameters
    SasDefinitionCreateParameters = Azure::KeyVault::V7_2_preview::Models::SasDefinitionCreateParameters
    DeletedCertificateListResult = Azure::KeyVault::V7_2_preview::Models::DeletedCertificateListResult
    SasDefinitionUpdateParameters = Azure::KeyVault::V7_2_preview::Models::SasDefinitionUpdateParameters
    KeyReleaseAuthority = Azure::KeyVault::V7_2_preview::Models::KeyReleaseAuthority
    BackupStorageResult = Azure::KeyVault::V7_2_preview::Models::BackupStorageResult
    KeyCreateParameters = Azure::KeyVault::V7_2_preview::Models::KeyCreateParameters
    SASTokenParameter = Azure::KeyVault::V7_2_preview::Models::SASTokenParameter
    KeyOperationResult = Azure::KeyVault::V7_2_preview::Models::KeyOperationResult
    RestoreOperationParameters = Azure::KeyVault::V7_2_preview::Models::RestoreOperationParameters
    IssuerAttributes = Azure::KeyVault::V7_2_preview::Models::IssuerAttributes
    SelectiveKeyRestoreOperationParameters = Azure::KeyVault::V7_2_preview::Models::SelectiveKeyRestoreOperationParameters
    BackupCertificateResult = Azure::KeyVault::V7_2_preview::Models::BackupCertificateResult
    SelectiveKeyRestoreOperation = Azure::KeyVault::V7_2_preview::Models::SelectiveKeyRestoreOperation
    KeySignParameters = Azure::KeyVault::V7_2_preview::Models::KeySignParameters
    FullBackupOperation = Azure::KeyVault::V7_2_preview::Models::FullBackupOperation
    CertificateIssuerSetParameters = Azure::KeyVault::V7_2_preview::Models::CertificateIssuerSetParameters
    RestoreOperation = Azure::KeyVault::V7_2_preview::Models::RestoreOperation
    BackupKeyResult = Azure::KeyVault::V7_2_preview::Models::BackupKeyResult
    SecurityDomainJsonWebKey = Azure::KeyVault::V7_2_preview::Models::SecurityDomainJsonWebKey
    KeyBundle = Azure::KeyVault::V7_2_preview::Models::KeyBundle
    SecurityDomainCertificateItem = Azure::KeyVault::V7_2_preview::Models::SecurityDomainCertificateItem
    CertificateAttributes = Azure::KeyVault::V7_2_preview::Models::CertificateAttributes
    DeletedCertificateBundle = Azure::KeyVault::V7_2_preview::Models::DeletedCertificateBundle
    DeletedCertificateItem = Azure::KeyVault::V7_2_preview::Models::DeletedCertificateItem
    KeyAttributes = Azure::KeyVault::V7_2_preview::Models::KeyAttributes
    DeletedKeyBundle = Azure::KeyVault::V7_2_preview::Models::DeletedKeyBundle
    DeletedKeyItem = Azure::KeyVault::V7_2_preview::Models::DeletedKeyItem
    SecretAttributes = Azure::KeyVault::V7_2_preview::Models::SecretAttributes
    DeletedSecretBundle = Azure::KeyVault::V7_2_preview::Models::DeletedSecretBundle
    DeletedSecretItem = Azure::KeyVault::V7_2_preview::Models::DeletedSecretItem
    DeletedStorageBundle = Azure::KeyVault::V7_2_preview::Models::DeletedStorageBundle
    DeletedStorageAccountItem = Azure::KeyVault::V7_2_preview::Models::DeletedStorageAccountItem
    DeletedSasDefinitionBundle = Azure::KeyVault::V7_2_preview::Models::DeletedSasDefinitionBundle
    DeletedSasDefinitionItem = Azure::KeyVault::V7_2_preview::Models::DeletedSasDefinitionItem
    DeletionRecoveryLevel = Azure::KeyVault::V7_2_preview::Models::DeletionRecoveryLevel
    JsonWebKeyType = Azure::KeyVault::V7_2_preview::Models::JsonWebKeyType
    JsonWebKeyCurveName = Azure::KeyVault::V7_2_preview::Models::JsonWebKeyCurveName
    KeyUsageType = Azure::KeyVault::V7_2_preview::Models::KeyUsageType
    ActionType = Azure::KeyVault::V7_2_preview::Models::ActionType
    KeyReleaseConditionCondition = Azure::KeyVault::V7_2_preview::Models::KeyReleaseConditionCondition
    KeyReleasePolicyVersion = Azure::KeyVault::V7_2_preview::Models::KeyReleasePolicyVersion
    JsonWebKeyOperation = Azure::KeyVault::V7_2_preview::Models::JsonWebKeyOperation
    JsonWebKeyEncryptionAlgorithm = Azure::KeyVault::V7_2_preview::Models::JsonWebKeyEncryptionAlgorithm
    JsonWebKeySignatureAlgorithm = Azure::KeyVault::V7_2_preview::Models::JsonWebKeySignatureAlgorithm
    SasTokenType = Azure::KeyVault::V7_2_preview::Models::SasTokenType
    OperationStatus = Azure::KeyVault::V7_2_preview::Models::OperationStatus
  end

  #
  # KeyVaultDataClass
  #
  class KeyVaultDataClass
    attr_reader :role_definitions, :role_assignments, :hsmsecurity_domain, :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::KeyVault::V7_2_preview::KeyVaultClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @role_definitions = @client_0.role_definitions
      @role_assignments = @client_0.role_assignments
      @hsmsecurity_domain = @client_0.hsmsecurity_domain

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/KeyVault'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def role_assignment_filter
      Azure::KeyVault::V7_2_preview::Models::RoleAssignmentFilter
    end
    def role_assignment_properties_with_scope
      Azure::KeyVault::V7_2_preview::Models::RoleAssignmentPropertiesWithScope
    end
    def certificate_item
      Azure::KeyVault::V7_2_preview::Models::CertificateItem
    end
    def role_assignment
      Azure::KeyVault::V7_2_preview::Models::RoleAssignment
    end
    def key_properties
      Azure::KeyVault::V7_2_preview::Models::KeyProperties
    end
    def role_assignment_list_result
      Azure::KeyVault::V7_2_preview::Models::RoleAssignmentListResult
    end
    def subject_alternative_names
      Azure::KeyVault::V7_2_preview::Models::SubjectAlternativeNames
    end
    def role_assignment_properties
      Azure::KeyVault::V7_2_preview::Models::RoleAssignmentProperties
    end
    def trigger
      Azure::KeyVault::V7_2_preview::Models::Trigger
    end
    def role_assignment_create_parameters
      Azure::KeyVault::V7_2_preview::Models::RoleAssignmentCreateParameters
    end
    def lifetime_action
      Azure::KeyVault::V7_2_preview::Models::LifetimeAction
    end
    def role_definition_filter
      Azure::KeyVault::V7_2_preview::Models::RoleDefinitionFilter
    end
    def certificate_policy
      Azure::KeyVault::V7_2_preview::Models::CertificatePolicy
    end
    def permission
      Azure::KeyVault::V7_2_preview::Models::Permission
    end
    def certificate_issuer_item
      Azure::KeyVault::V7_2_preview::Models::CertificateIssuerItem
    end
    def secret_properties
      Azure::KeyVault::V7_2_preview::Models::SecretProperties
    end
    def error
      Azure::KeyVault::V7_2_preview::Models::Error
    end
    def x509_certificate_properties
      Azure::KeyVault::V7_2_preview::Models::X509CertificateProperties
    end
    def issuer_credentials
      Azure::KeyVault::V7_2_preview::Models::IssuerCredentials
    end
    def action
      Azure::KeyVault::V7_2_preview::Models::Action
    end
    def organization_details
      Azure::KeyVault::V7_2_preview::Models::OrganizationDetails
    end
    def issuer_parameters
      Azure::KeyVault::V7_2_preview::Models::IssuerParameters
    end
    def issuer_bundle
      Azure::KeyVault::V7_2_preview::Models::IssuerBundle
    end
    def certificate_bundle
      Azure::KeyVault::V7_2_preview::Models::CertificateBundle
    end
    def contacts
      Azure::KeyVault::V7_2_preview::Models::Contacts
    end
    def security_domain_operation_status
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainOperationStatus
    end
    def certificate_import_parameters
      Azure::KeyVault::V7_2_preview::Models::CertificateImportParameters
    end
    def role_definition
      Azure::KeyVault::V7_2_preview::Models::RoleDefinition
    end
    def certificate_merge_parameters
      Azure::KeyVault::V7_2_preview::Models::CertificateMergeParameters
    end
    def role_definition_list_result
      Azure::KeyVault::V7_2_preview::Models::RoleDefinitionListResult
    end
    def certificate_issuer_update_parameters
      Azure::KeyVault::V7_2_preview::Models::CertificateIssuerUpdateParameters
    end
    def security_domain_object
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainObject
    end
    def certificate_list_result
      Azure::KeyVault::V7_2_preview::Models::CertificateListResult
    end
    def secret_bundle
      Azure::KeyVault::V7_2_preview::Models::SecretBundle
    end
    def certificate_issuer_list_result
      Azure::KeyVault::V7_2_preview::Models::CertificateIssuerListResult
    end
    def secret_item
      Azure::KeyVault::V7_2_preview::Models::SecretItem
    end
    def certificate_restore_parameters
      Azure::KeyVault::V7_2_preview::Models::CertificateRestoreParameters
    end
    def security_domain_object_data
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainObjectData
    end
    def attributes
      Azure::KeyVault::V7_2_preview::Models::Attributes
    end
    def security_domain_object_data_shared_keys
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainObjectDataSharedKeys
    end
    def key_release_condition
      Azure::KeyVault::V7_2_preview::Models::KeyReleaseCondition
    end
    def secret_restore_parameters
      Azure::KeyVault::V7_2_preview::Models::SecretRestoreParameters
    end
    def key_release_policy
      Azure::KeyVault::V7_2_preview::Models::KeyReleasePolicy
    end
    def secret_set_parameters
      Azure::KeyVault::V7_2_preview::Models::SecretSetParameters
    end
    def security_domain_upload_object
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainUploadObject
    end
    def secret_update_parameters
      Azure::KeyVault::V7_2_preview::Models::SecretUpdateParameters
    end
    def key_item
      Azure::KeyVault::V7_2_preview::Models::KeyItem
    end
    def secret_list_result
      Azure::KeyVault::V7_2_preview::Models::SecretListResult
    end
    def security_domain_upload_object_value_wrapped_key
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainUploadObjectValueWrappedKey
    end
    def deleted_secret_list_result
      Azure::KeyVault::V7_2_preview::Models::DeletedSecretListResult
    end
    def key_import_parameters
      Azure::KeyVault::V7_2_preview::Models::KeyImportParameters
    end
    def backup_secret_result
      Azure::KeyVault::V7_2_preview::Models::BackupSecretResult
    end
    def key_operations_parameters
      Azure::KeyVault::V7_2_preview::Models::KeyOperationsParameters
    end
    def storage_restore_parameters
      Azure::KeyVault::V7_2_preview::Models::StorageRestoreParameters
    end
    def key_verify_parameters
      Azure::KeyVault::V7_2_preview::Models::KeyVerifyParameters
    end
    def storage_account_attributes
      Azure::KeyVault::V7_2_preview::Models::StorageAccountAttributes
    end
    def key_restore_parameters
      Azure::KeyVault::V7_2_preview::Models::KeyRestoreParameters
    end
    def storage_bundle
      Azure::KeyVault::V7_2_preview::Models::StorageBundle
    end
    def key_verify_result
      Azure::KeyVault::V7_2_preview::Models::KeyVerifyResult
    end
    def key
      Azure::KeyVault::V7_2_preview::Models::Key
    end
    def deleted_key_list_result
      Azure::KeyVault::V7_2_preview::Models::DeletedKeyListResult
    end
    def storage_account_create_parameters
      Azure::KeyVault::V7_2_preview::Models::StorageAccountCreateParameters
    end
    def certificate_info_object
      Azure::KeyVault::V7_2_preview::Models::CertificateInfoObject
    end
    def storage_account_update_parameters
      Azure::KeyVault::V7_2_preview::Models::StorageAccountUpdateParameters
    end
    def administrator_details
      Azure::KeyVault::V7_2_preview::Models::AdministratorDetails
    end
    def storage_account_regenerte_key_parameters
      Azure::KeyVault::V7_2_preview::Models::StorageAccountRegenerteKeyParameters
    end
    def contact
      Azure::KeyVault::V7_2_preview::Models::Contact
    end
    def storage_account_item
      Azure::KeyVault::V7_2_preview::Models::StorageAccountItem
    end
    def certificate_update_parameters
      Azure::KeyVault::V7_2_preview::Models::CertificateUpdateParameters
    end
    def enc_data_set
      Azure::KeyVault::V7_2_preview::Models::EncDataSet
    end
    def certificate_operation_update_parameter
      Azure::KeyVault::V7_2_preview::Models::CertificateOperationUpdateParameter
    end
    def storage_list_result
      Azure::KeyVault::V7_2_preview::Models::StorageListResult
    end
    def pending_certificate_signing_request_result
      Azure::KeyVault::V7_2_preview::Models::PendingCertificateSigningRequestResult
    end
    def deleted_storage_list_result
      Azure::KeyVault::V7_2_preview::Models::DeletedStorageListResult
    end
    def key_vault_error
      Azure::KeyVault::V7_2_preview::Models::KeyVaultError
    end
    def sas_definition_attributes
      Azure::KeyVault::V7_2_preview::Models::SasDefinitionAttributes
    end
    def json_web_key
      Azure::KeyVault::V7_2_preview::Models::JsonWebKey
    end
    def sas_definition_bundle
      Azure::KeyVault::V7_2_preview::Models::SasDefinitionBundle
    end
    def security_domain_upload_object_value
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainUploadObjectValue
    end
    def enc_data_set_item
      Azure::KeyVault::V7_2_preview::Models::EncDataSetItem
    end
    def key_export_parameters
      Azure::KeyVault::V7_2_preview::Models::KeyExportParameters
    end
    def sas_definition_item
      Azure::KeyVault::V7_2_preview::Models::SasDefinitionItem
    end
    def key_update_parameters
      Azure::KeyVault::V7_2_preview::Models::KeyUpdateParameters
    end
    def transfer_key
      Azure::KeyVault::V7_2_preview::Models::TransferKey
    end
    def key_list_result
      Azure::KeyVault::V7_2_preview::Models::KeyListResult
    end
    def sas_definition_list_result
      Azure::KeyVault::V7_2_preview::Models::SasDefinitionListResult
    end
    def certificate_operation
      Azure::KeyVault::V7_2_preview::Models::CertificateOperation
    end
    def deleted_sas_definition_list_result
      Azure::KeyVault::V7_2_preview::Models::DeletedSasDefinitionListResult
    end
    def certificate_create_parameters
      Azure::KeyVault::V7_2_preview::Models::CertificateCreateParameters
    end
    def sas_definition_create_parameters
      Azure::KeyVault::V7_2_preview::Models::SasDefinitionCreateParameters
    end
    def deleted_certificate_list_result
      Azure::KeyVault::V7_2_preview::Models::DeletedCertificateListResult
    end
    def sas_definition_update_parameters
      Azure::KeyVault::V7_2_preview::Models::SasDefinitionUpdateParameters
    end
    def key_release_authority
      Azure::KeyVault::V7_2_preview::Models::KeyReleaseAuthority
    end
    def backup_storage_result
      Azure::KeyVault::V7_2_preview::Models::BackupStorageResult
    end
    def key_create_parameters
      Azure::KeyVault::V7_2_preview::Models::KeyCreateParameters
    end
    def sastoken_parameter
      Azure::KeyVault::V7_2_preview::Models::SASTokenParameter
    end
    def key_operation_result
      Azure::KeyVault::V7_2_preview::Models::KeyOperationResult
    end
    def restore_operation_parameters
      Azure::KeyVault::V7_2_preview::Models::RestoreOperationParameters
    end
    def issuer_attributes
      Azure::KeyVault::V7_2_preview::Models::IssuerAttributes
    end
    def selective_key_restore_operation_parameters
      Azure::KeyVault::V7_2_preview::Models::SelectiveKeyRestoreOperationParameters
    end
    def backup_certificate_result
      Azure::KeyVault::V7_2_preview::Models::BackupCertificateResult
    end
    def selective_key_restore_operation
      Azure::KeyVault::V7_2_preview::Models::SelectiveKeyRestoreOperation
    end
    def key_sign_parameters
      Azure::KeyVault::V7_2_preview::Models::KeySignParameters
    end
    def full_backup_operation
      Azure::KeyVault::V7_2_preview::Models::FullBackupOperation
    end
    def certificate_issuer_set_parameters
      Azure::KeyVault::V7_2_preview::Models::CertificateIssuerSetParameters
    end
    def restore_operation
      Azure::KeyVault::V7_2_preview::Models::RestoreOperation
    end
    def backup_key_result
      Azure::KeyVault::V7_2_preview::Models::BackupKeyResult
    end
    def security_domain_json_web_key
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainJsonWebKey
    end
    def key_bundle
      Azure::KeyVault::V7_2_preview::Models::KeyBundle
    end
    def security_domain_certificate_item
      Azure::KeyVault::V7_2_preview::Models::SecurityDomainCertificateItem
    end
    def certificate_attributes
      Azure::KeyVault::V7_2_preview::Models::CertificateAttributes
    end
    def deleted_certificate_bundle
      Azure::KeyVault::V7_2_preview::Models::DeletedCertificateBundle
    end
    def deleted_certificate_item
      Azure::KeyVault::V7_2_preview::Models::DeletedCertificateItem
    end
    def key_attributes
      Azure::KeyVault::V7_2_preview::Models::KeyAttributes
    end
    def deleted_key_bundle
      Azure::KeyVault::V7_2_preview::Models::DeletedKeyBundle
    end
    def deleted_key_item
      Azure::KeyVault::V7_2_preview::Models::DeletedKeyItem
    end
    def secret_attributes
      Azure::KeyVault::V7_2_preview::Models::SecretAttributes
    end
    def deleted_secret_bundle
      Azure::KeyVault::V7_2_preview::Models::DeletedSecretBundle
    end
    def deleted_secret_item
      Azure::KeyVault::V7_2_preview::Models::DeletedSecretItem
    end
    def deleted_storage_bundle
      Azure::KeyVault::V7_2_preview::Models::DeletedStorageBundle
    end
    def deleted_storage_account_item
      Azure::KeyVault::V7_2_preview::Models::DeletedStorageAccountItem
    end
    def deleted_sas_definition_bundle
      Azure::KeyVault::V7_2_preview::Models::DeletedSasDefinitionBundle
    end
    def deleted_sas_definition_item
      Azure::KeyVault::V7_2_preview::Models::DeletedSasDefinitionItem
    end
    def deletion_recovery_level
      Azure::KeyVault::V7_2_preview::Models::DeletionRecoveryLevel
    end
    def json_web_key_type
      Azure::KeyVault::V7_2_preview::Models::JsonWebKeyType
    end
    def json_web_key_curve_name
      Azure::KeyVault::V7_2_preview::Models::JsonWebKeyCurveName
    end
    def key_usage_type
      Azure::KeyVault::V7_2_preview::Models::KeyUsageType
    end
    def action_type
      Azure::KeyVault::V7_2_preview::Models::ActionType
    end
    def key_release_condition_condition
      Azure::KeyVault::V7_2_preview::Models::KeyReleaseConditionCondition
    end
    def key_release_policy_version
      Azure::KeyVault::V7_2_preview::Models::KeyReleasePolicyVersion
    end
    def json_web_key_operation
      Azure::KeyVault::V7_2_preview::Models::JsonWebKeyOperation
    end
    def json_web_key_encryption_algorithm
      Azure::KeyVault::V7_2_preview::Models::JsonWebKeyEncryptionAlgorithm
    end
    def json_web_key_signature_algorithm
      Azure::KeyVault::V7_2_preview::Models::JsonWebKeySignatureAlgorithm
    end
    def sas_token_type
      Azure::KeyVault::V7_2_preview::Models::SasTokenType
    end
    def operation_status
      Azure::KeyVault::V7_2_preview::Models::OperationStatus
    end
  end
end
