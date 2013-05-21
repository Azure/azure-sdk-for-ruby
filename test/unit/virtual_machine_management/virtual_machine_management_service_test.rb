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
require "test_helper"

describe Azure::VirtualMachineService do
  VirtualMachine = Azure::VirtualMachineManagement::VirtualMachine
  subject do
    ServiceManagement.new
    Azure::VirtualMachineService
  end
 
  describe "#list_virtual_machines" do
    let(:request_path) {'/services/hostedservices'}
    let(:cloud_services_xml)  { Fixtures["list_cloud_services"] }
    let(:virtual_machine_xml)  { Fixtures["virtual_machine"] }
    let(:deployment_error_xml)  { Fixtures["deployment_error"] }
    let(:method) { :get }
    let(:mock_cloud_service_request){ mock() }
    let(:mock_virtual_machine_request){ mock() }
    let(:cloud_service_response) {
      cloud_service_response = mock()
      cloud_service_response.stubs(:body).returns(cloud_services_xml)
      cloud_service_response
    }

    let(:virtual_machine_response) {
      virtual_machine_response = mock()
      virtual_machine_response.stubs(:body).returns(virtual_machine_xml)
      virtual_machine_response
    }

    let(:deployment_error_response) {
      http_error_response = mock()
      http_error_response.stubs(:body).returns(deployment_error_xml)
      http_error_response
    }
    let(:cloud_service_response_body) {Nokogiri::XML  cloud_service_response.body}
    let(:virtual_machine_response_body) {Nokogiri::XML  virtual_machine_response.body}

    before {
      ManagementHttpRequest.stubs(:new).with(method, request_path, nil).returns(mock_cloud_service_request)
      mock_cloud_service_request.expects(:call).returns(cloud_service_response_body)

      ManagementHttpRequest.stubs(:new).with(method, "/services/hostedservices/cloud-service-1/deploymentslots/production").returns(mock_virtual_machine_request)
      mock_virtual_machine_request.stubs(:warn=).returns(true).twice
      ManagementHttpRequest.stubs(:new).with(method, "/services/hostedservices/cloud-service-2/deploymentslots/production").returns(mock_virtual_machine_request)
      mock_virtual_machine_request.expects(:call).twice.returns(virtual_machine_response_body).returns(Nokogiri::XML  deployment_error_response.body)
    }

    it "assembles a URI for the request" do
      subject.list_virtual_machines
    end

    it "returns a virtual_machine, with it's attribute populated" do
      virtual_machine = subject.list_virtual_machines.first
      virtual_machine.vm_name.must_equal 'instance-name'
      virtual_machine.role_size.must_equal 'Small'
      virtual_machine.hostname.must_equal 'host-name'
      virtual_machine.cloud_service_name.must_equal 'cloud-service-1'
      virtual_machine.deployment_name.must_equal 'deployment-name'
      virtual_machine.ipaddress.must_equal '137.116.17.187'
    end
    
    it "returns a list of virtual machines for the subscription" do
      results = subject.list_virtual_machines
      results.must_be_kind_of Array
      results.length.must_equal 1
      results.first.must_be_kind_of VirtualMachine
    end

    it "returns a virtual_machine, with it's tcp_endpoints attribute" do
      virtual_machine = subject.list_virtual_machines.first
      virtual_machine.tcp_endpoints.must_be_kind_of Array
      virtual_machine.tcp_endpoints.must_include({"Name"=>"SSH", "Vip"=>"137.116.17.187", "PublicPort"=>"22", "LocalPort"=>"22"})
      virtual_machine.tcp_endpoints.must_include({"Name"=>"tcp-port-80", "Vip"=>"137.116.17.187", "PublicPort"=>"80", "LocalPort"=>"80"})
      virtual_machine.tcp_endpoints.must_include({"Name"=>"tcp-port-3889", "Vip"=>"137.116.17.187", "PublicPort"=>"3889", "LocalPort"=>"3889"})
    end
  end
  
end
