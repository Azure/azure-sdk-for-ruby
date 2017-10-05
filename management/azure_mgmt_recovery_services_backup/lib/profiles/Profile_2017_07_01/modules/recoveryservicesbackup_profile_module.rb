# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_recovery_services_backup'


module Azure::Profiles::RecoveryServicesBackupModule::Management::Profile_2017_07_01
  module RecoveryServicesBackup
    BackupJobs = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::BackupJobs
    JobDetails = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::JobDetails
    RecoveryServicesBackupClient = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::RecoveryServicesBackupClient

    module Models
      JobQueryObject = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobQueryObject
      AzureIaaSVMErrorInfo = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::AzureIaaSVMErrorInfo
      Job = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::Job
      AzureIaaSVMJobTaskDetails = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::AzureIaaSVMJobTaskDetails
      AzureIaaSVMJobExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::AzureIaaSVMJobExtendedInfo
      MabJobExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabJobExtendedInfo
      DpmJobTaskDetails = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::DpmJobTaskDetails
      Resource = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::Resource
      ResourceList = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::ResourceList
      DpmJobExtendedInfo = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::DpmJobExtendedInfo
      MabErrorInfo = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabErrorInfo
      DpmErrorInfo = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::DpmErrorInfo
      MabJobTaskDetails = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabJobTaskDetails
      AzureIaaSVMJob = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::AzureIaaSVMJob
      DpmJob = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::DpmJob
      JobResource = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobResource
      JobResourceList = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobResourceList
      MabJob = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabJob
      JobSupportedAction = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobSupportedAction
      BackupManagementType = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::BackupManagementType
      JobStatus = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobStatus
      JobOperationType = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobOperationType
      MabServerType = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabServerType
      WorkloadType = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::WorkloadType
    end

    #
    # RecoveryServicesBackup
    #
    class RecoveryServicesBackupClass
      attr_accessor :backup_jobs, :job_details, :recovery_services_backup_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.backup_jobs = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::BackupJobs.new(client)
        self.job_details = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::JobDetails.new(client)
        self.recovery_services_backup_client = Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::RecoveryServicesBackupClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def job_query_object
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobQueryObject
        end
        def azure_iaa_svmerror_info
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::AzureIaaSVMErrorInfo
        end
        def job
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::Job
        end
        def azure_iaa_svmjob_task_details
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::AzureIaaSVMJobTaskDetails
        end
        def azure_iaa_svmjob_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::AzureIaaSVMJobExtendedInfo
        end
        def mab_job_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabJobExtendedInfo
        end
        def dpm_job_task_details
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::DpmJobTaskDetails
        end
        def resource
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::Resource
        end
        def resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::ResourceList
        end
        def dpm_job_extended_info
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::DpmJobExtendedInfo
        end
        def mab_error_info
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabErrorInfo
        end
        def dpm_error_info
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::DpmErrorInfo
        end
        def mab_job_task_details
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabJobTaskDetails
        end
        def azure_iaa_svmjob
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::AzureIaaSVMJob
        end
        def dpm_job
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::DpmJob
        end
        def job_resource
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobResource
        end
        def job_resource_list
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobResourceList
        end
        def mab_job
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabJob
        end
        def job_supported_action
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobSupportedAction
        end
        def backup_management_type
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::BackupManagementType
        end
        def job_status
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobStatus
        end
        def job_operation_type
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::JobOperationType
        end
        def mab_server_type
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::MabServerType
        end
        def workload_type
          Azure::ARM::RecoveryServicesBackup::Api_2017_07_01::Models::WorkloadType
        end
      end
    end
  end
end
