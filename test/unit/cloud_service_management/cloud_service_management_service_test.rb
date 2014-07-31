#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'test_helper'
require 'securerandom'

describe Azure::CloudServiceManagementService do

  subject { Azure::CloudServiceManagementService.new }
  let(:request_path) { '/services/hostedservices' }
  let(:cloud_services_xml) { Fixtures['list_cloud_services'] }
  let(:method) { :get }
  let(:mock_request) { mock }
  let(:response) do
    response = mock
    response.stubs(:body).returns(cloud_services_xml)
    response
  end
  let(:response_body) { Nokogiri::XML response.body }

  before do
    Loggerx.expects(:puts).returns(nil).at_least(0)
  end
  
  describe '#list_cloud_services' do
    before do
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(response_body)
    end

    it 'assembles a URI for the request' do
      subject.list_cloud_services
    end

    it 'sets the properties of the CloudService instance' do
      cloud_service = subject.list_cloud_services.first
      cloud_service.name.must_equal 'cloud-service-1'
    end

    it 'returns a list of cloud services for the subscription' do
      results = subject.list_cloud_services
      results.must_be_kind_of Array
      results.length.must_equal 2
      results.first.must_be_kind_of Azure::CloudServiceManagement::CloudService
    end
  end

  describe '#get_cloud_service' do
    before do
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_request)
      mock_request.expects(:call).returns(response_body)
    end

    it 'assembles a URI for the request' do
      subject.get_cloud_service 'cloud-service-1'
    end

    it 'returns true if found cloud service with given name' do
      result = subject.get_cloud_service 'cloud-service-1'
      result.must_equal true
    end

    it "returns false if cloud service with given name doesn't exists" do
      result = subject.get_cloud_service 'cloud-service-3'
      result.must_equal false
    end
  end

  describe '#create_cloud_service' do

    it 'Create cloud service return message if cloud service exists of given name.' do
      ManagementHttpRequest.any_instance.expects(:call).returns response_body
      msg = subject.create_cloud_service 'cloud-service-1'
      assert_match(/^Cloud service cloud-service-1 already exists*/, msg)
    end

    it "Create cloud service if cloud service doesn't exists of given name." do
      Azure::CloudServiceManagementService.any_instance.stubs(:get_cloud_service).with('cloud-service-3').returns(false)
      ManagementHttpRequest.any_instance.expects(:call).returns nil
      subject.create_cloud_service 'cloud-service-3'
    end

  end

  let(:slot) { "Staging" }
  let(:cloud_service_name) { "testservice" }
  let(:get_deployment_request_path) { "/services/hostedservices/#{cloud_service_name}/deploymentslots/#{slot}" }
  let(:existing_deployment_xml) { Fixtures['get_deployment_existing'] }
  let(:existing_deployment_response) do
    deployment = mock
    deployment.stubs(:body).returns(existing_deployment_xml)
    deployment.stubs(:code).returns(200)
    deployment
  end

  let(:missing_deployment_xml) { Fixtures['get_deployment_missing'] }
  let(:missing_deployment_response) do
    deployment = mock
    deployment.stubs(:body).returns(missing_deployment_xml)
    deployment.stubs(:code).returns(500)
    deployment
  end

  describe '#get_deployment' do

  	it 'Returns a Deployment object with all its statuses and details if the it exists for the specific slot of the cloud service.' do
      Net::HTTP.any_instance.stubs(:request).returns(existing_deployment_response)

  		deployment = subject.get_deployment(cloud_service_name, {:slot => slot})
  		deployment.must_be_kind_of Azure::CloudServiceManagement::Deployment
      deployment.exists?.must_equal true
  		deployment.deployment_slot.must_equal slot
  		deployment.role_instances.size.must_equal 1
  		deployment.role_instances[0].instance_endpoints.size.must_equal 3
  		deployment.roles.size.must_equal 1
  		deployment.roles[0].configuration_sets.size.must_equal 1
  		deployment.virtual_ips.size.must_equal 1
  	end

    it 'Returns a Deployment object that says that no deployment exists when we explicitely 
    disable failure for deployment that does not exist for the specific slot of the cloud service.' do
      Net::HTTP.any_instance.stubs(:request).returns(missing_deployment_response)

      deployment = subject.get_deployment(cloud_service_name, {:slot => slot, :no_exit_on_failure => true})
      deployment.must_be_kind_of Azure::CloudServiceManagement::Deployment
      deployment.exists?.must_equal false
    end

    it 'Fails and throw an error when no deployment exists for the specific slot of the cloud service.' do
      Net::HTTP.any_instance.stubs(:request).returns(missing_deployment_response)

      exception = assert_raises(RuntimeError) do
        deployment = subject.get_deployment(cloud_service_name, {:slot => slot })
      end
      assert_match(/ResourceNotFound : No deployments were found*/, exception.message)
    end
  end

  let(:package_url) { "https://my_storage.blob.core.windows.net/my_container/my_pkg.cspkg" }
  let(:service_config) { "fewcqfewqfeqc43" }
  let(:deployment_name) { "deployment_test" }
  let(:no_deployment) do
    deployment = mock
    deployment.stubs(:exists?).returns(false)
    deployment
  end
  let(:transitioning_deployment) do
    deployment = mock
    deployment.stubs(:exists?).returns(true)
    deployment.stubs(:is_transitioning?).returns(true)
    deployment
  end
  let(:existing_deployment) do
    deployment = mock
    deployment.stubs(:exists?).returns(true)
    deployment.stubs(:is_transitioning?).returns(false)
    deployment.stubs(:name).returns("existing_deployment")
    deployment
  end

  describe '#upgrade_deployment' do

    it 'Fails and throw an error if the deployment does not exist yet.' do
      subject.stubs(:get_deployment).returns(no_deployment)

      exception = assert_raises(RuntimeError) do
        subject.upgrade_deployment(cloud_service_name, package_url, service_config, {:slot => slot })
      end
      assert_match(/.*does not exist, and therefore cannot be upgraded/, exception.message)
    end

    it 'Fails and throw an error if the deployment is in a current transitioning state.' do
      subject.stubs(:get_deployment).returns(transitioning_deployment)

      exception = assert_raises(RuntimeError) do
        subject.upgrade_deployment(cloud_service_name, package_url, service_config, {:slot => slot })
      end
      assert_match(/.*is currently transitioning.*/, exception.message)
    end

    it 'Starts the upgrade asynchronously when the deployment does exist.' do
      subject.stubs(:get_deployment).returns(existing_deployment)
      ManagementHttpRequest.any_instance.expects(:call).returns nil
      subject.upgrade_deployment(cloud_service_name, package_url, service_config, {:slot => slot })
    end
  end

  describe '#swap_deployment' do

    it 'Fails and throw an error if both the staging and production deployment do not exist yet.' do
      subject.stubs(:get_deployment).with(cloud_service_name, {:slot => "staging", :no_exit_on_failure => true})
        .returns(no_deployment)
      subject.stubs(:get_deployment).with(cloud_service_name, {:slot => "production", :no_exit_on_failure => true})
        .returns(no_deployment)

      exception = assert_raises(RuntimeError) do
        subject.swap_deployment(cloud_service_name)
      end
      assert_match(/.*There are no deployments on cloud service #{cloud_service_name}.*/, exception.message)
    end

    it 'Fails and throw an error if the staging deployment is currently transitioning.' do
      subject.stubs(:get_deployment).with(cloud_service_name, {:slot => "staging", :no_exit_on_failure => true})
        .returns(transitioning_deployment)
      subject.stubs(:get_deployment).with(cloud_service_name, {:slot => "production", :no_exit_on_failure => true})
        .returns(existing_deployment)

      exception = assert_raises(RuntimeError) do
        subject.swap_deployment(cloud_service_name)
      end
      assert_match(/.*Staging deployment on cloud service #{cloud_service_name} is transitioning.*/, exception.message)
    end

    it 'Fails and throw an error if the production deployment is currently transitioning.' do
      subject.stubs(:get_deployment).with(cloud_service_name, {:slot => "staging", :no_exit_on_failure => true})
        .returns(existing_deployment)
      subject.stubs(:get_deployment).with(cloud_service_name, {:slot => "production", :no_exit_on_failure => true})
        .returns(transitioning_deployment)

      exception = assert_raises(RuntimeError) do
        subject.swap_deployment(cloud_service_name)
      end
      assert_match(/.*Production deployment on cloud service #{cloud_service_name} is transitioning.*/, exception.message)
    end

    it "Swaps the production and staging deployment for the specified cloud service." do
      subject.stubs(:get_deployment).with(cloud_service_name, {:slot => "staging", :no_exit_on_failure => true})
        .returns(existing_deployment)
      subject.stubs(:get_deployment).with(cloud_service_name, {:slot => "production", :no_exit_on_failure => true})
        .returns(existing_deployment)

      ManagementHttpRequest.any_instance.expects(:call).returns nil

      subject.swap_deployment(cloud_service_name)
    end
  end
end