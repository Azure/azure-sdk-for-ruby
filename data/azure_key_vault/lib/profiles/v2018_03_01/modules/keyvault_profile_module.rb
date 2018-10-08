# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_key_vault'

module Azure::KeyVault::Profiles::V2018_03_01

  module Models
    KeyOperationsParameters = Azure::KeyVault::V2016_10_01::Models::KeyOperationsParameters
    KeySignParameters = Azure::KeyVault::V2016_10_01::Models::KeySignParameters
    JsonWebKey = Azure::KeyVault::V2016_10_01::Models::JsonWebKey
    KeyVerifyParameters = Azure::KeyVault::V2016_10_01::Models::KeyVerifyParameters
    KeyBundle = Azure::KeyVault::V2016_10_01::Models::KeyBundle
    KeyUpdateParameters = Azure::KeyVault::V2016_10_01::Models::KeyUpdateParameters
    KeyImportParameters = Azure::KeyVault::V2016_10_01::Models::KeyImportParameters
    Attributes = Azure::KeyVault::V2016_10_01::Models::Attributes
    KeyVaultError = Azure::KeyVault::V2016_10_01::Models::KeyVaultError
    SecretBundle = Azure::KeyVault::V2016_10_01::Models::SecretBundle
    StorageListResult = Azure::KeyVault::V2016_10_01::Models::StorageListResult
    SasDefinitionUpdateParameters = Azure::KeyVault::V2016_10_01::Models::SasDefinitionUpdateParameters
    KeyItem = Azure::KeyVault::V2016_10_01::Models::KeyItem
    SecretRestoreParameters = Azure::KeyVault::V2016_10_01::Models::SecretRestoreParameters
    SasDefinitionAttributes = Azure::KeyVault::V2016_10_01::Models::SasDefinitionAttributes
    CertificateItem = Azure::KeyVault::V2016_10_01::Models::CertificateItem
    KeyRestoreParameters = Azure::KeyVault::V2016_10_01::Models::KeyRestoreParameters
    KeyProperties = Azure::KeyVault::V2016_10_01::Models::KeyProperties
    SecretSetParameters = Azure::KeyVault::V2016_10_01::Models::SecretSetParameters
    SubjectAlternativeNames = Azure::KeyVault::V2016_10_01::Models::SubjectAlternativeNames
    SecretUpdateParameters = Azure::KeyVault::V2016_10_01::Models::SecretUpdateParameters
    Trigger = Azure::KeyVault::V2016_10_01::Models::Trigger
    CertificateCreateParameters = Azure::KeyVault::V2016_10_01::Models::CertificateCreateParameters
    LifetimeAction = Azure::KeyVault::V2016_10_01::Models::LifetimeAction
    CertificateImportParameters = Azure::KeyVault::V2016_10_01::Models::CertificateImportParameters
    CertificatePolicy = Azure::KeyVault::V2016_10_01::Models::CertificatePolicy
    CertificateUpdateParameters = Azure::KeyVault::V2016_10_01::Models::CertificateUpdateParameters
    SasDefinitionItem = Azure::KeyVault::V2016_10_01::Models::SasDefinitionItem
    CertificateMergeParameters = Azure::KeyVault::V2016_10_01::Models::CertificateMergeParameters
    Error = Azure::KeyVault::V2016_10_01::Models::Error
    CertificateIssuerSetParameters = Azure::KeyVault::V2016_10_01::Models::CertificateIssuerSetParameters
    IssuerCredentials = Azure::KeyVault::V2016_10_01::Models::IssuerCredentials
    CertificateIssuerUpdateParameters = Azure::KeyVault::V2016_10_01::Models::CertificateIssuerUpdateParameters
    OrganizationDetails = Azure::KeyVault::V2016_10_01::Models::OrganizationDetails
    CertificateOperationUpdateParameter = Azure::KeyVault::V2016_10_01::Models::CertificateOperationUpdateParameter
    IssuerBundle = Azure::KeyVault::V2016_10_01::Models::IssuerBundle
    KeyOperationResult = Azure::KeyVault::V2016_10_01::Models::KeyOperationResult
    Contacts = Azure::KeyVault::V2016_10_01::Models::Contacts
    KeyVerifyResult = Azure::KeyVault::V2016_10_01::Models::KeyVerifyResult
    KeyListResult = Azure::KeyVault::V2016_10_01::Models::KeyListResult
    SasDefinitionCreateParameters = Azure::KeyVault::V2016_10_01::Models::SasDefinitionCreateParameters
    DeletedKeyListResult = Azure::KeyVault::V2016_10_01::Models::DeletedKeyListResult
    CertificateIssuerItem = Azure::KeyVault::V2016_10_01::Models::CertificateIssuerItem
    SecretListResult = Azure::KeyVault::V2016_10_01::Models::SecretListResult
    X509CertificateProperties = Azure::KeyVault::V2016_10_01::Models::X509CertificateProperties
    DeletedSecretListResult = Azure::KeyVault::V2016_10_01::Models::DeletedSecretListResult
    IssuerParameters = Azure::KeyVault::V2016_10_01::Models::IssuerParameters
    CertificateListResult = Azure::KeyVault::V2016_10_01::Models::CertificateListResult
    SasDefinitionBundle = Azure::KeyVault::V2016_10_01::Models::SasDefinitionBundle
    DeletedCertificateListResult = Azure::KeyVault::V2016_10_01::Models::DeletedCertificateListResult
    AdministratorDetails = Azure::KeyVault::V2016_10_01::Models::AdministratorDetails
    CertificateIssuerListResult = Azure::KeyVault::V2016_10_01::Models::CertificateIssuerListResult
    Contact = Azure::KeyVault::V2016_10_01::Models::Contact
    BackupKeyResult = Azure::KeyVault::V2016_10_01::Models::BackupKeyResult
    SecretItem = Azure::KeyVault::V2016_10_01::Models::SecretItem
    BackupSecretResult = Azure::KeyVault::V2016_10_01::Models::BackupSecretResult
    SecretProperties = Azure::KeyVault::V2016_10_01::Models::SecretProperties
    PendingCertificateSigningRequestResult = Azure::KeyVault::V2016_10_01::Models::PendingCertificateSigningRequestResult
    CertificateBundle = Azure::KeyVault::V2016_10_01::Models::CertificateBundle
    StorageAccountAttributes = Azure::KeyVault::V2016_10_01::Models::StorageAccountAttributes
    IssuerAttributes = Azure::KeyVault::V2016_10_01::Models::IssuerAttributes
    StorageBundle = Azure::KeyVault::V2016_10_01::Models::StorageBundle
    SasDefinitionListResult = Azure::KeyVault::V2016_10_01::Models::SasDefinitionListResult
    StorageAccountCreateParameters = Azure::KeyVault::V2016_10_01::Models::StorageAccountCreateParameters
    CertificateOperation = Azure::KeyVault::V2016_10_01::Models::CertificateOperation
    StorageAccountUpdateParameters = Azure::KeyVault::V2016_10_01::Models::StorageAccountUpdateParameters
    Action = Azure::KeyVault::V2016_10_01::Models::Action
    StorageAccountRegenerteKeyParameters = Azure::KeyVault::V2016_10_01::Models::StorageAccountRegenerteKeyParameters
    KeyCreateParameters = Azure::KeyVault::V2016_10_01::Models::KeyCreateParameters
    StorageAccountItem = Azure::KeyVault::V2016_10_01::Models::StorageAccountItem
    KeyAttributes = Azure::KeyVault::V2016_10_01::Models::KeyAttributes
    DeletedKeyBundle = Azure::KeyVault::V2016_10_01::Models::DeletedKeyBundle
    DeletedKeyItem = Azure::KeyVault::V2016_10_01::Models::DeletedKeyItem
    SecretAttributes = Azure::KeyVault::V2016_10_01::Models::SecretAttributes
    DeletedSecretBundle = Azure::KeyVault::V2016_10_01::Models::DeletedSecretBundle
    DeletedSecretItem = Azure::KeyVault::V2016_10_01::Models::DeletedSecretItem
    CertificateAttributes = Azure::KeyVault::V2016_10_01::Models::CertificateAttributes
    DeletedCertificateBundle = Azure::KeyVault::V2016_10_01::Models::DeletedCertificateBundle
    DeletedCertificateItem = Azure::KeyVault::V2016_10_01::Models::DeletedCertificateItem
    JsonWebKeyType = Azure::KeyVault::V2016_10_01::Models::JsonWebKeyType
    JsonWebKeyCurveName = Azure::KeyVault::V2016_10_01::Models::JsonWebKeyCurveName
    DeletionRecoveryLevel = Azure::KeyVault::V2016_10_01::Models::DeletionRecoveryLevel
    KeyUsageType = Azure::KeyVault::V2016_10_01::Models::KeyUsageType
    ActionType = Azure::KeyVault::V2016_10_01::Models::ActionType
    JsonWebKeyOperation = Azure::KeyVault::V2016_10_01::Models::JsonWebKeyOperation
    JsonWebKeyEncryptionAlgorithm = Azure::KeyVault::V2016_10_01::Models::JsonWebKeyEncryptionAlgorithm
    JsonWebKeySignatureAlgorithm = Azure::KeyVault::V2016_10_01::Models::JsonWebKeySignatureAlgorithm
  end

  #
  # KeyVaultDataClass
  #
  class KeyVaultDataClass
    attr_reader :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::KeyVault::V2016_10_01::KeyVaultClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/V2018_03_01/KeyVault'
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
    def key_operations_parameters
      Azure::KeyVault::V2016_10_01::Models::KeyOperationsParameters
    end
    def key_sign_parameters
      Azure::KeyVault::V2016_10_01::Models::KeySignParameters
    end
    def json_web_key
      Azure::KeyVault::V2016_10_01::Models::JsonWebKey
    end
    def key_verify_parameters
      Azure::KeyVault::V2016_10_01::Models::KeyVerifyParameters
    end
    def key_bundle
      Azure::KeyVault::V2016_10_01::Models::KeyBundle
    end
    def key_update_parameters
      Azure::KeyVault::V2016_10_01::Models::KeyUpdateParameters
    end
    def key_import_parameters
      Azure::KeyVault::V2016_10_01::Models::KeyImportParameters
    end
    def attributes
      Azure::KeyVault::V2016_10_01::Models::Attributes
    end
    def key_vault_error
      Azure::KeyVault::V2016_10_01::Models::KeyVaultError
    end
    def secret_bundle
      Azure::KeyVault::V2016_10_01::Models::SecretBundle
    end
    def storage_list_result
      Azure::KeyVault::V2016_10_01::Models::StorageListResult
    end
    def sas_definition_update_parameters
      Azure::KeyVault::V2016_10_01::Models::SasDefinitionUpdateParameters
    end
    def key_item
      Azure::KeyVault::V2016_10_01::Models::KeyItem
    end
    def secret_restore_parameters
      Azure::KeyVault::V2016_10_01::Models::SecretRestoreParameters
    end
    def sas_definition_attributes
      Azure::KeyVault::V2016_10_01::Models::SasDefinitionAttributes
    end
    def certificate_item
      Azure::KeyVault::V2016_10_01::Models::CertificateItem
    end
    def key_restore_parameters
      Azure::KeyVault::V2016_10_01::Models::KeyRestoreParameters
    end
    def key_properties
      Azure::KeyVault::V2016_10_01::Models::KeyProperties
    end
    def secret_set_parameters
      Azure::KeyVault::V2016_10_01::Models::SecretSetParameters
    end
    def subject_alternative_names
      Azure::KeyVault::V2016_10_01::Models::SubjectAlternativeNames
    end
    def secret_update_parameters
      Azure::KeyVault::V2016_10_01::Models::SecretUpdateParameters
    end
    def trigger
      Azure::KeyVault::V2016_10_01::Models::Trigger
    end
    def certificate_create_parameters
      Azure::KeyVault::V2016_10_01::Models::CertificateCreateParameters
    end
    def lifetime_action
      Azure::KeyVault::V2016_10_01::Models::LifetimeAction
    end
    def certificate_import_parameters
      Azure::KeyVault::V2016_10_01::Models::CertificateImportParameters
    end
    def certificate_policy
      Azure::KeyVault::V2016_10_01::Models::CertificatePolicy
    end
    def certificate_update_parameters
      Azure::KeyVault::V2016_10_01::Models::CertificateUpdateParameters
    end
    def sas_definition_item
      Azure::KeyVault::V2016_10_01::Models::SasDefinitionItem
    end
    def certificate_merge_parameters
      Azure::KeyVault::V2016_10_01::Models::CertificateMergeParameters
    end
    def error
      Azure::KeyVault::V2016_10_01::Models::Error
    end
    def certificate_issuer_set_parameters
      Azure::KeyVault::V2016_10_01::Models::CertificateIssuerSetParameters
    end
    def issuer_credentials
      Azure::KeyVault::V2016_10_01::Models::IssuerCredentials
    end
    def certificate_issuer_update_parameters
      Azure::KeyVault::V2016_10_01::Models::CertificateIssuerUpdateParameters
    end
    def organization_details
      Azure::KeyVault::V2016_10_01::Models::OrganizationDetails
    end
    def certificate_operation_update_parameter
      Azure::KeyVault::V2016_10_01::Models::CertificateOperationUpdateParameter
    end
    def issuer_bundle
      Azure::KeyVault::V2016_10_01::Models::IssuerBundle
    end
    def key_operation_result
      Azure::KeyVault::V2016_10_01::Models::KeyOperationResult
    end
    def contacts
      Azure::KeyVault::V2016_10_01::Models::Contacts
    end
    def key_verify_result
      Azure::KeyVault::V2016_10_01::Models::KeyVerifyResult
    end
    def key_list_result
      Azure::KeyVault::V2016_10_01::Models::KeyListResult
    end
    def sas_definition_create_parameters
      Azure::KeyVault::V2016_10_01::Models::SasDefinitionCreateParameters
    end
    def deleted_key_list_result
      Azure::KeyVault::V2016_10_01::Models::DeletedKeyListResult
    end
    def certificate_issuer_item
      Azure::KeyVault::V2016_10_01::Models::CertificateIssuerItem
    end
    def secret_list_result
      Azure::KeyVault::V2016_10_01::Models::SecretListResult
    end
    def x509_certificate_properties
      Azure::KeyVault::V2016_10_01::Models::X509CertificateProperties
    end
    def deleted_secret_list_result
      Azure::KeyVault::V2016_10_01::Models::DeletedSecretListResult
    end
    def issuer_parameters
      Azure::KeyVault::V2016_10_01::Models::IssuerParameters
    end
    def certificate_list_result
      Azure::KeyVault::V2016_10_01::Models::CertificateListResult
    end
    def sas_definition_bundle
      Azure::KeyVault::V2016_10_01::Models::SasDefinitionBundle
    end
    def deleted_certificate_list_result
      Azure::KeyVault::V2016_10_01::Models::DeletedCertificateListResult
    end
    def administrator_details
      Azure::KeyVault::V2016_10_01::Models::AdministratorDetails
    end
    def certificate_issuer_list_result
      Azure::KeyVault::V2016_10_01::Models::CertificateIssuerListResult
    end
    def contact
      Azure::KeyVault::V2016_10_01::Models::Contact
    end
    def backup_key_result
      Azure::KeyVault::V2016_10_01::Models::BackupKeyResult
    end
    def secret_item
      Azure::KeyVault::V2016_10_01::Models::SecretItem
    end
    def backup_secret_result
      Azure::KeyVault::V2016_10_01::Models::BackupSecretResult
    end
    def secret_properties
      Azure::KeyVault::V2016_10_01::Models::SecretProperties
    end
    def pending_certificate_signing_request_result
      Azure::KeyVault::V2016_10_01::Models::PendingCertificateSigningRequestResult
    end
    def certificate_bundle
      Azure::KeyVault::V2016_10_01::Models::CertificateBundle
    end
    def storage_account_attributes
      Azure::KeyVault::V2016_10_01::Models::StorageAccountAttributes
    end
    def issuer_attributes
      Azure::KeyVault::V2016_10_01::Models::IssuerAttributes
    end
    def storage_bundle
      Azure::KeyVault::V2016_10_01::Models::StorageBundle
    end
    def sas_definition_list_result
      Azure::KeyVault::V2016_10_01::Models::SasDefinitionListResult
    end
    def storage_account_create_parameters
      Azure::KeyVault::V2016_10_01::Models::StorageAccountCreateParameters
    end
    def certificate_operation
      Azure::KeyVault::V2016_10_01::Models::CertificateOperation
    end
    def storage_account_update_parameters
      Azure::KeyVault::V2016_10_01::Models::StorageAccountUpdateParameters
    end
    def action
      Azure::KeyVault::V2016_10_01::Models::Action
    end
    def storage_account_regenerte_key_parameters
      Azure::KeyVault::V2016_10_01::Models::StorageAccountRegenerteKeyParameters
    end
    def key_create_parameters
      Azure::KeyVault::V2016_10_01::Models::KeyCreateParameters
    end
    def storage_account_item
      Azure::KeyVault::V2016_10_01::Models::StorageAccountItem
    end
    def key_attributes
      Azure::KeyVault::V2016_10_01::Models::KeyAttributes
    end
    def deleted_key_bundle
      Azure::KeyVault::V2016_10_01::Models::DeletedKeyBundle
    end
    def deleted_key_item
      Azure::KeyVault::V2016_10_01::Models::DeletedKeyItem
    end
    def secret_attributes
      Azure::KeyVault::V2016_10_01::Models::SecretAttributes
    end
    def deleted_secret_bundle
      Azure::KeyVault::V2016_10_01::Models::DeletedSecretBundle
    end
    def deleted_secret_item
      Azure::KeyVault::V2016_10_01::Models::DeletedSecretItem
    end
    def certificate_attributes
      Azure::KeyVault::V2016_10_01::Models::CertificateAttributes
    end
    def deleted_certificate_bundle
      Azure::KeyVault::V2016_10_01::Models::DeletedCertificateBundle
    end
    def deleted_certificate_item
      Azure::KeyVault::V2016_10_01::Models::DeletedCertificateItem
    end
    def json_web_key_type
      Azure::KeyVault::V2016_10_01::Models::JsonWebKeyType
    end
    def json_web_key_curve_name
      Azure::KeyVault::V2016_10_01::Models::JsonWebKeyCurveName
    end
    def deletion_recovery_level
      Azure::KeyVault::V2016_10_01::Models::DeletionRecoveryLevel
    end
    def key_usage_type
      Azure::KeyVault::V2016_10_01::Models::KeyUsageType
    end
    def action_type
      Azure::KeyVault::V2016_10_01::Models::ActionType
    end
    def json_web_key_operation
      Azure::KeyVault::V2016_10_01::Models::JsonWebKeyOperation
    end
    def json_web_key_encryption_algorithm
      Azure::KeyVault::V2016_10_01::Models::JsonWebKeyEncryptionAlgorithm
    end
    def json_web_key_signature_algorithm
      Azure::KeyVault::V2016_10_01::Models::JsonWebKeySignatureAlgorithm
    end
  end
end
