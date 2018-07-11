# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_stream_analytics'

module Azure::Profiles::Latest
  module StreamAnalytics
    module Mgmt
      Transformations = Azure::StreamAnalytics::Mgmt::V2016_03_01::Transformations
      Operations = Azure::StreamAnalytics::Mgmt::V2016_03_01::Operations
      Functions = Azure::StreamAnalytics::Mgmt::V2016_03_01::Functions
      Subscriptions = Azure::StreamAnalytics::Mgmt::V2016_03_01::Subscriptions
      StreamingJobs = Azure::StreamAnalytics::Mgmt::V2016_03_01::StreamingJobs
      Inputs = Azure::StreamAnalytics::Mgmt::V2016_03_01::Inputs
      Outputs = Azure::StreamAnalytics::Mgmt::V2016_03_01::Outputs

      module Models
        AzureTableOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureTableOutputDataSource
        EventHubOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubOutputDataSource
        BlobReferenceInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobReferenceInputDataSource
        BlobOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobOutputDataSource
        IoTHubStreamInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::IoTHubStreamInputDataSource
        ReferenceInputProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ReferenceInputProperties
        BlobStreamInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobStreamInputDataSource
        EventHubStreamInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubStreamInputDataSource
        AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters
        StreamInputProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamInputProperties
        SubscriptionQuota = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuota
        JavaScriptFunctionRetrieveDefaultDefinitionParameters = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JavaScriptFunctionRetrieveDefaultDefinitionParameters
        EventsOutOfOrderPolicy = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventsOutOfOrderPolicy
        OutputStartMode = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputStartMode
        CompatibilityLevel = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::CompatibilityLevel
        OutputErrorPolicy = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputErrorPolicy
        UdfType = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::UdfType
        JsonOutputSerializationFormat = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JsonOutputSerializationFormat
        SkuName = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SkuName
        OperationDisplay = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OperationDisplay
        OperationListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OperationListResult
        ErrorResponse = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ErrorResponse
        Operation = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Operation
        Encoding = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Encoding
        Serialization = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Serialization
        Sku = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Sku
        SubResource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubResource
        AzureMachineLearningWebServiceInputColumn = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceInputColumn
        AzureMachineLearningWebServiceInputs = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceInputs
        ReferenceInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ReferenceInputDataSource
        FunctionBinding = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionBinding
        Diagnostics = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Diagnostics
        FunctionOutput = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionOutput
        DiagnosticCondition = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::DiagnosticCondition
        OutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputDataSource
        InputProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::InputProperties
        FunctionProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionProperties
        ServiceBusDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusDataSourceProperties
        OutputListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputListResult
        FunctionInput = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionInput
        StartStreamingJobParameters = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StartStreamingJobParameters
        BlobDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobDataSourceProperties
        FunctionRetrieveDefaultDefinitionParameters = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionRetrieveDefaultDefinitionParameters
        AzureSqlDatabaseDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureSqlDatabaseDataSourceProperties
        StreamInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamInputDataSource
        StreamingJobListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamingJobListResult
        InputListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::InputListResult
        AzureMachineLearningWebServiceOutputColumn = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceOutputColumn
        OAuthBasedDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OAuthBasedDataSourceProperties
        StorageAccount = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StorageAccount
        ResourceTestStatus = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ResourceTestStatus
        SubscriptionQuotasListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuotasListResult
        Input = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Input
        Transformation = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation
        FunctionListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionListResult
        Function = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Function
        StreamingJob = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamingJob
        Output = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Output
        JavaScriptFunctionBinding = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JavaScriptFunctionBinding
        AzureMachineLearningWebServiceFunctionBinding = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceFunctionBinding
        ScalarFunctionProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ScalarFunctionProperties
        Resource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Resource
        JsonSerialization = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JsonSerialization
        AvroSerialization = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AvroSerialization
        AzureDataLakeStoreOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureDataLakeStoreOutputDataSource
        CsvSerialization = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::CsvSerialization
        EventHubDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubDataSourceProperties
        PowerBIOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::PowerBIOutputDataSource
        ServiceBusQueueOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusQueueOutputDataSource
        ServiceBusTopicOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusTopicOutputDataSource
        AzureSqlDatabaseOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureSqlDatabaseOutputDataSource
        DocumentDbOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::DocumentDbOutputDataSource
      end

      class StreamAnalyticsManagementClass
        attr_reader :transformations, :operations, :functions, :subscriptions, :streaming_jobs, :inputs, :outputs, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::StreamAnalytics::Mgmt::V2016_03_01::StreamAnalyticsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @transformations = @client_0.transformations
          @operations = @client_0.operations
          @functions = @client_0.functions
          @subscriptions = @client_0.subscriptions
          @streaming_jobs = @client_0.streaming_jobs
          @inputs = @client_0.inputs
          @outputs = @client_0.outputs

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/StreamAnalytics/Mgmt"
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
          def azure_table_output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureTableOutputDataSource
          end
          def event_hub_output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubOutputDataSource
          end
          def blob_reference_input_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobReferenceInputDataSource
          end
          def blob_output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobOutputDataSource
          end
          def io_thub_stream_input_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::IoTHubStreamInputDataSource
          end
          def reference_input_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ReferenceInputProperties
          end
          def blob_stream_input_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobStreamInputDataSource
          end
          def event_hub_stream_input_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubStreamInputDataSource
          end
          def azure_machine_learning_web_service_function_retrieve_default_definition_parameters
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters
          end
          def stream_input_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamInputProperties
          end
          def subscription_quota
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuota
          end
          def java_script_function_retrieve_default_definition_parameters
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JavaScriptFunctionRetrieveDefaultDefinitionParameters
          end
          def events_out_of_order_policy
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventsOutOfOrderPolicy
          end
          def output_start_mode
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputStartMode
          end
          def compatibility_level
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::CompatibilityLevel
          end
          def output_error_policy
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputErrorPolicy
          end
          def udf_type
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::UdfType
          end
          def json_output_serialization_format
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JsonOutputSerializationFormat
          end
          def sku_name
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SkuName
          end
          def operation_display
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OperationListResult
          end
          def error_response
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ErrorResponse
          end
          def operation
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Operation
          end
          def encoding
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Encoding
          end
          def serialization
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Serialization
          end
          def sku
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Sku
          end
          def sub_resource
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubResource
          end
          def azure_machine_learning_web_service_input_column
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceInputColumn
          end
          def azure_machine_learning_web_service_inputs
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceInputs
          end
          def reference_input_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ReferenceInputDataSource
          end
          def function_binding
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionBinding
          end
          def diagnostics
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Diagnostics
          end
          def function_output
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionOutput
          end
          def diagnostic_condition
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::DiagnosticCondition
          end
          def output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputDataSource
          end
          def input_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::InputProperties
          end
          def function_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionProperties
          end
          def service_bus_data_source_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusDataSourceProperties
          end
          def output_list_result
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputListResult
          end
          def function_input
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionInput
          end
          def start_streaming_job_parameters
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StartStreamingJobParameters
          end
          def blob_data_source_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobDataSourceProperties
          end
          def function_retrieve_default_definition_parameters
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionRetrieveDefaultDefinitionParameters
          end
          def azure_sql_database_data_source_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureSqlDatabaseDataSourceProperties
          end
          def stream_input_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamInputDataSource
          end
          def streaming_job_list_result
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamingJobListResult
          end
          def input_list_result
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::InputListResult
          end
          def azure_machine_learning_web_service_output_column
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceOutputColumn
          end
          def oauth_based_data_source_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OAuthBasedDataSourceProperties
          end
          def storage_account
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StorageAccount
          end
          def resource_test_status
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ResourceTestStatus
          end
          def subscription_quotas_list_result
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuotasListResult
          end
          def input
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Input
          end
          def transformation
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation
          end
          def function_list_result
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionListResult
          end
          def function
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Function
          end
          def streaming_job
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamingJob
          end
          def output
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Output
          end
          def java_script_function_binding
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JavaScriptFunctionBinding
          end
          def azure_machine_learning_web_service_function_binding
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceFunctionBinding
          end
          def scalar_function_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ScalarFunctionProperties
          end
          def resource
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Resource
          end
          def json_serialization
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JsonSerialization
          end
          def avro_serialization
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AvroSerialization
          end
          def azure_data_lake_store_output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureDataLakeStoreOutputDataSource
          end
          def csv_serialization
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::CsvSerialization
          end
          def event_hub_data_source_properties
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubDataSourceProperties
          end
          def power_bioutput_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::PowerBIOutputDataSource
          end
          def service_bus_queue_output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusQueueOutputDataSource
          end
          def service_bus_topic_output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusTopicOutputDataSource
          end
          def azure_sql_database_output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureSqlDatabaseOutputDataSource
          end
          def document_db_output_data_source
            Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::DocumentDbOutputDataSource
          end
        end
      end
    end
  end
end
