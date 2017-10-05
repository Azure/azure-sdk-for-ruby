# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_stream_analytics'


module Azure::Profiles::StreamAnalyticsModule::Management::Profile_2016_03_01
  module StreamAnalytics
    Operations = Azure::ARM::StreamAnalytics::Api_2016_03_01::Operations
    StreamingJobs = Azure::ARM::StreamAnalytics::Api_2016_03_01::StreamingJobs
    Inputs = Azure::ARM::StreamAnalytics::Api_2016_03_01::Inputs
    Outputs = Azure::ARM::StreamAnalytics::Api_2016_03_01::Outputs
    Transformations = Azure::ARM::StreamAnalytics::Api_2016_03_01::Transformations
    Functions = Azure::ARM::StreamAnalytics::Api_2016_03_01::Functions
    Subscriptions = Azure::ARM::StreamAnalytics::Api_2016_03_01::Subscriptions

    module Models
      AzureMachineLearningWebServiceInputColumn = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceInputColumn
      OperationDisplay = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OperationDisplay
      AzureMachineLearningWebServiceInputs = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceInputs
      OperationListResult = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OperationListResult
      StorageAccount = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StorageAccount
      Serialization = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Serialization
      FunctionBinding = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionBinding
      Diagnostics = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Diagnostics
      FunctionOutput = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionOutput
      Sku = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Sku
      DiagnosticCondition = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::DiagnosticCondition
      OutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OutputDataSource
      InputProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::InputProperties
      FunctionProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionProperties
      FunctionListResult = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionListResult
      ResourceTestStatus = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ResourceTestStatus
      FunctionInput = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionInput
      StartStreamingJobParameters = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StartStreamingJobParameters
      BlobDataSourceProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::BlobDataSourceProperties
      OutputListResult = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OutputListResult
      ReferenceInputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ReferenceInputDataSource
      Operation = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Operation
      AzureSqlDatabaseDataSourceProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureSqlDatabaseDataSourceProperties
      ErrorResponse = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ErrorResponse
      FunctionRetrieveDefaultDefinitionParameters = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionRetrieveDefaultDefinitionParameters
      StreamingJobListResult = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StreamingJobListResult
      SubResource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::SubResource
      AzureMachineLearningWebServiceOutputColumn = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceOutputColumn
      StreamInputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StreamInputDataSource
      ServiceBusDataSourceProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ServiceBusDataSourceProperties
      InputListResult = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::InputListResult
      SubscriptionQuotasListResult = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::SubscriptionQuotasListResult
      OAuthBasedDataSourceProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OAuthBasedDataSourceProperties
      Input = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Input
      Transformation = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Transformation
      Output = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Output
      Function = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Function
      StreamingJob = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StreamingJob
      JavaScriptFunctionBinding = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::JavaScriptFunctionBinding
      AzureMachineLearningWebServiceFunctionBinding = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceFunctionBinding
      ScalarFunctionProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ScalarFunctionProperties
      JavaScriptFunctionRetrieveDefaultDefinitionParameters = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::JavaScriptFunctionRetrieveDefaultDefinitionParameters
      AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters
      AvroSerialization = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AvroSerialization
      JsonSerialization = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::JsonSerialization
      CsvSerialization = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::CsvSerialization
      AzureDataLakeStoreOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureDataLakeStoreOutputDataSource
      PowerBIOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::PowerBIOutputDataSource
      EventHubDataSourceProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::EventHubDataSourceProperties
      ServiceBusTopicOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ServiceBusTopicOutputDataSource
      ServiceBusQueueOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ServiceBusQueueOutputDataSource
      DocumentDbOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::DocumentDbOutputDataSource
      AzureSqlDatabaseOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureSqlDatabaseOutputDataSource
      EventHubOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::EventHubOutputDataSource
      AzureTableOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureTableOutputDataSource
      BlobOutputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::BlobOutputDataSource
      BlobReferenceInputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::BlobReferenceInputDataSource
      ReferenceInputProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ReferenceInputProperties
      IoTHubStreamInputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::IoTHubStreamInputDataSource
      EventHubStreamInputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::EventHubStreamInputDataSource
      BlobStreamInputDataSource = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::BlobStreamInputDataSource
      StreamInputProperties = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StreamInputProperties
      SubscriptionQuota = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::SubscriptionQuota
      SkuName = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::SkuName
      OutputStartMode = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OutputStartMode
      EventsOutOfOrderPolicy = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::EventsOutOfOrderPolicy
      OutputErrorPolicy = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OutputErrorPolicy
      CompatibilityLevel = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::CompatibilityLevel
      UdfType = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::UdfType
      JsonOutputSerializationFormat = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::JsonOutputSerializationFormat
      Encoding = Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Encoding
    end

    #
    # StreamAnalytics
    #
    class StreamAnalyticsClass
      attr_accessor :operations, :streaming_jobs, :inputs, :outputs, :transformations, :functions, :subscriptions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::StreamAnalytics::Api_2016_03_01::StreamAnalyticsManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::StreamAnalytics::Api_2016_03_01::Operations.new(client)
        self.streaming_jobs = Azure::ARM::StreamAnalytics::Api_2016_03_01::StreamingJobs.new(client)
        self.inputs = Azure::ARM::StreamAnalytics::Api_2016_03_01::Inputs.new(client)
        self.outputs = Azure::ARM::StreamAnalytics::Api_2016_03_01::Outputs.new(client)
        self.transformations = Azure::ARM::StreamAnalytics::Api_2016_03_01::Transformations.new(client)
        self.functions = Azure::ARM::StreamAnalytics::Api_2016_03_01::Functions.new(client)
        self.subscriptions = Azure::ARM::StreamAnalytics::Api_2016_03_01::Subscriptions.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-03-01'
            client = Azure::ARM::StreamAnalytics::Api_2016_03_01::StreamAnalyticsManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def azure_machine_learning_web_service_input_column
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceInputColumn
        end
        def operation_display
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OperationDisplay
        end
        def azure_machine_learning_web_service_inputs
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceInputs
        end
        def operation_list_result
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OperationListResult
        end
        def storage_account
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StorageAccount
        end
        def serialization
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Serialization
        end
        def function_binding
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionBinding
        end
        def diagnostics
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Diagnostics
        end
        def function_output
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionOutput
        end
        def sku
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Sku
        end
        def diagnostic_condition
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::DiagnosticCondition
        end
        def output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OutputDataSource
        end
        def input_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::InputProperties
        end
        def function_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionProperties
        end
        def function_list_result
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionListResult
        end
        def resource_test_status
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ResourceTestStatus
        end
        def function_input
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionInput
        end
        def start_streaming_job_parameters
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StartStreamingJobParameters
        end
        def blob_data_source_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::BlobDataSourceProperties
        end
        def output_list_result
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OutputListResult
        end
        def reference_input_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ReferenceInputDataSource
        end
        def operation
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Operation
        end
        def azure_sql_database_data_source_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureSqlDatabaseDataSourceProperties
        end
        def error_response
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ErrorResponse
        end
        def function_retrieve_default_definition_parameters
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::FunctionRetrieveDefaultDefinitionParameters
        end
        def streaming_job_list_result
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StreamingJobListResult
        end
        def sub_resource
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::SubResource
        end
        def azure_machine_learning_web_service_output_column
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceOutputColumn
        end
        def stream_input_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StreamInputDataSource
        end
        def service_bus_data_source_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ServiceBusDataSourceProperties
        end
        def input_list_result
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::InputListResult
        end
        def subscription_quotas_list_result
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::SubscriptionQuotasListResult
        end
        def oauth_based_data_source_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OAuthBasedDataSourceProperties
        end
        def input
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Input
        end
        def transformation
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Transformation
        end
        def output
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Output
        end
        def function
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Function
        end
        def streaming_job
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StreamingJob
        end
        def java_script_function_binding
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::JavaScriptFunctionBinding
        end
        def azure_machine_learning_web_service_function_binding
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceFunctionBinding
        end
        def scalar_function_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ScalarFunctionProperties
        end
        def java_script_function_retrieve_default_definition_parameters
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::JavaScriptFunctionRetrieveDefaultDefinitionParameters
        end
        def azure_machine_learning_web_service_function_retrieve_default_definition_parameters
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters
        end
        def avro_serialization
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AvroSerialization
        end
        def json_serialization
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::JsonSerialization
        end
        def csv_serialization
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::CsvSerialization
        end
        def azure_data_lake_store_output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureDataLakeStoreOutputDataSource
        end
        def power_bioutput_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::PowerBIOutputDataSource
        end
        def event_hub_data_source_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::EventHubDataSourceProperties
        end
        def service_bus_topic_output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ServiceBusTopicOutputDataSource
        end
        def service_bus_queue_output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ServiceBusQueueOutputDataSource
        end
        def document_db_output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::DocumentDbOutputDataSource
        end
        def azure_sql_database_output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureSqlDatabaseOutputDataSource
        end
        def event_hub_output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::EventHubOutputDataSource
        end
        def azure_table_output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::AzureTableOutputDataSource
        end
        def blob_output_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::BlobOutputDataSource
        end
        def blob_reference_input_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::BlobReferenceInputDataSource
        end
        def reference_input_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::ReferenceInputProperties
        end
        def io_thub_stream_input_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::IoTHubStreamInputDataSource
        end
        def event_hub_stream_input_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::EventHubStreamInputDataSource
        end
        def blob_stream_input_data_source
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::BlobStreamInputDataSource
        end
        def stream_input_properties
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::StreamInputProperties
        end
        def subscription_quota
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::SubscriptionQuota
        end
        def sku_name
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::SkuName
        end
        def output_start_mode
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OutputStartMode
        end
        def events_out_of_order_policy
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::EventsOutOfOrderPolicy
        end
        def output_error_policy
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::OutputErrorPolicy
        end
        def compatibility_level
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::CompatibilityLevel
        end
        def udf_type
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::UdfType
        end
        def json_output_serialization_format
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::JsonOutputSerializationFormat
        end
        def encoding
          Azure::ARM::StreamAnalytics::Api_2016_03_01::Models::Encoding
        end
      end
    end
  end
end
