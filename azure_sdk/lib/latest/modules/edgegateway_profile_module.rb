# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_edgegateway'

module Azure::Profiles::Latest
  module EdgeGateway
    module Mgmt
      Operations = Azure::EdgeGateway::Mgmt::V2019_03_01::Operations
      Devices = Azure::EdgeGateway::Mgmt::V2019_03_01::Devices
      Alerts = Azure::EdgeGateway::Mgmt::V2019_03_01::Alerts
      BandwidthSchedules = Azure::EdgeGateway::Mgmt::V2019_03_01::BandwidthSchedules
      Jobs = Azure::EdgeGateway::Mgmt::V2019_03_01::Jobs
      OperationsStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::OperationsStatus
      Orders = Azure::EdgeGateway::Mgmt::V2019_03_01::Orders
      Roles = Azure::EdgeGateway::Mgmt::V2019_03_01::Roles
      Shares = Azure::EdgeGateway::Mgmt::V2019_03_01::Shares
      StorageAccountCredentials = Azure::EdgeGateway::Mgmt::V2019_03_01::StorageAccountCredentials
      Triggers = Azure::EdgeGateway::Mgmt::V2019_03_01::Triggers
      Users = Azure::EdgeGateway::Mgmt::V2019_03_01::Users

      module Models
        Job = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Job
        Address = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Address
        MetricDimensionV1 = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricDimensionV1
        StorageAccountCredentialList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::StorageAccountCredentialList
        Ipv4Config = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Ipv4Config
        ARMBaseModel = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ARMBaseModel
        Ipv6Config = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Ipv6Config
        SymmetricKey = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SymmetricKey
        JobErrorItem = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::JobErrorItem
        AzureContainerInfo = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AzureContainerInfo
        JobErrorDetails = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::JobErrorDetails
        BandwidthSchedulesList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::BandwidthSchedulesList
        UpdateDownloadProgress = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateDownloadProgress
        UpdateInstallProgress = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateInstallProgress
        ContactDetails = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ContactDetails
        AlertErrorDetails = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AlertErrorDetails
        UploadCertificateResponse = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UploadCertificateResponse
        ShareList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareList
        DataBoxEdgeDeviceList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDeviceList
        MetricSpecificationV1 = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricSpecificationV1
        FileSourceInfo = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::FileSourceInfo
        NetworkAdapterPosition = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapterPosition
        TriggerList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::TriggerList
        NetworkAdapter = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapter
        MountPointMap = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MountPointMap
        ShareAccessRight = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareAccessRight
        AsymmetricEncryptedSecret = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AsymmetricEncryptedSecret
        OperationDisplay = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OperationDisplay
        UserList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UserList
        ServiceSpecification = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ServiceSpecification
        Operation = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Operation
        UploadCertificateRequest = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UploadCertificateRequest
        OperationsList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OperationsList
        RoleSinkInfo = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RoleSinkInfo
        OrderStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OrderStatus
        AlertList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AlertList
        TrackingInfo = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::TrackingInfo
        ClientAccessRight = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ClientAccessRight
        UserAccessRight = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UserAccessRight
        DataBoxEdgeDevicePatch = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDevicePatch
        OrderList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OrderList
        Authentication = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Authentication
        PeriodicTimerSourceInfo = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::PeriodicTimerSourceInfo
        IoTDeviceInfo = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::IoTDeviceInfo
        RoleList = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RoleList
        Sku = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Sku
        RefreshDetails = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RefreshDetails
        Alert = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Alert
        BandwidthSchedule = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::BandwidthSchedule
        DataBoxEdgeDevice = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDevice
        DataBoxEdgeDeviceExtendedInfo = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDeviceExtendedInfo
        FileEventTrigger = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::FileEventTrigger
        IoTRole = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::IoTRole
        NetworkSettings = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkSettings
        Order = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Order
        PeriodicTimerEventTrigger = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::PeriodicTimerEventTrigger
        Role = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Role
        SecuritySettings = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SecuritySettings
        Share = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Share
        StorageAccountCredential = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::StorageAccountCredential
        Trigger = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Trigger
        UpdateSummary = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateSummary
        User = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::User
        AlertSeverity = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AlertSeverity
        EncryptionAlgorithm = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::EncryptionAlgorithm
        AzureContainerDataFormat = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AzureContainerDataFormat
        DayOfWeek = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DayOfWeek
        ClientPermissionType = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ClientPermissionType
        SkuName = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SkuName
        SkuTier = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SkuTier
        DataBoxEdgeDeviceStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDeviceStatus
        DeviceType = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DeviceType
        RoleTypes = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RoleTypes
        PlatformType = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::PlatformType
        RoleStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RoleStatus
        JobStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::JobStatus
        JobType = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::JobType
        UpdateOperationStage = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateOperationStage
        DownloadPhase = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DownloadPhase
        MetricUnit = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricUnit
        MetricAggregationType = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricAggregationType
        MetricCategory = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricCategory
        TimeGrain = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::TimeGrain
        NetworkGroup = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkGroup
        NetworkAdapterStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapterStatus
        NetworkAdapterRDMAStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapterRDMAStatus
        NetworkAdapterDHCPStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapterDHCPStatus
        OrderState = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OrderState
        AuthenticationType = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AuthenticationType
        ShareStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareStatus
        MonitoringStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MonitoringStatus
        ShareAccessProtocol = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareAccessProtocol
        ShareAccessType = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareAccessType
        DataPolicy = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataPolicy
        SSLStatus = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SSLStatus
        AccountType = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AccountType
        InstallRebootBehavior = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::InstallRebootBehavior
        UpdateOperation = Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateOperation
      end

      class EdgeGatewayManagementClass
        attr_reader :operations, :devices, :alerts, :bandwidth_schedules, :jobs, :operations_status, :orders, :roles, :shares, :storage_account_credentials, :triggers, :users, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EdgeGateway::Mgmt::V2019_03_01::DataBoxEdgeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @devices = @client_0.devices
          @alerts = @client_0.alerts
          @bandwidth_schedules = @client_0.bandwidth_schedules
          @jobs = @client_0.jobs
          @operations_status = @client_0.operations_status
          @orders = @client_0.orders
          @roles = @client_0.roles
          @shares = @client_0.shares
          @storage_account_credentials = @client_0.storage_account_credentials
          @triggers = @client_0.triggers
          @users = @client_0.users

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/EdgeGateway/Mgmt"
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
          def job
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Job
          end
          def address
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Address
          end
          def metric_dimension_v1
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricDimensionV1
          end
          def storage_account_credential_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::StorageAccountCredentialList
          end
          def ipv4_config
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Ipv4Config
          end
          def armbase_model
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ARMBaseModel
          end
          def ipv6_config
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Ipv6Config
          end
          def symmetric_key
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SymmetricKey
          end
          def job_error_item
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::JobErrorItem
          end
          def azure_container_info
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AzureContainerInfo
          end
          def job_error_details
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::JobErrorDetails
          end
          def bandwidth_schedules_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::BandwidthSchedulesList
          end
          def update_download_progress
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateDownloadProgress
          end
          def update_install_progress
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateInstallProgress
          end
          def contact_details
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ContactDetails
          end
          def alert_error_details
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AlertErrorDetails
          end
          def upload_certificate_response
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UploadCertificateResponse
          end
          def share_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareList
          end
          def data_box_edge_device_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDeviceList
          end
          def metric_specification_v1
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricSpecificationV1
          end
          def file_source_info
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::FileSourceInfo
          end
          def network_adapter_position
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapterPosition
          end
          def trigger_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::TriggerList
          end
          def network_adapter
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapter
          end
          def mount_point_map
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MountPointMap
          end
          def share_access_right
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareAccessRight
          end
          def asymmetric_encrypted_secret
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AsymmetricEncryptedSecret
          end
          def operation_display
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OperationDisplay
          end
          def user_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UserList
          end
          def service_specification
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ServiceSpecification
          end
          def operation
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Operation
          end
          def upload_certificate_request
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UploadCertificateRequest
          end
          def operations_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OperationsList
          end
          def role_sink_info
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RoleSinkInfo
          end
          def order_status
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OrderStatus
          end
          def alert_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AlertList
          end
          def tracking_info
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::TrackingInfo
          end
          def client_access_right
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ClientAccessRight
          end
          def user_access_right
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UserAccessRight
          end
          def data_box_edge_device_patch
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDevicePatch
          end
          def order_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OrderList
          end
          def authentication
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Authentication
          end
          def periodic_timer_source_info
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::PeriodicTimerSourceInfo
          end
          def io_tdevice_info
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::IoTDeviceInfo
          end
          def role_list
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RoleList
          end
          def sku
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Sku
          end
          def refresh_details
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RefreshDetails
          end
          def alert
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Alert
          end
          def bandwidth_schedule
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::BandwidthSchedule
          end
          def data_box_edge_device
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDevice
          end
          def data_box_edge_device_extended_info
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDeviceExtendedInfo
          end
          def file_event_trigger
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::FileEventTrigger
          end
          def io_trole
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::IoTRole
          end
          def network_settings
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkSettings
          end
          def order
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Order
          end
          def periodic_timer_event_trigger
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::PeriodicTimerEventTrigger
          end
          def role
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Role
          end
          def security_settings
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SecuritySettings
          end
          def share
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Share
          end
          def storage_account_credential
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::StorageAccountCredential
          end
          def trigger
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::Trigger
          end
          def update_summary
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateSummary
          end
          def user
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::User
          end
          def alert_severity
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AlertSeverity
          end
          def encryption_algorithm
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::EncryptionAlgorithm
          end
          def azure_container_data_format
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AzureContainerDataFormat
          end
          def day_of_week
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DayOfWeek
          end
          def client_permission_type
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ClientPermissionType
          end
          def sku_name
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SkuName
          end
          def sku_tier
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SkuTier
          end
          def data_box_edge_device_status
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataBoxEdgeDeviceStatus
          end
          def device_type
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DeviceType
          end
          def role_types
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RoleTypes
          end
          def platform_type
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::PlatformType
          end
          def role_status
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::RoleStatus
          end
          def job_status
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::JobStatus
          end
          def job_type
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::JobType
          end
          def update_operation_stage
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateOperationStage
          end
          def download_phase
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DownloadPhase
          end
          def metric_unit
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricUnit
          end
          def metric_aggregation_type
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricAggregationType
          end
          def metric_category
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MetricCategory
          end
          def time_grain
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::TimeGrain
          end
          def network_group
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkGroup
          end
          def network_adapter_status
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapterStatus
          end
          def network_adapter_rdmastatus
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapterRDMAStatus
          end
          def network_adapter_dhcpstatus
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::NetworkAdapterDHCPStatus
          end
          def order_state
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::OrderState
          end
          def authentication_type
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AuthenticationType
          end
          def share_status
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareStatus
          end
          def monitoring_status
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::MonitoringStatus
          end
          def share_access_protocol
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareAccessProtocol
          end
          def share_access_type
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::ShareAccessType
          end
          def data_policy
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::DataPolicy
          end
          def sslstatus
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::SSLStatus
          end
          def account_type
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::AccountType
          end
          def install_reboot_behavior
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::InstallRebootBehavior
          end
          def update_operation
            Azure::EdgeGateway::Mgmt::V2019_03_01::Models::UpdateOperation
          end
        end
      end
    end
  end
end
