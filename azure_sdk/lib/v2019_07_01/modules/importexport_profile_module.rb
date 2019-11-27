# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_import_export'

module Azure::Profiles::V2019_07_01
  module ImportExport
    module Mgmt
      Locations = Azure::ImportExport::Mgmt::V2016_11_01::Locations
      Jobs = Azure::ImportExport::Mgmt::V2016_11_01::Jobs
      BitLockerKeys = Azure::ImportExport::Mgmt::V2016_11_01::BitLockerKeys
      Operations = Azure::ImportExport::Mgmt::V2016_11_01::Operations

      module Models
        PutJobParameters = Azure::ImportExport::Mgmt::V2016_11_01::Models::PutJobParameters
        UpdateJobParameters = Azure::ImportExport::Mgmt::V2016_11_01::Models::UpdateJobParameters
        ErrorResponse = Azure::ImportExport::Mgmt::V2016_11_01::Models::ErrorResponse
        JobResponse = Azure::ImportExport::Mgmt::V2016_11_01::Models::JobResponse
        ReturnShipping = Azure::ImportExport::Mgmt::V2016_11_01::Models::ReturnShipping
        ListJobsResponse = Azure::ImportExport::Mgmt::V2016_11_01::Models::ListJobsResponse
        PackageInfomation = Azure::ImportExport::Mgmt::V2016_11_01::Models::PackageInfomation
        Operation = Azure::ImportExport::Mgmt::V2016_11_01::Models::Operation
        Export = Azure::ImportExport::Mgmt::V2016_11_01::Models::Export
        Location = Azure::ImportExport::Mgmt::V2016_11_01::Models::Location
        ErrorResponseErrorDetailsItem = Azure::ImportExport::Mgmt::V2016_11_01::Models::ErrorResponseErrorDetailsItem
        LocationsResponse = Azure::ImportExport::Mgmt::V2016_11_01::Models::LocationsResponse
        ShippingInformation = Azure::ImportExport::Mgmt::V2016_11_01::Models::ShippingInformation
        DriveBitLockerKey = Azure::ImportExport::Mgmt::V2016_11_01::Models::DriveBitLockerKey
        JobDetails = Azure::ImportExport::Mgmt::V2016_11_01::Models::JobDetails
        GetBitLockerKeysResponse = Azure::ImportExport::Mgmt::V2016_11_01::Models::GetBitLockerKeysResponse
        DriveStatus = Azure::ImportExport::Mgmt::V2016_11_01::Models::DriveStatus
        ListOperationsResponse = Azure::ImportExport::Mgmt::V2016_11_01::Models::ListOperationsResponse
        ReturnAddress = Azure::ImportExport::Mgmt::V2016_11_01::Models::ReturnAddress
        DriveState = Azure::ImportExport::Mgmt::V2016_11_01::Models::DriveState
      end

      class ImportExportManagementClass
        attr_reader :locations, :jobs, :bit_locker_keys, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ImportExport::Mgmt::V2016_11_01::StorageImportExport.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @locations = @client_0.locations
          @jobs = @client_0.jobs
          @bit_locker_keys = @client_0.bit_locker_keys
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/ImportExport/Mgmt"
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
          def put_job_parameters
            Azure::ImportExport::Mgmt::V2016_11_01::Models::PutJobParameters
          end
          def update_job_parameters
            Azure::ImportExport::Mgmt::V2016_11_01::Models::UpdateJobParameters
          end
          def error_response
            Azure::ImportExport::Mgmt::V2016_11_01::Models::ErrorResponse
          end
          def job_response
            Azure::ImportExport::Mgmt::V2016_11_01::Models::JobResponse
          end
          def return_shipping
            Azure::ImportExport::Mgmt::V2016_11_01::Models::ReturnShipping
          end
          def list_jobs_response
            Azure::ImportExport::Mgmt::V2016_11_01::Models::ListJobsResponse
          end
          def package_infomation
            Azure::ImportExport::Mgmt::V2016_11_01::Models::PackageInfomation
          end
          def operation
            Azure::ImportExport::Mgmt::V2016_11_01::Models::Operation
          end
          def export
            Azure::ImportExport::Mgmt::V2016_11_01::Models::Export
          end
          def location
            Azure::ImportExport::Mgmt::V2016_11_01::Models::Location
          end
          def error_response_error_details_item
            Azure::ImportExport::Mgmt::V2016_11_01::Models::ErrorResponseErrorDetailsItem
          end
          def locations_response
            Azure::ImportExport::Mgmt::V2016_11_01::Models::LocationsResponse
          end
          def shipping_information
            Azure::ImportExport::Mgmt::V2016_11_01::Models::ShippingInformation
          end
          def drive_bit_locker_key
            Azure::ImportExport::Mgmt::V2016_11_01::Models::DriveBitLockerKey
          end
          def job_details
            Azure::ImportExport::Mgmt::V2016_11_01::Models::JobDetails
          end
          def get_bit_locker_keys_response
            Azure::ImportExport::Mgmt::V2016_11_01::Models::GetBitLockerKeysResponse
          end
          def drive_status
            Azure::ImportExport::Mgmt::V2016_11_01::Models::DriveStatus
          end
          def list_operations_response
            Azure::ImportExport::Mgmt::V2016_11_01::Models::ListOperationsResponse
          end
          def return_address
            Azure::ImportExport::Mgmt::V2016_11_01::Models::ReturnAddress
          end
          def drive_state
            Azure::ImportExport::Mgmt::V2016_11_01::Models::DriveState
          end
        end
      end
    end
  end
end
