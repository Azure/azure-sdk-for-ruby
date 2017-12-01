# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_stream_analytics'

module Azure::StreamAnalytics::Profiles::Latest
  module Mgmt
    Operations = Azure::StreamAnalytics::Mgmt::V2016_03_01::Operations
    StreamingJobs = Azure::StreamAnalytics::Mgmt::V2016_03_01::StreamingJobs
    Inputs = Azure::StreamAnalytics::Mgmt::V2016_03_01::Inputs
    Outputs = Azure::StreamAnalytics::Mgmt::V2016_03_01::Outputs
    Transformations = Azure::StreamAnalytics::Mgmt::V2016_03_01::Transformations
    Functions = Azure::StreamAnalytics::Mgmt::V2016_03_01::Functions
    Subscriptions = Azure::StreamAnalytics::Mgmt::V2016_03_01::Subscriptions

    module Models
      AzureMachineLearningWebServiceInputColumn = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceInputColumn
      OperationDisplay = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OperationDisplay
      AzureMachineLearningWebServiceInputs = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceInputs
      OperationListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OperationListResult
      StorageAccount = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StorageAccount
      Serialization = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Serialization
      FunctionBinding = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionBinding
      Diagnostics = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Diagnostics
      FunctionOutput = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionOutput
      Sku = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Sku
      DiagnosticCondition = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::DiagnosticCondition
      OutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputDataSource
      InputProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::InputProperties
      FunctionProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionProperties
      FunctionListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionListResult
      ResourceTestStatus = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ResourceTestStatus
      FunctionInput = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionInput
      StartStreamingJobParameters = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StartStreamingJobParameters
      BlobDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobDataSourceProperties
      OutputListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputListResult
      ReferenceInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ReferenceInputDataSource
      Operation = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Operation
      AzureSqlDatabaseDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureSqlDatabaseDataSourceProperties
      ErrorResponse = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ErrorResponse
      FunctionRetrieveDefaultDefinitionParameters = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionRetrieveDefaultDefinitionParameters
      StreamingJobListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamingJobListResult
      SubResource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubResource
      AzureMachineLearningWebServiceOutputColumn = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceOutputColumn
      StreamInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamInputDataSource
      ServiceBusDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusDataSourceProperties
      InputListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::InputListResult
      SubscriptionQuotasListResult = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuotasListResult
      Resource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Resource
      OAuthBasedDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OAuthBasedDataSourceProperties
      Input = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Input
      Transformation = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation
      Output = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Output
      Function = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Function
      StreamingJob = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamingJob
      JavaScriptFunctionBinding = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JavaScriptFunctionBinding
      AzureMachineLearningWebServiceFunctionBinding = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceFunctionBinding
      ScalarFunctionProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ScalarFunctionProperties
      JavaScriptFunctionRetrieveDefaultDefinitionParameters = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JavaScriptFunctionRetrieveDefaultDefinitionParameters
      AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters
      AvroSerialization = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AvroSerialization
      JsonSerialization = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JsonSerialization
      CsvSerialization = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::CsvSerialization
      AzureDataLakeStoreOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureDataLakeStoreOutputDataSource
      PowerBIOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::PowerBIOutputDataSource
      EventHubDataSourceProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubDataSourceProperties
      ServiceBusTopicOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusTopicOutputDataSource
      ServiceBusQueueOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusQueueOutputDataSource
      DocumentDbOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::DocumentDbOutputDataSource
      AzureSqlDatabaseOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureSqlDatabaseOutputDataSource
      EventHubOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubOutputDataSource
      AzureTableOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureTableOutputDataSource
      BlobOutputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobOutputDataSource
      BlobReferenceInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobReferenceInputDataSource
      ReferenceInputProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ReferenceInputProperties
      IoTHubStreamInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::IoTHubStreamInputDataSource
      EventHubStreamInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubStreamInputDataSource
      BlobStreamInputDataSource = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobStreamInputDataSource
      StreamInputProperties = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamInputProperties
      SubscriptionQuota = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuota
      SkuName = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SkuName
      OutputStartMode = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputStartMode
      EventsOutOfOrderPolicy = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventsOutOfOrderPolicy
      OutputErrorPolicy = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputErrorPolicy
      CompatibilityLevel = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::CompatibilityLevel
      UdfType = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::UdfType
      JsonOutputSerializationFormat = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JsonOutputSerializationFormat
      Encoding = Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Encoding
    end

    #
    # StreamAnalyticsManagementClass
    #
    class StreamAnalyticsManagementClass
      attr_reader :operations, :streaming_jobs, :inputs, :outputs, :transformations, :functions, :subscriptions, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::StreamAnalytics::Mgmt::V2016_03_01::StreamAnalyticsManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @operations = client_0.operations
        @streaming_jobs = client_0.streaming_jobs
        @inputs = client_0.inputs
        @outputs = client_0.outputs
        @transformations = client_0.transformations
        @functions = client_0.functions
        @subscriptions = client_0.subscriptions

        @model_classes = ModelClasses.new
      end
    end

    class ModelClasses
      def azure_machine_learning_web_service_input_column
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceInputColumn
      end
      def operation_display
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OperationDisplay
      end
      def azure_machine_learning_web_service_inputs
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceInputs
      end
      def operation_list_result
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OperationListResult
      end
      def storage_account
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StorageAccount
      end
      def serialization
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Serialization
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
      def sku
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Sku
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
      def function_list_result
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionListResult
      end
      def resource_test_status
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ResourceTestStatus
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
      def output_list_result
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputListResult
      end
      def reference_input_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ReferenceInputDataSource
      end
      def operation
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Operation
      end
      def azure_sql_database_data_source_properties
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureSqlDatabaseDataSourceProperties
      end
      def error_response
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ErrorResponse
      end
      def function_retrieve_default_definition_parameters
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::FunctionRetrieveDefaultDefinitionParameters
      end
      def streaming_job_list_result
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamingJobListResult
      end
      def sub_resource
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubResource
      end
      def azure_machine_learning_web_service_output_column
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceOutputColumn
      end
      def stream_input_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamInputDataSource
      end
      def service_bus_data_source_properties
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusDataSourceProperties
      end
      def input_list_result
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::InputListResult
      end
      def subscription_quotas_list_result
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuotasListResult
      end
      def resource
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Resource
      end
      def oauth_based_data_source_properties
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OAuthBasedDataSourceProperties
      end
      def input
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Input
      end
      def transformation
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Transformation
      end
      def output
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Output
      end
      def function
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Function
      end
      def streaming_job
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamingJob
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
      def java_script_function_retrieve_default_definition_parameters
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JavaScriptFunctionRetrieveDefaultDefinitionParameters
      end
      def azure_machine_learning_web_service_function_retrieve_default_definition_parameters
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters
      end
      def avro_serialization
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AvroSerialization
      end
      def json_serialization
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JsonSerialization
      end
      def csv_serialization
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::CsvSerialization
      end
      def azure_data_lake_store_output_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureDataLakeStoreOutputDataSource
      end
      def power_bioutput_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::PowerBIOutputDataSource
      end
      def event_hub_data_source_properties
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubDataSourceProperties
      end
      def service_bus_topic_output_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusTopicOutputDataSource
      end
      def service_bus_queue_output_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ServiceBusQueueOutputDataSource
      end
      def document_db_output_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::DocumentDbOutputDataSource
      end
      def azure_sql_database_output_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureSqlDatabaseOutputDataSource
      end
      def event_hub_output_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubOutputDataSource
      end
      def azure_table_output_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::AzureTableOutputDataSource
      end
      def blob_output_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobOutputDataSource
      end
      def blob_reference_input_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobReferenceInputDataSource
      end
      def reference_input_properties
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::ReferenceInputProperties
      end
      def io_thub_stream_input_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::IoTHubStreamInputDataSource
      end
      def event_hub_stream_input_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventHubStreamInputDataSource
      end
      def blob_stream_input_data_source
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::BlobStreamInputDataSource
      end
      def stream_input_properties
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::StreamInputProperties
      end
      def subscription_quota
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SubscriptionQuota
      end
      def sku_name
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::SkuName
      end
      def output_start_mode
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputStartMode
      end
      def events_out_of_order_policy
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::EventsOutOfOrderPolicy
      end
      def output_error_policy
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::OutputErrorPolicy
      end
      def compatibility_level
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::CompatibilityLevel
      end
      def udf_type
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::UdfType
      end
      def json_output_serialization_format
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::JsonOutputSerializationFormat
      end
      def encoding
        Azure::StreamAnalytics::Mgmt::V2016_03_01::Models::Encoding
      end
    end
  end
end
