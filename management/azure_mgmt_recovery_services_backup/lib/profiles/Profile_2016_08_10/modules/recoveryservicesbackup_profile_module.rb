# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_recovery_services_backup'


module Azure::Profiles::RecoveryServicesBackupModule::Management::Profile_2016_08_10
  module RecoveryServicesBackup
    Operations = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Operations
    RecoveryServicesBackupClient = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::RecoveryServicesBackupClient

    module Models
      ClientDiscoveryForProperties = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForProperties
      ClientDiscoveryDisplay = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryDisplay
      ClientDiscoveryValueForSingleApi = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryValueForSingleApi
      ClientDiscoveryForServiceSpecification = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForServiceSpecification
      ClientDiscoveryResponse = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryResponse
      ClientDiscoveryForLogSpecification = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForLogSpecification
    end

    #
    # RecoveryServicesBackup
    #
    class RecoveryServicesBackupClass
      attr_accessor :operations, :recovery_services_backup_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Operations.new(client)
        self.recovery_services_backup_client = Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::RecoveryServicesBackupClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def client_discovery_for_properties
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForProperties
        end
        def client_discovery_display
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryDisplay
        end
        def client_discovery_value_for_single_api
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryValueForSingleApi
        end
        def client_discovery_for_service_specification
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForServiceSpecification
        end
        def client_discovery_response
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryResponse
        end
        def client_discovery_for_log_specification
          Azure::ARM::RecoveryServicesBackup::Api_2016_08_10::Models::ClientDiscoveryForLogSpecification
        end
      end
    end
  end
end
