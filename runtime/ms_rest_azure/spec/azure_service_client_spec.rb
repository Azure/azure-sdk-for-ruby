# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'rspec'
require 'concurrent'
require 'ms_rest_azure'

module MsRestAzure

  describe AzureServiceClient do
    before(:all) do
      @methods = ['put', 'post', 'delete', 'patch']
    end

    it 'should throw error in case provided azure response is nil' do
      azure_service_client = AzureServiceClient.new nil
      expect { azure_service_client.get_long_running_operation_result(nil, nil) }.to raise_error(MsRest::ValidationError)
    end

    it 'should throw error if unexpected polling state is passed' do
      azure_service_client = AzureServiceClient.new nil

      response = double('response', :status => 404)
      request = double('request', headers: {}, base_uri: '', method: @methods[0])

      azure_response = double('azure_response',
                              :request => request,
                              :response => response,
                              :body => nil)

      expect { azure_service_client.get_long_running_operation_result(azure_response, nil) }.to raise_error(AzureOperationError)
    end

    it 'should use async operation header when async_operation_header present' do
      azure_service_client = AzureServiceClient.new nil
      azure_service_client.long_running_operation_retry_timeout = 0

      allow_any_instance_of(MsRestAzure::PollingState).to receive(:create_connection).and_return(nil)
      allow(azure_service_client).to receive(:update_state_without_custom_deserialization) do |request, polling_state|
        polling_state.status = AsyncOperationStatus::SUCCESS_STATUS
        polling_state.resource = 'resource'
      end

      response = double('response',
                        :headers =>
                            { 'Azure-AsyncOperation' => 'async_operation_header'},
                        :status => 202)
      expect(azure_service_client).to receive(:update_state_without_custom_deserialization)

      @methods.each do |method|
        request = double('request', headers: {}, base_uri: '', method: method)
        azure_response = double('azure_response',
                                :request => request,
                                :response => response,
                                :body => nil)
        azure_service_client.get_long_running_operation_result(azure_response, nil)
      end
    end

    it 'should use location operation header when location_header present' do
      azure_service_client = AzureServiceClient.new nil
      azure_service_client.long_running_operation_retry_timeout = 0

      allow_any_instance_of(MsRestAzure::PollingState).to receive(:create_connection).and_return(nil)
      allow(azure_service_client).to receive(:update_state_without_custom_deserialization) do |request, polling_state|
        polling_state.status = AsyncOperationStatus::SUCCESS_STATUS
        polling_state.resource = 'resource'
      end

      response = double('response', :headers => { 'Location' => 'location_header'}, :status => 202)
      expect(azure_service_client).to receive(:update_state_without_custom_deserialization)

      @methods.each do |method|
        request = double('request', headers: {}, base_uri: '', method: method)
        azure_response = double('azure_response',
                                :request => request,
                                :response => response,
                                :body => nil)
        azure_service_client.get_long_running_operation_result(azure_response, nil)
      end
    end

    it 'should throw error in case LRO ends up with failed status' do
      azure_service_client = AzureServiceClient.new nil
      azure_service_client.long_running_operation_retry_timeout = 0

      allow_any_instance_of(MsRestAzure::PollingState).to receive(:create_connection).and_return(nil)
      allow(azure_service_client).to receive(:update_state_without_custom_deserialization) do |request, polling_state|
        polling_state.status = AsyncOperationStatus::FAILED_STATUS
      end

      response = double('response', :headers =>
                                      { 'Azure-AsyncOperation' => 'async_operation_header' },
                                    :status => 202)

      @methods.each do |method|
        request = double('request', headers: {}, base_uri: '', method: method)
        azure_response = double('azure_response',
                                :request => request,
                                :response => response,
                                :body => nil)
        expect { azure_service_client.get_long_running_operation_result(azure_response, nil) }.to raise_error(AzureOperationError)
      end
    end

    it 'should add or update default user agent information' do
      azure_service_client = AzureServiceClient.new nil

      # Verify default information
      default_info = 'Azure-SDK-For-Ruby'
      expect(azure_service_client.user_agent_extended).not_to be_nil
      expect(azure_service_client.user_agent_extended).to include(default_info)

      # Verify updated information
      additional_user_agent_information = "fog-azure-rm/0.2.0"
      azure_service_client.add_user_agent_information(additional_user_agent_information)
      expect(azure_service_client.user_agent_extended).not_to be_nil
      expect(azure_service_client.user_agent_extended).to include(default_info)
      expect(azure_service_client.user_agent_extended).to include(additional_user_agent_information)
    end
  end
end
