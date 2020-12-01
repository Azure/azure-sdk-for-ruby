# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_databoxedge'

module Azure::Profiles::V2020_09_01_Hybrid
  module DataBoxEdge
    module Mgmt
      Operations = Azure::DataBoxEdge::Mgmt::V2019_08_01::Operations
      Devices = Azure::DataBoxEdge::Mgmt::V2019_08_01::Devices
      Alerts = Azure::DataBoxEdge::Mgmt::V2019_08_01::Alerts
      BandwidthSchedules = Azure::DataBoxEdge::Mgmt::V2019_08_01::BandwidthSchedules
      Jobs = Azure::DataBoxEdge::Mgmt::V2019_08_01::Jobs
      Nodes = Azure::DataBoxEdge::Mgmt::V2019_08_01::Nodes
      OperationsStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::OperationsStatus
      Orders = Azure::DataBoxEdge::Mgmt::V2019_08_01::Orders
      Roles = Azure::DataBoxEdge::Mgmt::V2019_08_01::Roles
      Shares = Azure::DataBoxEdge::Mgmt::V2019_08_01::Shares
      StorageAccountCredentials = Azure::DataBoxEdge::Mgmt::V2019_08_01::StorageAccountCredentials
      StorageAccounts = Azure::DataBoxEdge::Mgmt::V2019_08_01::StorageAccounts
      Containers = Azure::DataBoxEdge::Mgmt::V2019_08_01::Containers
      Triggers = Azure::DataBoxEdge::Mgmt::V2019_08_01::Triggers
      Users = Azure::DataBoxEdge::Mgmt::V2019_08_01::Users
      Skus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Skus

      module Models
        NetworkAdapterPosition = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapterPosition
        Address = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Address
        NetworkAdapter = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapter
        Ipv6Config = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Ipv6Config
        AlertList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AlertList
        JobErrorItem = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::JobErrorItem
        AsymmetricEncryptedSecret = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AsymmetricEncryptedSecret
        JobErrorDetails = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::JobErrorDetails
        Authentication = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Authentication
        UpdateDownloadProgress = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateDownloadProgress
        UserList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UserList
        UpdateInstallProgress = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateInstallProgress
        ClientAccessRight = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ClientAccessRight
        Job = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Job
        MetricDimensionV1 = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricDimensionV1
        RefreshDetails = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RefreshDetails
        MetricSpecificationV1 = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricSpecificationV1
        ContainerList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ContainerList
        AlertErrorDetails = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AlertErrorDetails
        UploadCertificateRequest = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UploadCertificateRequest
        SkuInformationList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuInformationList
        DataBoxEdgeDeviceList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDeviceList
        ShareList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareList
        FileSourceInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::FileSourceInfo
        ShareAccessRight = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareAccessRight
        StorageAccountList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccountList
        NodeList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NodeList
        MountPointMap = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MountPointMap
        OperationDisplay = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OperationDisplay
        Ipv4Config = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Ipv4Config
        ServiceSpecification = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ServiceSpecification
        SymmetricKey = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SymmetricKey
        Operation = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Operation
        BandwidthSchedulesList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::BandwidthSchedulesList
        OperationsList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OperationsList
        ContactDetails = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ContactDetails
        OrderStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OrderStatus
        Sku = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Sku
        TrackingInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::TrackingInfo
        DataBoxEdgeDevicePatch = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDevicePatch
        UserAccessRight = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UserAccessRight
        IoTDeviceInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::IoTDeviceInfo
        OrderList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OrderList
        ARMBaseModel = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ARMBaseModel
        PeriodicTimerSourceInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::PeriodicTimerSourceInfo
        RoleList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RoleList
        TriggerList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::TriggerList
        SkuLocationInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuLocationInfo
        StorageAccountCredentialList = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccountCredentialList
        SkuCost = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuCost
        UploadCertificateResponse = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UploadCertificateResponse
        SkuRestrictionInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuRestrictionInfo
        AzureContainerInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AzureContainerInfo
        SkuRestriction = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuRestriction
        RoleSinkInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RoleSinkInfo
        ResourceTypeSku = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ResourceTypeSku
        Alert = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Alert
        BandwidthSchedule = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::BandwidthSchedule
        Container = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Container
        DataBoxEdgeDevice = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDevice
        DataBoxEdgeDeviceExtendedInfo = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDeviceExtendedInfo
        FileEventTrigger = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::FileEventTrigger
        NetworkSettings = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkSettings
        Node = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Node
        Order = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Order
        PeriodicTimerEventTrigger = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::PeriodicTimerEventTrigger
        Role = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Role
        IoTRole = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::IoTRole
        SecuritySettings = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SecuritySettings
        Share = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Share
        StorageAccount = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccount
        StorageAccountCredential = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccountCredential
        Trigger = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Trigger
        UpdateSummary = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateSummary
        User = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::User
        AlertSeverity = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AlertSeverity
        EncryptionAlgorithm = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::EncryptionAlgorithm
        AzureContainerDataFormat = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AzureContainerDataFormat
        DayOfWeek = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DayOfWeek
        ClientPermissionType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ClientPermissionType
        ContainerStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ContainerStatus
        SkuName = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuName
        SkuTier = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuTier
        DataBoxEdgeDeviceStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDeviceStatus
        DeviceType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DeviceType
        RoleTypes = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RoleTypes
        PlatformType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::PlatformType
        RoleStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RoleStatus
        JobStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::JobStatus
        JobType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::JobType
        UpdateOperationStage = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateOperationStage
        DownloadPhase = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DownloadPhase
        MetricUnit = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricUnit
        MetricAggregationType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricAggregationType
        MetricCategory = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricCategory
        TimeGrain = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::TimeGrain
        NetworkGroup = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkGroup
        NetworkAdapterStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapterStatus
        NetworkAdapterRDMAStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapterRDMAStatus
        NetworkAdapterDHCPStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapterDHCPStatus
        NodeStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NodeStatus
        OrderState = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OrderState
        AuthenticationType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AuthenticationType
        SkuRestrictionReasonCode = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuRestrictionReasonCode
        ShareStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareStatus
        MonitoringStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MonitoringStatus
        ShareAccessProtocol = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareAccessProtocol
        ShareAccessType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareAccessType
        DataPolicy = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataPolicy
        StorageAccountStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccountStatus
        SSLStatus = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SSLStatus
        AccountType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AccountType
        InstallRebootBehavior = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::InstallRebootBehavior
        UpdateOperation = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateOperation
        UserType = Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UserType
      end

      class DataBoxEdgeManagementClass
        attr_reader :operations, :devices, :alerts, :bandwidth_schedules, :jobs, :nodes, :operations_status, :orders, :roles, :shares, :storage_account_credentials, :storage_accounts, :containers, :triggers, :users, :skus, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DataBoxEdge::Mgmt::V2019_08_01::DataBoxEdgeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @devices = @client_0.devices
          @alerts = @client_0.alerts
          @bandwidth_schedules = @client_0.bandwidth_schedules
          @jobs = @client_0.jobs
          @nodes = @client_0.nodes
          @operations_status = @client_0.operations_status
          @orders = @client_0.orders
          @roles = @client_0.roles
          @shares = @client_0.shares
          @storage_account_credentials = @client_0.storage_account_credentials
          @storage_accounts = @client_0.storage_accounts
          @containers = @client_0.containers
          @triggers = @client_0.triggers
          @users = @client_0.users
          @skus = @client_0.skus

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2020_09_01_Hybrid/DataBoxEdge/Mgmt"
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
          def network_adapter_position
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapterPosition
          end
          def address
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Address
          end
          def network_adapter
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapter
          end
          def ipv6_config
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Ipv6Config
          end
          def alert_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AlertList
          end
          def job_error_item
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::JobErrorItem
          end
          def asymmetric_encrypted_secret
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AsymmetricEncryptedSecret
          end
          def job_error_details
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::JobErrorDetails
          end
          def authentication
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Authentication
          end
          def update_download_progress
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateDownloadProgress
          end
          def user_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UserList
          end
          def update_install_progress
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateInstallProgress
          end
          def client_access_right
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ClientAccessRight
          end
          def job
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Job
          end
          def metric_dimension_v1
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricDimensionV1
          end
          def refresh_details
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RefreshDetails
          end
          def metric_specification_v1
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricSpecificationV1
          end
          def container_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ContainerList
          end
          def alert_error_details
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AlertErrorDetails
          end
          def upload_certificate_request
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UploadCertificateRequest
          end
          def sku_information_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuInformationList
          end
          def data_box_edge_device_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDeviceList
          end
          def share_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareList
          end
          def file_source_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::FileSourceInfo
          end
          def share_access_right
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareAccessRight
          end
          def storage_account_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccountList
          end
          def node_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NodeList
          end
          def mount_point_map
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MountPointMap
          end
          def operation_display
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OperationDisplay
          end
          def ipv4_config
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Ipv4Config
          end
          def service_specification
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ServiceSpecification
          end
          def symmetric_key
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SymmetricKey
          end
          def operation
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Operation
          end
          def bandwidth_schedules_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::BandwidthSchedulesList
          end
          def operations_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OperationsList
          end
          def contact_details
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ContactDetails
          end
          def order_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OrderStatus
          end
          def sku
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Sku
          end
          def tracking_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::TrackingInfo
          end
          def data_box_edge_device_patch
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDevicePatch
          end
          def user_access_right
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UserAccessRight
          end
          def io_tdevice_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::IoTDeviceInfo
          end
          def order_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OrderList
          end
          def armbase_model
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ARMBaseModel
          end
          def periodic_timer_source_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::PeriodicTimerSourceInfo
          end
          def role_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RoleList
          end
          def trigger_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::TriggerList
          end
          def sku_location_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuLocationInfo
          end
          def storage_account_credential_list
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccountCredentialList
          end
          def sku_cost
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuCost
          end
          def upload_certificate_response
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UploadCertificateResponse
          end
          def sku_restriction_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuRestrictionInfo
          end
          def azure_container_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AzureContainerInfo
          end
          def sku_restriction
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuRestriction
          end
          def role_sink_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RoleSinkInfo
          end
          def resource_type_sku
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ResourceTypeSku
          end
          def alert
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Alert
          end
          def bandwidth_schedule
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::BandwidthSchedule
          end
          def container
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Container
          end
          def data_box_edge_device
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDevice
          end
          def data_box_edge_device_extended_info
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDeviceExtendedInfo
          end
          def file_event_trigger
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::FileEventTrigger
          end
          def network_settings
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkSettings
          end
          def node
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Node
          end
          def order
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Order
          end
          def periodic_timer_event_trigger
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::PeriodicTimerEventTrigger
          end
          def role
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Role
          end
          def io_trole
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::IoTRole
          end
          def security_settings
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SecuritySettings
          end
          def share
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Share
          end
          def storage_account
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccount
          end
          def storage_account_credential
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccountCredential
          end
          def trigger
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::Trigger
          end
          def update_summary
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateSummary
          end
          def user
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::User
          end
          def alert_severity
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AlertSeverity
          end
          def encryption_algorithm
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::EncryptionAlgorithm
          end
          def azure_container_data_format
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AzureContainerDataFormat
          end
          def day_of_week
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DayOfWeek
          end
          def client_permission_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ClientPermissionType
          end
          def container_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ContainerStatus
          end
          def sku_name
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuName
          end
          def sku_tier
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuTier
          end
          def data_box_edge_device_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataBoxEdgeDeviceStatus
          end
          def device_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DeviceType
          end
          def role_types
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RoleTypes
          end
          def platform_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::PlatformType
          end
          def role_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::RoleStatus
          end
          def job_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::JobStatus
          end
          def job_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::JobType
          end
          def update_operation_stage
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateOperationStage
          end
          def download_phase
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DownloadPhase
          end
          def metric_unit
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricUnit
          end
          def metric_aggregation_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricAggregationType
          end
          def metric_category
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MetricCategory
          end
          def time_grain
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::TimeGrain
          end
          def network_group
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkGroup
          end
          def network_adapter_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapterStatus
          end
          def network_adapter_rdmastatus
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapterRDMAStatus
          end
          def network_adapter_dhcpstatus
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NetworkAdapterDHCPStatus
          end
          def node_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::NodeStatus
          end
          def order_state
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::OrderState
          end
          def authentication_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AuthenticationType
          end
          def sku_restriction_reason_code
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SkuRestrictionReasonCode
          end
          def share_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareStatus
          end
          def monitoring_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::MonitoringStatus
          end
          def share_access_protocol
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareAccessProtocol
          end
          def share_access_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::ShareAccessType
          end
          def data_policy
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::DataPolicy
          end
          def storage_account_status
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::StorageAccountStatus
          end
          def sslstatus
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::SSLStatus
          end
          def account_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::AccountType
          end
          def install_reboot_behavior
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::InstallRebootBehavior
          end
          def update_operation
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UpdateOperation
          end
          def user_type
            Azure::DataBoxEdge::Mgmt::V2019_08_01::Models::UserType
          end
        end
      end
    end
  end
end
