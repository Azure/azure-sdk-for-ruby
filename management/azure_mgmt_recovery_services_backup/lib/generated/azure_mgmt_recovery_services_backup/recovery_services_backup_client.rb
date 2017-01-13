# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  #
  # A service client - single point of access to the REST API.
  #
  class RecoveryServicesBackupClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription ID.
    attr_accessor :subscription_id

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] Gets or sets the retry timeout in seconds for Long
    # Running Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] When set to true a unique x-ms-client-request-id value
    # is generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [ItemLevelRecoveryConnections] item_level_recovery_connections
    attr_reader :item_level_recovery_connections

    # @return [Restores] restores
    attr_reader :restores

    # @return [ProtectionPolicyOperationStatuses]
    # protection_policy_operation_statuses
    attr_reader :protection_policy_operation_statuses

    # @return [ProtectionPolicyOperationResults]
    # protection_policy_operation_results
    attr_reader :protection_policy_operation_results

    # @return [ProtectionPolicies] protection_policies
    attr_reader :protection_policies

    # @return [ProtectionContainerOperationResults]
    # protection_container_operation_results
    attr_reader :protection_container_operation_results

    # @return [ProtectionContainerRefreshOperationResults]
    # protection_container_refresh_operation_results
    attr_reader :protection_container_refresh_operation_results

    # @return [ProtectionContainers] protection_containers
    attr_reader :protection_containers

    # @return [RecoveryPoints] recovery_points
    attr_reader :recovery_points

    # @return [Backups] backups
    attr_reader :backups

    # @return [ProtectedItemOperationStatuses]
    # protected_item_operation_statuses
    attr_reader :protected_item_operation_statuses

    # @return [ProtectedItemOperationResults] protected_item_operation_results
    attr_reader :protected_item_operation_results

    # @return [ProtectedItems] protected_items
    attr_reader :protected_items

    # @return [ProtectableItems] protectable_items
    attr_reader :protectable_items

    # @return [ExportJobsOperationResults] export_jobs_operation_results
    attr_reader :export_jobs_operation_results

    # @return [JobOperationResults] job_operation_results
    attr_reader :job_operation_results

    # @return [Jobs] jobs
    attr_reader :jobs

    # @return [JobCancellations] job_cancellations
    attr_reader :job_cancellations

    # @return [JobDetails] job_details
    attr_reader :job_details

    # @return [BackupOperationStatuses] backup_operation_statuses
    attr_reader :backup_operation_statuses

    # @return [BackupOperationResults] backup_operation_results
    attr_reader :backup_operation_results

    # @return [BackupEngines] backup_engines
    attr_reader :backup_engines

    #
    # Creates initializes a new instance of the RecoveryServicesBackupClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @item_level_recovery_connections = ItemLevelRecoveryConnections.new(self)
      @restores = Restores.new(self)
      @protection_policy_operation_statuses = ProtectionPolicyOperationStatuses.new(self)
      @protection_policy_operation_results = ProtectionPolicyOperationResults.new(self)
      @protection_policies = ProtectionPolicies.new(self)
      @protection_container_operation_results = ProtectionContainerOperationResults.new(self)
      @protection_container_refresh_operation_results = ProtectionContainerRefreshOperationResults.new(self)
      @protection_containers = ProtectionContainers.new(self)
      @recovery_points = RecoveryPoints.new(self)
      @backups = Backups.new(self)
      @protected_item_operation_statuses = ProtectedItemOperationStatuses.new(self)
      @protected_item_operation_results = ProtectedItemOperationResults.new(self)
      @protected_items = ProtectedItems.new(self)
      @protectable_items = ProtectableItems.new(self)
      @export_jobs_operation_results = ExportJobsOperationResults.new(self)
      @job_operation_results = JobOperationResults.new(self)
      @jobs = Jobs.new(self)
      @job_cancellations = JobCancellations.new(self)
      @job_details = JobDetails.new(self)
      @backup_operation_statuses = BackupOperationStatuses.new(self)
      @backup_operation_results = BackupOperationResults.new(self)
      @backup_engines = BackupEngines.new(self)
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
        sdk_information = 'azure_mgmt_recovery_services_backup'
        if defined? Azure::ARM::RecoveryServicesBackup::VERSION
          sdk_information = "#{sdk_information}/#{Azure::ARM::RecoveryServicesBackup::VERSION}"
        end
        add_user_agent_information(sdk_information)
    end
  end
end
