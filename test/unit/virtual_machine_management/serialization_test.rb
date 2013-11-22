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

describe Azure::VirtualMachineManagement::Serialization do
  subject { Azure::VirtualMachineManagement::Serialization }

  let(:virtual_machine_xml) { Nokogiri::XML(Fixtures["virtual_machine"]) }
  let(:cloud_service_name) { 'cloud-service-1' }

  describe "#virtual_machines_from_xml" do

    it "accepts an XML string" do
      subject.virtual_machines_from_xml(virtual_machine_xml,cloud_service_name)
    end

    it "returns an Array of VirtualMachine instances" do
      result = subject.virtual_machines_from_xml(virtual_machine_xml,cloud_service_name)
      result.must_be_kind_of Azure::VirtualMachineManagement::VirtualMachine
    end

    it "returns a virtual_machine, with it's attribute populated" do
      virtual_machine = subject.virtual_machines_from_xml(virtual_machine_xml,cloud_service_name)
      virtual_machine.vm_name.must_equal 'instance-name'
      virtual_machine.role_size.must_equal 'Small'
      virtual_machine.hostname.must_equal 'host-name'
      virtual_machine.cloud_service_name.must_equal 'cloud-service-1'
      virtual_machine.deployment_name.must_equal 'deployment-name'
      virtual_machine.ipaddress.must_equal '137.116.17.187'
    end

    it "returns a virtual_machine, with it's tcp_endpoints attribute" do
      virtual_machine = subject.virtual_machines_from_xml(virtual_machine_xml,cloud_service_name)
      virtual_machine.tcp_endpoints.must_be_kind_of Array
      virtual_machine.tcp_endpoints.must_include({"Name"=>"SSH", "Vip"=>"137.116.17.187", "PublicPort"=>"22", "LocalPort"=>"22"})
      virtual_machine.tcp_endpoints.must_include({"Name"=>"tcp-port-80", "Vip"=>"137.116.17.187", "PublicPort"=>"80", "LocalPort"=>"80"})
      virtual_machine.tcp_endpoints.must_include({"Name"=>"tcp-port-3889", "Vip"=>"137.116.17.187", "PublicPort"=>"3889", "LocalPort"=>"3889"})
    end

  end

  describe "#shutdown_virtual_machine_to_xml" do

    it "returns an xml for virtual machine shutdown" do
      result = subject.shutdown_virtual_machine_to_xml
      result.must_be_kind_of String
      doc = Nokogiri::XML(result)
      doc.css('OperationType').text.must_equal 'ShutdownRoleOperation'
      doc.css('PostShutdownAction').text.must_equal 'StoppedDeallocated'
    end

  end

  describe "#start_virtual_machine_to_xml" do

    it "returns an xml for start virtual machine" do
      result = subject.start_virtual_machine_to_xml
      result.must_be_kind_of String
      doc = Nokogiri::XML(result)
      doc.css('OperationType').text.must_equal 'StartRoleOperation'
    end

  end

  describe "#deployment_to_xml" do
    let(:params){
      {
        :vm_name => 'virtual-machine-name',
        :vm_user => 'username',
        :image => 'linux_image',
        :password => 'password',
        :location => 'West US'
      }
    }

    let(:options) {
      {
        :storage_account_name => 'storageaccountname',
        :cloud_service_name => 'cloud-service-name',
        :tcp_endpoints => '80,3389:3390,85:85'
      }
    }

    it "returns an VirtualMachine object with correct tcp endpoints" do
      result = subject.deployment_to_xml params, options
      doc = Nokogiri::XML(result)
      endpoints = doc.css('Deployment RoleList ConfigurationSet InputEndpoints InputEndpoint')
      tcp_endpoints = []
      endpoints.each do |endpoint|
        hash = Hash.new
        hash['Name'] = xml_content(endpoint, 'Name')
        hash['PublicPort'] = xml_content(endpoint, 'Port')
        hash['LocalPort'] = xml_content(endpoint, 'LocalPort')
        tcp_endpoints << hash
      end
      result.must_be_kind_of String
      tcp_endpoints.must_include({"Name"=>"TCP-PORT-80", "PublicPort"=>"80", "LocalPort"=>"80"})
      tcp_endpoints.must_include({"Name"=>"TCP-PORT-3390", "PublicPort"=>"3390", "LocalPort"=>"3389"})
      tcp_endpoints.must_include({"Name"=>"TCP-PORT-85", "PublicPort"=>"85", "LocalPort"=>"85"})
    end

  end

end
