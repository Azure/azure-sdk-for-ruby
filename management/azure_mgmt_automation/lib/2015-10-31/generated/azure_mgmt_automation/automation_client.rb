# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  #
  # A service client - single point of access to the REST API.
  #
  class AutomationClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] Client Api Version.
    attr_reader :api_version

    # @return [String] Gets subscription credentials which uniquely identify
    # Microsoft Azure subscription. The subscription ID forms part of the URI
    # for every service call.
    attr_accessor :subscription_id

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [AutomationAccountOperations] automation_account_operations
    attr_reader :automation_account_operations

    # @return [Operations] operations
    attr_reader :operations

    # @return [StatisticsOperations] statistics_operations
    attr_reader :statistics_operations

    # @return [Usages] usages
    attr_reader :usages

    # @return [Keys] keys
    attr_reader :keys

    # @return [CertificateOperations] certificate_operations
    attr_reader :certificate_operations

    # @return [ConnectionOperations] connection_operations
    attr_reader :connection_operations

    # @return [ConnectionTypeOperations] connection_type_operations
    attr_reader :connection_type_operations

    # @return [CredentialOperations] credential_operations
    attr_reader :credential_operations

    # @return [DscCompilationJobOperations] dsc_compilation_job_operations
    attr_reader :dsc_compilation_job_operations

    # @return [DscCompilationJobStream] dsc_compilation_job_stream
    attr_reader :dsc_compilation_job_stream

    # @return [DscConfigurationOperations] dsc_configuration_operations
    attr_reader :dsc_configuration_operations

    # @return [AgentRegistrationInformation] agent_registration_information
    attr_reader :agent_registration_information

    # @return [DscNodeOperations] dsc_node_operations
    attr_reader :dsc_node_operations

    # @return [NodeReports] node_reports
    attr_reader :node_reports

    # @return [DscNodeConfigurationOperations]
    # dsc_node_configuration_operations
    attr_reader :dsc_node_configuration_operations

    # @return [HybridRunbookWorkerGroupOperations]
    # hybrid_runbook_worker_group_operations
    attr_reader :hybrid_runbook_worker_group_operations

    # @return [JobOperations] job_operations
    attr_reader :job_operations

    # @return [JobStreamOperations] job_stream_operations
    attr_reader :job_stream_operations

    # @return [JobScheduleOperations] job_schedule_operations
    attr_reader :job_schedule_operations

    # @return [LinkedWorkspaceOperations] linked_workspace_operations
    attr_reader :linked_workspace_operations

    # @return [ActivityOperations] activity_operations
    attr_reader :activity_operations

    # @return [ModuleModelOperations] module_model_operations
    attr_reader :module_model_operations

    # @return [ObjectDataTypes] object_data_types
    attr_reader :object_data_types

    # @return [Fields] fields
    attr_reader :fields

    # @return [RunbookDraftOperations] runbook_draft_operations
    attr_reader :runbook_draft_operations

    # @return [RunbookOperations] runbook_operations
    attr_reader :runbook_operations

    # @return [TestJobStreams] test_job_streams
    attr_reader :test_job_streams

    # @return [TestJobOperations] test_job_operations
    attr_reader :test_job_operations

    # @return [ScheduleOperations] schedule_operations
    attr_reader :schedule_operations

    # @return [VariableOperations] variable_operations
    attr_reader :variable_operations

    # @return [WebhookOperations] webhook_operations
    attr_reader :webhook_operations

    #
    # Creates initializes a new instance of the AutomationClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @automation_account_operations = AutomationAccountOperations.new(self)
      @operations = Operations.new(self)
      @statistics_operations = StatisticsOperations.new(self)
      @usages = Usages.new(self)
      @keys = Keys.new(self)
      @certificate_operations = CertificateOperations.new(self)
      @connection_operations = ConnectionOperations.new(self)
      @connection_type_operations = ConnectionTypeOperations.new(self)
      @credential_operations = CredentialOperations.new(self)
      @dsc_compilation_job_operations = DscCompilationJobOperations.new(self)
      @dsc_compilation_job_stream = DscCompilationJobStream.new(self)
      @dsc_configuration_operations = DscConfigurationOperations.new(self)
      @agent_registration_information = AgentRegistrationInformation.new(self)
      @dsc_node_operations = DscNodeOperations.new(self)
      @node_reports = NodeReports.new(self)
      @dsc_node_configuration_operations = DscNodeConfigurationOperations.new(self)
      @hybrid_runbook_worker_group_operations = HybridRunbookWorkerGroupOperations.new(self)
      @job_operations = JobOperations.new(self)
      @job_stream_operations = JobStreamOperations.new(self)
      @job_schedule_operations = JobScheduleOperations.new(self)
      @linked_workspace_operations = LinkedWorkspaceOperations.new(self)
      @activity_operations = ActivityOperations.new(self)
      @module_model_operations = ModuleModelOperations.new(self)
      @object_data_types = ObjectDataTypes.new(self)
      @fields = Fields.new(self)
      @runbook_draft_operations = RunbookDraftOperations.new(self)
      @runbook_operations = RunbookOperations.new(self)
      @test_job_streams = TestJobStreams.new(self)
      @test_job_operations = TestJobOperations.new(self)
      @schedule_operations = ScheduleOperations.new(self)
      @variable_operations = VariableOperations.new(self)
      @webhook_operations = WebhookOperations.new(self)
      @api_version = '2015-10-31'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_automation'
        sdk_information = "#{sdk_information}/0.17.1"
        add_user_agent_information(sdk_information)
    end
  end
end
