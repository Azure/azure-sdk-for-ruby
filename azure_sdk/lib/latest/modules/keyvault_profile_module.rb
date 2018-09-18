# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_key_vault'
require 'azure_key_vault'

module Azure::Profiles::Latest
  module KeyVault

    module Models
      CertificateListResult = Azure::KeyVault::V7_0::Models::CertificateListResult
      StorageAccountUpdateParameters = Azure::KeyVault::V7_0::Models::StorageAccountUpdateParameters
      StorageAccountCreateParameters = Azure::KeyVault::V7_0::Models::StorageAccountCreateParameters
      Action = Azure::KeyVault::V7_0::Models::Action
      KeyRestoreParameters = Azure::KeyVault::V7_0::Models::KeyRestoreParameters
      SecretSetParameters = Azure::KeyVault::V7_0::Models::SecretSetParameters
      JsonWebKey = Azure::KeyVault::V7_0::Models::JsonWebKey
      SecretUpdateParameters = Azure::KeyVault::V7_0::Models::SecretUpdateParameters
      KeyBundle = Azure::KeyVault::V7_0::Models::KeyBundle
      CertificateCreateParameters = Azure::KeyVault::V7_0::Models::CertificateCreateParameters
      KeySignParameters = Azure::KeyVault::V7_0::Models::KeySignParameters
      KeyVerifyParameters = Azure::KeyVault::V7_0::Models::KeyVerifyParameters
      BackupCertificateResult = Azure::KeyVault::V7_0::Models::BackupCertificateResult
      KeyUpdateParameters = Azure::KeyVault::V7_0::Models::KeyUpdateParameters
      SecretItem = Azure::KeyVault::V7_0::Models::SecretItem
      Attributes = Azure::KeyVault::V7_0::Models::Attributes
      KeyVaultError = Azure::KeyVault::V7_0::Models::KeyVaultError
      SecretRestoreParameters = Azure::KeyVault::V7_0::Models::SecretRestoreParameters
      SasDefinitionAttributes = Azure::KeyVault::V7_0::Models::SasDefinitionAttributes
      SasDefinitionUpdateParameters = Azure::KeyVault::V7_0::Models::SasDefinitionUpdateParameters
      KeyItem = Azure::KeyVault::V7_0::Models::KeyItem
      CertificateIssuerItem = Azure::KeyVault::V7_0::Models::CertificateIssuerItem
      SasDefinitionListResult = Azure::KeyVault::V7_0::Models::SasDefinitionListResult
      SecretProperties = Azure::KeyVault::V7_0::Models::SecretProperties
      CertificateImportParameters = Azure::KeyVault::V7_0::Models::CertificateImportParameters
      X509CertificateProperties = Azure::KeyVault::V7_0::Models::X509CertificateProperties
      CertificateMergeParameters = Azure::KeyVault::V7_0::Models::CertificateMergeParameters
      IssuerParameters = Azure::KeyVault::V7_0::Models::IssuerParameters
      CertificateIssuerSetParameters = Azure::KeyVault::V7_0::Models::CertificateIssuerSetParameters
      CertificateBundle = Azure::KeyVault::V7_0::Models::CertificateBundle
      CertificateIssuerUpdateParameters = Azure::KeyVault::V7_0::Models::CertificateIssuerUpdateParameters
      DeletedSasDefinitionListResult = Azure::KeyVault::V7_0::Models::DeletedSasDefinitionListResult
      CertificateOperationUpdateParameter = Azure::KeyVault::V7_0::Models::CertificateOperationUpdateParameter
      CertificateOperation = Azure::KeyVault::V7_0::Models::CertificateOperation
      KeyOperationResult = Azure::KeyVault::V7_0::Models::KeyOperationResult
      AdministratorDetails = Azure::KeyVault::V7_0::Models::AdministratorDetails
      KeyVerifyResult = Azure::KeyVault::V7_0::Models::KeyVerifyResult
      IssuerAttributes = Azure::KeyVault::V7_0::Models::IssuerAttributes
      Contact = Azure::KeyVault::V7_0::Models::Contact
      DeletedKeyListResult = Azure::KeyVault::V7_0::Models::DeletedKeyListResult
      KeyCreateParameters = Azure::KeyVault::V7_0::Models::KeyCreateParameters
      SecretListResult = Azure::KeyVault::V7_0::Models::SecretListResult
      KeyOperationsParameters = Azure::KeyVault::V7_0::Models::KeyOperationsParameters
      DeletedSecretListResult = Azure::KeyVault::V7_0::Models::DeletedSecretListResult
      SecretBundle = Azure::KeyVault::V7_0::Models::SecretBundle
      StorageRestoreParameters = Azure::KeyVault::V7_0::Models::StorageRestoreParameters
      DeletedCertificateListResult = Azure::KeyVault::V7_0::Models::DeletedCertificateListResult
      KeyProperties = Azure::KeyVault::V7_0::Models::KeyProperties
      CertificateIssuerListResult = Azure::KeyVault::V7_0::Models::CertificateIssuerListResult
      Trigger = Azure::KeyVault::V7_0::Models::Trigger
      BackupKeyResult = Azure::KeyVault::V7_0::Models::BackupKeyResult
      CertificatePolicy = Azure::KeyVault::V7_0::Models::CertificatePolicy
      BackupSecretResult = Azure::KeyVault::V7_0::Models::BackupSecretResult
      BackupStorageResult = Azure::KeyVault::V7_0::Models::BackupStorageResult
      OrganizationDetails = Azure::KeyVault::V7_0::Models::OrganizationDetails
      PendingCertificateSigningRequestResult = Azure::KeyVault::V7_0::Models::PendingCertificateSigningRequestResult
      Contacts = Azure::KeyVault::V7_0::Models::Contacts
      StorageAccountAttributes = Azure::KeyVault::V7_0::Models::StorageAccountAttributes
      StorageBundle = Azure::KeyVault::V7_0::Models::StorageBundle
      CertificateItem = Azure::KeyVault::V7_0::Models::CertificateItem
      SasDefinitionItem = Azure::KeyVault::V7_0::Models::SasDefinitionItem
      LifetimeAction = Azure::KeyVault::V7_0::Models::LifetimeAction
      IssuerCredentials = Azure::KeyVault::V7_0::Models::IssuerCredentials
      KeyImportParameters = Azure::KeyVault::V7_0::Models::KeyImportParameters
      StorageAccountRegenerteKeyParameters = Azure::KeyVault::V7_0::Models::StorageAccountRegenerteKeyParameters
      SubjectAlternativeNames = Azure::KeyVault::V7_0::Models::SubjectAlternativeNames
      StorageAccountItem = Azure::KeyVault::V7_0::Models::StorageAccountItem
      IssuerBundle = Azure::KeyVault::V7_0::Models::IssuerBundle
      SasDefinitionBundle = Azure::KeyVault::V7_0::Models::SasDefinitionBundle
      SasDefinitionCreateParameters = Azure::KeyVault::V7_0::Models::SasDefinitionCreateParameters
      StorageListResult = Azure::KeyVault::V7_0::Models::StorageListResult
      CertificateRestoreParameters = Azure::KeyVault::V7_0::Models::CertificateRestoreParameters
      DeletedStorageListResult = Azure::KeyVault::V7_0::Models::DeletedStorageListResult
      KeyAttributes = Azure::KeyVault::V7_0::Models::KeyAttributes
      DeletedKeyBundle = Azure::KeyVault::V7_0::Models::DeletedKeyBundle
      DeletedKeyItem = Azure::KeyVault::V7_0::Models::DeletedKeyItem
      SecretAttributes = Azure::KeyVault::V7_0::Models::SecretAttributes
      DeletedSecretBundle = Azure::KeyVault::V7_0::Models::DeletedSecretBundle
      DeletedSecretItem = Azure::KeyVault::V7_0::Models::DeletedSecretItem
      CertificateAttributes = Azure::KeyVault::V7_0::Models::CertificateAttributes
      DeletedCertificateBundle = Azure::KeyVault::V7_0::Models::DeletedCertificateBundle
      DeletedCertificateItem = Azure::KeyVault::V7_0::Models::DeletedCertificateItem
      DeletedStorageBundle = Azure::KeyVault::V7_0::Models::DeletedStorageBundle
      DeletedStorageAccountItem = Azure::KeyVault::V7_0::Models::DeletedStorageAccountItem
      DeletedSasDefinitionBundle = Azure::KeyVault::V7_0::Models::DeletedSasDefinitionBundle
      DeletedSasDefinitionItem = Azure::KeyVault::V7_0::Models::DeletedSasDefinitionItem
      JsonWebKeyType = Azure::KeyVault::V7_0::Models::JsonWebKeyType
      JsonWebKeyCurveName = Azure::KeyVault::V7_0::Models::JsonWebKeyCurveName
      Error = Azure::KeyVault::V7_0::Models::Error
      DeletionRecoveryLevel = Azure::KeyVault::V7_0::Models::DeletionRecoveryLevel
      KeyUsageType = Azure::KeyVault::V7_0::Models::KeyUsageType
      ActionType = Azure::KeyVault::V7_0::Models::ActionType
      JsonWebKeyOperation = Azure::KeyVault::V7_0::Models::JsonWebKeyOperation
      JsonWebKeyEncryptionAlgorithm = Azure::KeyVault::V7_0::Models::JsonWebKeyEncryptionAlgorithm
      JsonWebKeySignatureAlgorithm = Azure::KeyVault::V7_0::Models::JsonWebKeySignatureAlgorithm
      SasTokenType = Azure::KeyVault::V7_0::Models::SasTokenType
      KeyListResult = Azure::KeyVault::V7_0::Models::KeyListResult
      CertificateUpdateParameters = Azure::KeyVault::V7_0::Models::CertificateUpdateParameters
    end

    class KeyVaultDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::KeyVault::V7_0::KeyVaultClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/KeyVault"
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
        def certificate_list_result
          Azure::KeyVault::V7_0::Models::CertificateListResult
        end
        def storage_account_update_parameters
          Azure::KeyVault::V7_0::Models::StorageAccountUpdateParameters
        end
        def storage_account_create_parameters
          Azure::KeyVault::V7_0::Models::StorageAccountCreateParameters
        end
        def action
          Azure::KeyVault::V7_0::Models::Action
        end
        def key_restore_parameters
          Azure::KeyVault::V7_0::Models::KeyRestoreParameters
        end
        def secret_set_parameters
          Azure::KeyVault::V7_0::Models::SecretSetParameters
        end
        def json_web_key
          Azure::KeyVault::V7_0::Models::JsonWebKey
        end
        def secret_update_parameters
          Azure::KeyVault::V7_0::Models::SecretUpdateParameters
        end
        def key_bundle
          Azure::KeyVault::V7_0::Models::KeyBundle
        end
        def certificate_create_parameters
          Azure::KeyVault::V7_0::Models::CertificateCreateParameters
        end
        def key_sign_parameters
          Azure::KeyVault::V7_0::Models::KeySignParameters
        end
        def key_verify_parameters
          Azure::KeyVault::V7_0::Models::KeyVerifyParameters
        end
        def backup_certificate_result
          Azure::KeyVault::V7_0::Models::BackupCertificateResult
        end
        def key_update_parameters
          Azure::KeyVault::V7_0::Models::KeyUpdateParameters
        end
        def secret_item
          Azure::KeyVault::V7_0::Models::SecretItem
        end
        def attributes
          Azure::KeyVault::V7_0::Models::Attributes
        end
        def key_vault_error
          Azure::KeyVault::V7_0::Models::KeyVaultError
        end
        def secret_restore_parameters
          Azure::KeyVault::V7_0::Models::SecretRestoreParameters
        end
        def sas_definition_attributes
          Azure::KeyVault::V7_0::Models::SasDefinitionAttributes
        end
        def sas_definition_update_parameters
          Azure::KeyVault::V7_0::Models::SasDefinitionUpdateParameters
        end
        def key_item
          Azure::KeyVault::V7_0::Models::KeyItem
        end
        def certificate_issuer_item
          Azure::KeyVault::V7_0::Models::CertificateIssuerItem
        end
        def sas_definition_list_result
          Azure::KeyVault::V7_0::Models::SasDefinitionListResult
        end
        def secret_properties
          Azure::KeyVault::V7_0::Models::SecretProperties
        end
        def certificate_import_parameters
          Azure::KeyVault::V7_0::Models::CertificateImportParameters
        end
        def x509_certificate_properties
          Azure::KeyVault::V7_0::Models::X509CertificateProperties
        end
        def certificate_merge_parameters
          Azure::KeyVault::V7_0::Models::CertificateMergeParameters
        end
        def issuer_parameters
          Azure::KeyVault::V7_0::Models::IssuerParameters
        end
        def certificate_issuer_set_parameters
          Azure::KeyVault::V7_0::Models::CertificateIssuerSetParameters
        end
        def certificate_bundle
          Azure::KeyVault::V7_0::Models::CertificateBundle
        end
        def certificate_issuer_update_parameters
          Azure::KeyVault::V7_0::Models::CertificateIssuerUpdateParameters
        end
        def deleted_sas_definition_list_result
          Azure::KeyVault::V7_0::Models::DeletedSasDefinitionListResult
        end
        def certificate_operation_update_parameter
          Azure::KeyVault::V7_0::Models::CertificateOperationUpdateParameter
        end
        def certificate_operation
          Azure::KeyVault::V7_0::Models::CertificateOperation
        end
        def key_operation_result
          Azure::KeyVault::V7_0::Models::KeyOperationResult
        end
        def administrator_details
          Azure::KeyVault::V7_0::Models::AdministratorDetails
        end
        def key_verify_result
          Azure::KeyVault::V7_0::Models::KeyVerifyResult
        end
        def issuer_attributes
          Azure::KeyVault::V7_0::Models::IssuerAttributes
        end
        def contact
          Azure::KeyVault::V7_0::Models::Contact
        end
        def deleted_key_list_result
          Azure::KeyVault::V7_0::Models::DeletedKeyListResult
        end
        def key_create_parameters
          Azure::KeyVault::V7_0::Models::KeyCreateParameters
        end
        def secret_list_result
          Azure::KeyVault::V7_0::Models::SecretListResult
        end
        def key_operations_parameters
          Azure::KeyVault::V7_0::Models::KeyOperationsParameters
        end
        def deleted_secret_list_result
          Azure::KeyVault::V7_0::Models::DeletedSecretListResult
        end
        def secret_bundle
          Azure::KeyVault::V7_0::Models::SecretBundle
        end
        def storage_restore_parameters
          Azure::KeyVault::V7_0::Models::StorageRestoreParameters
        end
        def deleted_certificate_list_result
          Azure::KeyVault::V7_0::Models::DeletedCertificateListResult
        end
        def key_properties
          Azure::KeyVault::V7_0::Models::KeyProperties
        end
        def certificate_issuer_list_result
          Azure::KeyVault::V7_0::Models::CertificateIssuerListResult
        end
        def trigger
          Azure::KeyVault::V7_0::Models::Trigger
        end
        def backup_key_result
          Azure::KeyVault::V7_0::Models::BackupKeyResult
        end
        def certificate_policy
          Azure::KeyVault::V7_0::Models::CertificatePolicy
        end
        def backup_secret_result
          Azure::KeyVault::V7_0::Models::BackupSecretResult
        end
        def backup_storage_result
          Azure::KeyVault::V7_0::Models::BackupStorageResult
        end
        def organization_details
          Azure::KeyVault::V7_0::Models::OrganizationDetails
        end
        def pending_certificate_signing_request_result
          Azure::KeyVault::V7_0::Models::PendingCertificateSigningRequestResult
        end
        def contacts
          Azure::KeyVault::V7_0::Models::Contacts
        end
        def storage_account_attributes
          Azure::KeyVault::V7_0::Models::StorageAccountAttributes
        end
        def storage_bundle
          Azure::KeyVault::V7_0::Models::StorageBundle
        end
        def certificate_item
          Azure::KeyVault::V7_0::Models::CertificateItem
        end
        def sas_definition_item
          Azure::KeyVault::V7_0::Models::SasDefinitionItem
        end
        def lifetime_action
          Azure::KeyVault::V7_0::Models::LifetimeAction
        end
        def issuer_credentials
          Azure::KeyVault::V7_0::Models::IssuerCredentials
        end
        def key_import_parameters
          Azure::KeyVault::V7_0::Models::KeyImportParameters
        end
        def storage_account_regenerte_key_parameters
          Azure::KeyVault::V7_0::Models::StorageAccountRegenerteKeyParameters
        end
        def subject_alternative_names
          Azure::KeyVault::V7_0::Models::SubjectAlternativeNames
        end
        def storage_account_item
          Azure::KeyVault::V7_0::Models::StorageAccountItem
        end
        def issuer_bundle
          Azure::KeyVault::V7_0::Models::IssuerBundle
        end
        def sas_definition_bundle
          Azure::KeyVault::V7_0::Models::SasDefinitionBundle
        end
        def sas_definition_create_parameters
          Azure::KeyVault::V7_0::Models::SasDefinitionCreateParameters
        end
        def storage_list_result
          Azure::KeyVault::V7_0::Models::StorageListResult
        end
        def certificate_restore_parameters
          Azure::KeyVault::V7_0::Models::CertificateRestoreParameters
        end
        def deleted_storage_list_result
          Azure::KeyVault::V7_0::Models::DeletedStorageListResult
        end
        def key_attributes
          Azure::KeyVault::V7_0::Models::KeyAttributes
        end
        def deleted_key_bundle
          Azure::KeyVault::V7_0::Models::DeletedKeyBundle
        end
        def deleted_key_item
          Azure::KeyVault::V7_0::Models::DeletedKeyItem
        end
        def secret_attributes
          Azure::KeyVault::V7_0::Models::SecretAttributes
        end
        def deleted_secret_bundle
          Azure::KeyVault::V7_0::Models::DeletedSecretBundle
        end
        def deleted_secret_item
          Azure::KeyVault::V7_0::Models::DeletedSecretItem
        end
        def certificate_attributes
          Azure::KeyVault::V7_0::Models::CertificateAttributes
        end
        def deleted_certificate_bundle
          Azure::KeyVault::V7_0::Models::DeletedCertificateBundle
        end
        def deleted_certificate_item
          Azure::KeyVault::V7_0::Models::DeletedCertificateItem
        end
        def deleted_storage_bundle
          Azure::KeyVault::V7_0::Models::DeletedStorageBundle
        end
        def deleted_storage_account_item
          Azure::KeyVault::V7_0::Models::DeletedStorageAccountItem
        end
        def deleted_sas_definition_bundle
          Azure::KeyVault::V7_0::Models::DeletedSasDefinitionBundle
        end
        def deleted_sas_definition_item
          Azure::KeyVault::V7_0::Models::DeletedSasDefinitionItem
        end
        def json_web_key_type
          Azure::KeyVault::V7_0::Models::JsonWebKeyType
        end
        def json_web_key_curve_name
          Azure::KeyVault::V7_0::Models::JsonWebKeyCurveName
        end
        def error
          Azure::KeyVault::V7_0::Models::Error
        end
        def deletion_recovery_level
          Azure::KeyVault::V7_0::Models::DeletionRecoveryLevel
        end
        def key_usage_type
          Azure::KeyVault::V7_0::Models::KeyUsageType
        end
        def action_type
          Azure::KeyVault::V7_0::Models::ActionType
        end
        def json_web_key_operation
          Azure::KeyVault::V7_0::Models::JsonWebKeyOperation
        end
        def json_web_key_encryption_algorithm
          Azure::KeyVault::V7_0::Models::JsonWebKeyEncryptionAlgorithm
        end
        def json_web_key_signature_algorithm
          Azure::KeyVault::V7_0::Models::JsonWebKeySignatureAlgorithm
        end
        def sas_token_type
          Azure::KeyVault::V7_0::Models::SasTokenType
        end
        def key_list_result
          Azure::KeyVault::V7_0::Models::KeyListResult
        end
        def certificate_update_parameters
          Azure::KeyVault::V7_0::Models::CertificateUpdateParameters
        end
      end
    end
    module Mgmt
      Operations = Azure::KeyVault::Mgmt::V2018_02_14::Operations
      Vaults = Azure::KeyVault::Mgmt::V2018_02_14::Vaults

      module Models
        VaultPatchParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchParameters
        VaultCheckNameAvailabilityParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCheckNameAvailabilityParameters
        AccessPolicyEntry = Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyEntry
        VaultProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultProperties
        VaultCreateOrUpdateParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCreateOrUpdateParameters
        LogSpecification = Azure::KeyVault::Mgmt::V2018_02_14::Models::LogSpecification
        ResourceListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::ResourceListResult
        ServiceSpecification = Azure::KeyVault::Mgmt::V2018_02_14::Models::ServiceSpecification
        VaultAccessPolicyProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyProperties
        Vault = Azure::KeyVault::Mgmt::V2018_02_14::Models::Vault
        Sku = Azure::KeyVault::Mgmt::V2018_02_14::Models::Sku
        Operation = Azure::KeyVault::Mgmt::V2018_02_14::Models::Operation
        KeyPermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::KeyPermissions
        SecretPermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::SecretPermissions
        CertificatePermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::CertificatePermissions
        StoragePermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::StoragePermissions
        CreateMode = Azure::KeyVault::Mgmt::V2018_02_14::Models::CreateMode
        NetworkRuleBypassOptions = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleBypassOptions
        NetworkRuleAction = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleAction
        AccessPolicyUpdateKind = Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyUpdateKind
        CheckNameAvailabilityResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::CheckNameAvailabilityResult
        VirtualNetworkRule = Azure::KeyVault::Mgmt::V2018_02_14::Models::VirtualNetworkRule
        Resource = Azure::KeyVault::Mgmt::V2018_02_14::Models::Resource
        SkuName = Azure::KeyVault::Mgmt::V2018_02_14::Models::SkuName
        Reason = Azure::KeyVault::Mgmt::V2018_02_14::Models::Reason
        Permissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::Permissions
        OperationDisplay = Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationDisplay
        OperationListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationListResult
        VaultAccessPolicyParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyParameters
        DeletedVault = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVault
        IPRule = Azure::KeyVault::Mgmt::V2018_02_14::Models::IPRule
        VaultListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultListResult
        NetworkRuleSet = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleSet
        DeletedVaultListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultListResult
        VaultPatchProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchProperties
        DeletedVaultProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultProperties
      end

      class KeyVaultManagementClass
        attr_reader :operations, :vaults, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::KeyVault::Mgmt::V2018_02_14::KeyVaultManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @vaults = @client_0.vaults

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/KeyVault/Mgmt"
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
          def vault_patch_parameters
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchParameters
          end
          def vault_check_name_availability_parameters
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCheckNameAvailabilityParameters
          end
          def access_policy_entry
            Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyEntry
          end
          def vault_properties
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultProperties
          end
          def vault_create_or_update_parameters
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCreateOrUpdateParameters
          end
          def log_specification
            Azure::KeyVault::Mgmt::V2018_02_14::Models::LogSpecification
          end
          def resource_list_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::ResourceListResult
          end
          def service_specification
            Azure::KeyVault::Mgmt::V2018_02_14::Models::ServiceSpecification
          end
          def vault_access_policy_properties
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyProperties
          end
          def vault
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Vault
          end
          def sku
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Sku
          end
          def operation
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Operation
          end
          def key_permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::KeyPermissions
          end
          def secret_permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::SecretPermissions
          end
          def certificate_permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::CertificatePermissions
          end
          def storage_permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::StoragePermissions
          end
          def create_mode
            Azure::KeyVault::Mgmt::V2018_02_14::Models::CreateMode
          end
          def network_rule_bypass_options
            Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleBypassOptions
          end
          def network_rule_action
            Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleAction
          end
          def access_policy_update_kind
            Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyUpdateKind
          end
          def check_name_availability_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::CheckNameAvailabilityResult
          end
          def virtual_network_rule
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VirtualNetworkRule
          end
          def resource
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Resource
          end
          def sku_name
            Azure::KeyVault::Mgmt::V2018_02_14::Models::SkuName
          end
          def reason
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Reason
          end
          def permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Permissions
          end
          def operation_display
            Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationDisplay
          end
          def operation_list_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationListResult
          end
          def vault_access_policy_parameters
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyParameters
          end
          def deleted_vault
            Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVault
          end
          def iprule
            Azure::KeyVault::Mgmt::V2018_02_14::Models::IPRule
          end
          def vault_list_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultListResult
          end
          def network_rule_set
            Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleSet
          end
          def deleted_vault_list_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultListResult
          end
          def vault_patch_properties
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchProperties
          end
          def deleted_vault_properties
            Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultProperties
          end
        end
      end
    end
  end
end
