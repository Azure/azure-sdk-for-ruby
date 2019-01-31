# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_key_vault'
require 'azure_key_vault'

module Azure::Profiles::Latest
  module KeyVault

    module Models
      Action = Azure::KeyVault::V7_0::Models::Action
      KeyOperationsParameters = Azure::KeyVault::V7_0::Models::KeyOperationsParameters
      KeySignParameters = Azure::KeyVault::V7_0::Models::KeySignParameters
      JsonWebKey = Azure::KeyVault::V7_0::Models::JsonWebKey
      KeyVerifyParameters = Azure::KeyVault::V7_0::Models::KeyVerifyParameters
      KeyBundle = Azure::KeyVault::V7_0::Models::KeyBundle
      KeyUpdateParameters = Azure::KeyVault::V7_0::Models::KeyUpdateParameters
      BackupCertificateResult = Azure::KeyVault::V7_0::Models::BackupCertificateResult
      Attributes = Azure::KeyVault::V7_0::Models::Attributes
      KeyVaultError = Azure::KeyVault::V7_0::Models::KeyVaultError
      SecretBundle = Azure::KeyVault::V7_0::Models::SecretBundle
      DeletedSasDefinitionListResult = Azure::KeyVault::V7_0::Models::DeletedSasDefinitionListResult
      SasDefinitionUpdateParameters = Azure::KeyVault::V7_0::Models::SasDefinitionUpdateParameters
      KeyItem = Azure::KeyVault::V7_0::Models::KeyItem
      SecretRestoreParameters = Azure::KeyVault::V7_0::Models::SecretRestoreParameters
      SasDefinitionAttributes = Azure::KeyVault::V7_0::Models::SasDefinitionAttributes
      StorageRestoreParameters = Azure::KeyVault::V7_0::Models::StorageRestoreParameters
      KeyRestoreParameters = Azure::KeyVault::V7_0::Models::KeyRestoreParameters
      KeyProperties = Azure::KeyVault::V7_0::Models::KeyProperties
      SecretSetParameters = Azure::KeyVault::V7_0::Models::SecretSetParameters
      SubjectAlternativeNames = Azure::KeyVault::V7_0::Models::SubjectAlternativeNames
      SecretUpdateParameters = Azure::KeyVault::V7_0::Models::SecretUpdateParameters
      Trigger = Azure::KeyVault::V7_0::Models::Trigger
      CertificateCreateParameters = Azure::KeyVault::V7_0::Models::CertificateCreateParameters
      LifetimeAction = Azure::KeyVault::V7_0::Models::LifetimeAction
      CertificateImportParameters = Azure::KeyVault::V7_0::Models::CertificateImportParameters
      CertificatePolicy = Azure::KeyVault::V7_0::Models::CertificatePolicy
      CertificateUpdateParameters = Azure::KeyVault::V7_0::Models::CertificateUpdateParameters
      BackupStorageResult = Azure::KeyVault::V7_0::Models::BackupStorageResult
      CertificateMergeParameters = Azure::KeyVault::V7_0::Models::CertificateMergeParameters
      CertificateIssuerSetParameters = Azure::KeyVault::V7_0::Models::CertificateIssuerSetParameters
      CertificateItem = Azure::KeyVault::V7_0::Models::CertificateItem
      CertificateIssuerUpdateParameters = Azure::KeyVault::V7_0::Models::CertificateIssuerUpdateParameters
      OrganizationDetails = Azure::KeyVault::V7_0::Models::OrganizationDetails
      CertificateOperationUpdateParameter = Azure::KeyVault::V7_0::Models::CertificateOperationUpdateParameter
      KeyImportParameters = Azure::KeyVault::V7_0::Models::KeyImportParameters
      KeyOperationResult = Azure::KeyVault::V7_0::Models::KeyOperationResult
      Contacts = Azure::KeyVault::V7_0::Models::Contacts
      KeyVerifyResult = Azure::KeyVault::V7_0::Models::KeyVerifyResult
      KeyListResult = Azure::KeyVault::V7_0::Models::KeyListResult
      SasDefinitionCreateParameters = Azure::KeyVault::V7_0::Models::SasDefinitionCreateParameters
      DeletedKeyListResult = Azure::KeyVault::V7_0::Models::DeletedKeyListResult
      CertificateIssuerItem = Azure::KeyVault::V7_0::Models::CertificateIssuerItem
      SecretListResult = Azure::KeyVault::V7_0::Models::SecretListResult
      X509CertificateProperties = Azure::KeyVault::V7_0::Models::X509CertificateProperties
      DeletedSecretListResult = Azure::KeyVault::V7_0::Models::DeletedSecretListResult
      IssuerParameters = Azure::KeyVault::V7_0::Models::IssuerParameters
      CertificateListResult = Azure::KeyVault::V7_0::Models::CertificateListResult
      SasDefinitionBundle = Azure::KeyVault::V7_0::Models::SasDefinitionBundle
      DeletedCertificateListResult = Azure::KeyVault::V7_0::Models::DeletedCertificateListResult
      AdministratorDetails = Azure::KeyVault::V7_0::Models::AdministratorDetails
      CertificateIssuerListResult = Azure::KeyVault::V7_0::Models::CertificateIssuerListResult
      Contact = Azure::KeyVault::V7_0::Models::Contact
      BackupKeyResult = Azure::KeyVault::V7_0::Models::BackupKeyResult
      SecretItem = Azure::KeyVault::V7_0::Models::SecretItem
      BackupSecretResult = Azure::KeyVault::V7_0::Models::BackupSecretResult
      SecretProperties = Azure::KeyVault::V7_0::Models::SecretProperties
      PendingCertificateSigningRequestResult = Azure::KeyVault::V7_0::Models::PendingCertificateSigningRequestResult
      CertificateBundle = Azure::KeyVault::V7_0::Models::CertificateBundle
      StorageAccountAttributes = Azure::KeyVault::V7_0::Models::StorageAccountAttributes
      IssuerAttributes = Azure::KeyVault::V7_0::Models::IssuerAttributes
      StorageBundle = Azure::KeyVault::V7_0::Models::StorageBundle
      SasDefinitionListResult = Azure::KeyVault::V7_0::Models::SasDefinitionListResult
      StorageAccountCreateParameters = Azure::KeyVault::V7_0::Models::StorageAccountCreateParameters
      CertificateOperation = Azure::KeyVault::V7_0::Models::CertificateOperation
      Error = Azure::KeyVault::V7_0::Models::Error
      StorageAccountUpdateParameters = Azure::KeyVault::V7_0::Models::StorageAccountUpdateParameters
      KeyCreateParameters = Azure::KeyVault::V7_0::Models::KeyCreateParameters
      StorageAccountItem = Azure::KeyVault::V7_0::Models::StorageAccountItem
      StorageAccountRegenerteKeyParameters = Azure::KeyVault::V7_0::Models::StorageAccountRegenerteKeyParameters
      KeyAttributes = Azure::KeyVault::V7_0::Models::KeyAttributes
      IssuerBundle = Azure::KeyVault::V7_0::Models::IssuerBundle
      DeletedKeyItem = Azure::KeyVault::V7_0::Models::DeletedKeyItem
      SasDefinitionItem = Azure::KeyVault::V7_0::Models::SasDefinitionItem
      CertificateRestoreParameters = Azure::KeyVault::V7_0::Models::CertificateRestoreParameters
      DeletedStorageListResult = Azure::KeyVault::V7_0::Models::DeletedStorageListResult
      IssuerCredentials = Azure::KeyVault::V7_0::Models::IssuerCredentials
      StorageListResult = Azure::KeyVault::V7_0::Models::StorageListResult
      SecretAttributes = Azure::KeyVault::V7_0::Models::SecretAttributes
      DeletedSecretBundle = Azure::KeyVault::V7_0::Models::DeletedSecretBundle
      DeletedKeyBundle = Azure::KeyVault::V7_0::Models::DeletedKeyBundle
      CertificateAttributes = Azure::KeyVault::V7_0::Models::CertificateAttributes
      DeletedCertificateBundle = Azure::KeyVault::V7_0::Models::DeletedCertificateBundle
      DeletedCertificateItem = Azure::KeyVault::V7_0::Models::DeletedCertificateItem
      DeletedSecretItem = Azure::KeyVault::V7_0::Models::DeletedSecretItem
      JsonWebKeyCurveName = Azure::KeyVault::V7_0::Models::JsonWebKeyCurveName
      DeletionRecoveryLevel = Azure::KeyVault::V7_0::Models::DeletionRecoveryLevel
      KeyUsageType = Azure::KeyVault::V7_0::Models::KeyUsageType
      DeletedStorageBundle = Azure::KeyVault::V7_0::Models::DeletedStorageBundle
      DeletedStorageAccountItem = Azure::KeyVault::V7_0::Models::DeletedStorageAccountItem
      DeletedSasDefinitionBundle = Azure::KeyVault::V7_0::Models::DeletedSasDefinitionBundle
      DeletedSasDefinitionItem = Azure::KeyVault::V7_0::Models::DeletedSasDefinitionItem
      ActionType = Azure::KeyVault::V7_0::Models::ActionType
      JsonWebKeyType = Azure::KeyVault::V7_0::Models::JsonWebKeyType
      JsonWebKeyEncryptionAlgorithm = Azure::KeyVault::V7_0::Models::JsonWebKeyEncryptionAlgorithm
      JsonWebKeySignatureAlgorithm = Azure::KeyVault::V7_0::Models::JsonWebKeySignatureAlgorithm
      JsonWebKeyOperation = Azure::KeyVault::V7_0::Models::JsonWebKeyOperation
      SasTokenType = Azure::KeyVault::V7_0::Models::SasTokenType
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
        def action
          Azure::KeyVault::V7_0::Models::Action
        end
        def key_operations_parameters
          Azure::KeyVault::V7_0::Models::KeyOperationsParameters
        end
        def key_sign_parameters
          Azure::KeyVault::V7_0::Models::KeySignParameters
        end
        def json_web_key
          Azure::KeyVault::V7_0::Models::JsonWebKey
        end
        def key_verify_parameters
          Azure::KeyVault::V7_0::Models::KeyVerifyParameters
        end
        def key_bundle
          Azure::KeyVault::V7_0::Models::KeyBundle
        end
        def key_update_parameters
          Azure::KeyVault::V7_0::Models::KeyUpdateParameters
        end
        def backup_certificate_result
          Azure::KeyVault::V7_0::Models::BackupCertificateResult
        end
        def attributes
          Azure::KeyVault::V7_0::Models::Attributes
        end
        def key_vault_error
          Azure::KeyVault::V7_0::Models::KeyVaultError
        end
        def secret_bundle
          Azure::KeyVault::V7_0::Models::SecretBundle
        end
        def deleted_sas_definition_list_result
          Azure::KeyVault::V7_0::Models::DeletedSasDefinitionListResult
        end
        def sas_definition_update_parameters
          Azure::KeyVault::V7_0::Models::SasDefinitionUpdateParameters
        end
        def key_item
          Azure::KeyVault::V7_0::Models::KeyItem
        end
        def secret_restore_parameters
          Azure::KeyVault::V7_0::Models::SecretRestoreParameters
        end
        def sas_definition_attributes
          Azure::KeyVault::V7_0::Models::SasDefinitionAttributes
        end
        def storage_restore_parameters
          Azure::KeyVault::V7_0::Models::StorageRestoreParameters
        end
        def key_restore_parameters
          Azure::KeyVault::V7_0::Models::KeyRestoreParameters
        end
        def key_properties
          Azure::KeyVault::V7_0::Models::KeyProperties
        end
        def secret_set_parameters
          Azure::KeyVault::V7_0::Models::SecretSetParameters
        end
        def subject_alternative_names
          Azure::KeyVault::V7_0::Models::SubjectAlternativeNames
        end
        def secret_update_parameters
          Azure::KeyVault::V7_0::Models::SecretUpdateParameters
        end
        def trigger
          Azure::KeyVault::V7_0::Models::Trigger
        end
        def certificate_create_parameters
          Azure::KeyVault::V7_0::Models::CertificateCreateParameters
        end
        def lifetime_action
          Azure::KeyVault::V7_0::Models::LifetimeAction
        end
        def certificate_import_parameters
          Azure::KeyVault::V7_0::Models::CertificateImportParameters
        end
        def certificate_policy
          Azure::KeyVault::V7_0::Models::CertificatePolicy
        end
        def certificate_update_parameters
          Azure::KeyVault::V7_0::Models::CertificateUpdateParameters
        end
        def backup_storage_result
          Azure::KeyVault::V7_0::Models::BackupStorageResult
        end
        def certificate_merge_parameters
          Azure::KeyVault::V7_0::Models::CertificateMergeParameters
        end
        def certificate_issuer_set_parameters
          Azure::KeyVault::V7_0::Models::CertificateIssuerSetParameters
        end
        def certificate_item
          Azure::KeyVault::V7_0::Models::CertificateItem
        end
        def certificate_issuer_update_parameters
          Azure::KeyVault::V7_0::Models::CertificateIssuerUpdateParameters
        end
        def organization_details
          Azure::KeyVault::V7_0::Models::OrganizationDetails
        end
        def certificate_operation_update_parameter
          Azure::KeyVault::V7_0::Models::CertificateOperationUpdateParameter
        end
        def key_import_parameters
          Azure::KeyVault::V7_0::Models::KeyImportParameters
        end
        def key_operation_result
          Azure::KeyVault::V7_0::Models::KeyOperationResult
        end
        def contacts
          Azure::KeyVault::V7_0::Models::Contacts
        end
        def key_verify_result
          Azure::KeyVault::V7_0::Models::KeyVerifyResult
        end
        def key_list_result
          Azure::KeyVault::V7_0::Models::KeyListResult
        end
        def sas_definition_create_parameters
          Azure::KeyVault::V7_0::Models::SasDefinitionCreateParameters
        end
        def deleted_key_list_result
          Azure::KeyVault::V7_0::Models::DeletedKeyListResult
        end
        def certificate_issuer_item
          Azure::KeyVault::V7_0::Models::CertificateIssuerItem
        end
        def secret_list_result
          Azure::KeyVault::V7_0::Models::SecretListResult
        end
        def x509_certificate_properties
          Azure::KeyVault::V7_0::Models::X509CertificateProperties
        end
        def deleted_secret_list_result
          Azure::KeyVault::V7_0::Models::DeletedSecretListResult
        end
        def issuer_parameters
          Azure::KeyVault::V7_0::Models::IssuerParameters
        end
        def certificate_list_result
          Azure::KeyVault::V7_0::Models::CertificateListResult
        end
        def sas_definition_bundle
          Azure::KeyVault::V7_0::Models::SasDefinitionBundle
        end
        def deleted_certificate_list_result
          Azure::KeyVault::V7_0::Models::DeletedCertificateListResult
        end
        def administrator_details
          Azure::KeyVault::V7_0::Models::AdministratorDetails
        end
        def certificate_issuer_list_result
          Azure::KeyVault::V7_0::Models::CertificateIssuerListResult
        end
        def contact
          Azure::KeyVault::V7_0::Models::Contact
        end
        def backup_key_result
          Azure::KeyVault::V7_0::Models::BackupKeyResult
        end
        def secret_item
          Azure::KeyVault::V7_0::Models::SecretItem
        end
        def backup_secret_result
          Azure::KeyVault::V7_0::Models::BackupSecretResult
        end
        def secret_properties
          Azure::KeyVault::V7_0::Models::SecretProperties
        end
        def pending_certificate_signing_request_result
          Azure::KeyVault::V7_0::Models::PendingCertificateSigningRequestResult
        end
        def certificate_bundle
          Azure::KeyVault::V7_0::Models::CertificateBundle
        end
        def storage_account_attributes
          Azure::KeyVault::V7_0::Models::StorageAccountAttributes
        end
        def issuer_attributes
          Azure::KeyVault::V7_0::Models::IssuerAttributes
        end
        def storage_bundle
          Azure::KeyVault::V7_0::Models::StorageBundle
        end
        def sas_definition_list_result
          Azure::KeyVault::V7_0::Models::SasDefinitionListResult
        end
        def storage_account_create_parameters
          Azure::KeyVault::V7_0::Models::StorageAccountCreateParameters
        end
        def certificate_operation
          Azure::KeyVault::V7_0::Models::CertificateOperation
        end
        def error
          Azure::KeyVault::V7_0::Models::Error
        end
        def storage_account_update_parameters
          Azure::KeyVault::V7_0::Models::StorageAccountUpdateParameters
        end
        def key_create_parameters
          Azure::KeyVault::V7_0::Models::KeyCreateParameters
        end
        def storage_account_item
          Azure::KeyVault::V7_0::Models::StorageAccountItem
        end
        def storage_account_regenerte_key_parameters
          Azure::KeyVault::V7_0::Models::StorageAccountRegenerteKeyParameters
        end
        def key_attributes
          Azure::KeyVault::V7_0::Models::KeyAttributes
        end
        def issuer_bundle
          Azure::KeyVault::V7_0::Models::IssuerBundle
        end
        def deleted_key_item
          Azure::KeyVault::V7_0::Models::DeletedKeyItem
        end
        def sas_definition_item
          Azure::KeyVault::V7_0::Models::SasDefinitionItem
        end
        def certificate_restore_parameters
          Azure::KeyVault::V7_0::Models::CertificateRestoreParameters
        end
        def deleted_storage_list_result
          Azure::KeyVault::V7_0::Models::DeletedStorageListResult
        end
        def issuer_credentials
          Azure::KeyVault::V7_0::Models::IssuerCredentials
        end
        def storage_list_result
          Azure::KeyVault::V7_0::Models::StorageListResult
        end
        def secret_attributes
          Azure::KeyVault::V7_0::Models::SecretAttributes
        end
        def deleted_secret_bundle
          Azure::KeyVault::V7_0::Models::DeletedSecretBundle
        end
        def deleted_key_bundle
          Azure::KeyVault::V7_0::Models::DeletedKeyBundle
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
        def deleted_secret_item
          Azure::KeyVault::V7_0::Models::DeletedSecretItem
        end
        def json_web_key_curve_name
          Azure::KeyVault::V7_0::Models::JsonWebKeyCurveName
        end
        def deletion_recovery_level
          Azure::KeyVault::V7_0::Models::DeletionRecoveryLevel
        end
        def key_usage_type
          Azure::KeyVault::V7_0::Models::KeyUsageType
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
        def action_type
          Azure::KeyVault::V7_0::Models::ActionType
        end
        def json_web_key_type
          Azure::KeyVault::V7_0::Models::JsonWebKeyType
        end
        def json_web_key_encryption_algorithm
          Azure::KeyVault::V7_0::Models::JsonWebKeyEncryptionAlgorithm
        end
        def json_web_key_signature_algorithm
          Azure::KeyVault::V7_0::Models::JsonWebKeySignatureAlgorithm
        end
        def json_web_key_operation
          Azure::KeyVault::V7_0::Models::JsonWebKeyOperation
        end
        def sas_token_type
          Azure::KeyVault::V7_0::Models::SasTokenType
        end
      end
    end
    module Mgmt
      Vaults = Azure::KeyVault::Mgmt::V2018_02_14::Vaults
      Operations = Azure::KeyVault::Mgmt::V2018_02_14::Operations

      module Models
        IPRule = Azure::KeyVault::Mgmt::V2018_02_14::Models::IPRule
        NetworkRuleBypassOptions = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleBypassOptions
        NetworkRuleAction = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleAction
        Permissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::Permissions
        Resource = Azure::KeyVault::Mgmt::V2018_02_14::Models::Resource
        OperationDisplay = Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationDisplay
        DeletedVault = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVault
        VaultListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultListResult
        DeletedVaultListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultListResult
        VaultProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultProperties
        VaultAccessPolicyProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyProperties
        ResourceListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::ResourceListResult
        VaultCreateOrUpdateParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCreateOrUpdateParameters
        VaultCheckNameAvailabilityParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCheckNameAvailabilityParameters
        VaultAccessPolicyParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyParameters
        CheckNameAvailabilityResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::CheckNameAvailabilityResult
        VaultPatchProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchProperties
        LogSpecification = Azure::KeyVault::Mgmt::V2018_02_14::Models::LogSpecification
        VaultPatchParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchParameters
        ServiceSpecification = Azure::KeyVault::Mgmt::V2018_02_14::Models::ServiceSpecification
        AccessPolicyEntry = Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyEntry
        DeletedVaultProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultProperties
        Vault = Azure::KeyVault::Mgmt::V2018_02_14::Models::Vault
        NetworkRuleSet = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleSet
        SkuName = Azure::KeyVault::Mgmt::V2018_02_14::Models::SkuName
        KeyPermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::KeyPermissions
        SecretPermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::SecretPermissions
        Operation = Azure::KeyVault::Mgmt::V2018_02_14::Models::Operation
        StoragePermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::StoragePermissions
        OperationListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationListResult
        AccessPolicyUpdateKind = Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyUpdateKind
        CreateMode = Azure::KeyVault::Mgmt::V2018_02_14::Models::CreateMode
        CertificatePermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::CertificatePermissions
        Reason = Azure::KeyVault::Mgmt::V2018_02_14::Models::Reason
        Sku = Azure::KeyVault::Mgmt::V2018_02_14::Models::Sku
        VirtualNetworkRule = Azure::KeyVault::Mgmt::V2018_02_14::Models::VirtualNetworkRule
      end

      class KeyVaultManagementClass
        attr_reader :vaults, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::KeyVault::Mgmt::V2018_02_14::KeyVaultManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @vaults = @client_0.vaults
          @operations = @client_0.operations

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
          def iprule
            Azure::KeyVault::Mgmt::V2018_02_14::Models::IPRule
          end
          def network_rule_bypass_options
            Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleBypassOptions
          end
          def network_rule_action
            Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleAction
          end
          def permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Permissions
          end
          def resource
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Resource
          end
          def operation_display
            Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationDisplay
          end
          def deleted_vault
            Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVault
          end
          def vault_list_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultListResult
          end
          def deleted_vault_list_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultListResult
          end
          def vault_properties
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultProperties
          end
          def vault_access_policy_properties
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyProperties
          end
          def resource_list_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::ResourceListResult
          end
          def vault_create_or_update_parameters
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCreateOrUpdateParameters
          end
          def vault_check_name_availability_parameters
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCheckNameAvailabilityParameters
          end
          def vault_access_policy_parameters
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyParameters
          end
          def check_name_availability_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::CheckNameAvailabilityResult
          end
          def vault_patch_properties
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchProperties
          end
          def log_specification
            Azure::KeyVault::Mgmt::V2018_02_14::Models::LogSpecification
          end
          def vault_patch_parameters
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchParameters
          end
          def service_specification
            Azure::KeyVault::Mgmt::V2018_02_14::Models::ServiceSpecification
          end
          def access_policy_entry
            Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyEntry
          end
          def deleted_vault_properties
            Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultProperties
          end
          def vault
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Vault
          end
          def network_rule_set
            Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleSet
          end
          def sku_name
            Azure::KeyVault::Mgmt::V2018_02_14::Models::SkuName
          end
          def key_permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::KeyPermissions
          end
          def secret_permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::SecretPermissions
          end
          def operation
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Operation
          end
          def storage_permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::StoragePermissions
          end
          def operation_list_result
            Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationListResult
          end
          def access_policy_update_kind
            Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyUpdateKind
          end
          def create_mode
            Azure::KeyVault::Mgmt::V2018_02_14::Models::CreateMode
          end
          def certificate_permissions
            Azure::KeyVault::Mgmt::V2018_02_14::Models::CertificatePermissions
          end
          def reason
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Reason
          end
          def sku
            Azure::KeyVault::Mgmt::V2018_02_14::Models::Sku
          end
          def virtual_network_rule
            Azure::KeyVault::Mgmt::V2018_02_14::Models::VirtualNetworkRule
          end
        end
      end
    end
  end
end
