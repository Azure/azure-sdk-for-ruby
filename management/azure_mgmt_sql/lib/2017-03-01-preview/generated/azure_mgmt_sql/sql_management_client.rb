# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  #
  # A service client - single point of access to the REST API.
  #
  class SqlManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription ID that identifies an Azure
    # subscription.
    attr_accessor :subscription_id

    # @return [String] The API version to use for the request.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [ExtendedDatabaseBlobAuditingPolicies]
    # extended_database_blob_auditing_policies
    attr_reader :extended_database_blob_auditing_policies

    # @return [ExtendedServerBlobAuditingPolicies]
    # extended_server_blob_auditing_policies
    attr_reader :extended_server_blob_auditing_policies

    # @return [ServerBlobAuditingPolicies] server_blob_auditing_policies
    attr_reader :server_blob_auditing_policies

    # @return [DatabaseBlobAuditingPolicies] database_blob_auditing_policies
    attr_reader :database_blob_auditing_policies

    # @return [DatabaseOperations] database_operations
    attr_reader :database_operations

    # @return [Databases] databases
    attr_reader :databases

    # @return [DatabaseVulnerabilityAssessmentRuleBaselines]
    # database_vulnerability_assessment_rule_baselines
    attr_reader :database_vulnerability_assessment_rule_baselines

    # @return [DatabaseVulnerabilityAssessments]
    # database_vulnerability_assessments
    attr_reader :database_vulnerability_assessments

    # @return [DataWarehouseUserActivitiesOperations]
    # data_warehouse_user_activities_operations
    attr_reader :data_warehouse_user_activities_operations

    # @return [JobAgents] job_agents
    attr_reader :job_agents

    # @return [JobCredentials] job_credentials
    attr_reader :job_credentials

    # @return [JobExecutions] job_executions
    attr_reader :job_executions

    # @return [Jobs] jobs
    attr_reader :jobs

    # @return [JobStepExecutions] job_step_executions
    attr_reader :job_step_executions

    # @return [JobSteps] job_steps
    attr_reader :job_steps

    # @return [JobTargetExecutions] job_target_executions
    attr_reader :job_target_executions

    # @return [JobTargetGroups] job_target_groups
    attr_reader :job_target_groups

    # @return [JobVersions] job_versions
    attr_reader :job_versions

    # @return [LongTermRetentionBackups] long_term_retention_backups
    attr_reader :long_term_retention_backups

    # @return [BackupLongTermRetentionPolicies]
    # backup_long_term_retention_policies
    attr_reader :backup_long_term_retention_policies

    # @return [ManagedDatabases] managed_databases
    attr_reader :managed_databases

    # @return [RestorePoints] restore_points
    attr_reader :restore_points

    # @return [SensitivityLabels] sensitivity_labels
    attr_reader :sensitivity_labels

    # @return [ServerAutomaticTuningOperations]
    # server_automatic_tuning_operations
    attr_reader :server_automatic_tuning_operations

    # @return [ServerDnsAliases] server_dns_aliases
    attr_reader :server_dns_aliases

    # @return [ServerSecurityAlertPolicies] server_security_alert_policies
    attr_reader :server_security_alert_policies

    #
    # Creates initializes a new instance of the SqlManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @extended_database_blob_auditing_policies = ExtendedDatabaseBlobAuditingPolicies.new(self)
      @extended_server_blob_auditing_policies = ExtendedServerBlobAuditingPolicies.new(self)
      @server_blob_auditing_policies = ServerBlobAuditingPolicies.new(self)
      @database_blob_auditing_policies = DatabaseBlobAuditingPolicies.new(self)
      @database_operations = DatabaseOperations.new(self)
      @databases = Databases.new(self)
      @database_vulnerability_assessment_rule_baselines = DatabaseVulnerabilityAssessmentRuleBaselines.new(self)
      @database_vulnerability_assessments = DatabaseVulnerabilityAssessments.new(self)
      @data_warehouse_user_activities_operations = DataWarehouseUserActivitiesOperations.new(self)
      @job_agents = JobAgents.new(self)
      @job_credentials = JobCredentials.new(self)
      @job_executions = JobExecutions.new(self)
      @jobs = Jobs.new(self)
      @job_step_executions = JobStepExecutions.new(self)
      @job_steps = JobSteps.new(self)
      @job_target_executions = JobTargetExecutions.new(self)
      @job_target_groups = JobTargetGroups.new(self)
      @job_versions = JobVersions.new(self)
      @long_term_retention_backups = LongTermRetentionBackups.new(self)
      @backup_long_term_retention_policies = BackupLongTermRetentionPolicies.new(self)
      @managed_databases = ManagedDatabases.new(self)
      @restore_points = RestorePoints.new(self)
      @sensitivity_labels = SensitivityLabels.new(self)
      @server_automatic_tuning_operations = ServerAutomaticTuningOperations.new(self)
      @server_dns_aliases = ServerDnsAliases.new(self)
      @server_security_alert_policies = ServerSecurityAlertPolicies.new(self)
      @api_version = '2017-03-01-preview'
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
        sdk_information = 'azure_mgmt_sql'
        sdk_information = "#{sdk_information}/0.17.2"
        add_user_agent_information(sdk_information)
    end
  end
end
