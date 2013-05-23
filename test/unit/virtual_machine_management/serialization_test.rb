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
  subject {  Azure::VirtualMachineManagement::Serialization }

  let(:virtual_machine_xml) { Nokogiri::XML(Fixtures["virtual_machine"]) }
  let(:cloud_service_name) { 'cloud-service-1' }

  describe "#virtual_machines_from_xml" do

    it "accepts an XML string" do
      subject.virtual_machines_from_xml(virtual_machine_xml,cloud_service_name)
    end

    it "returns an Array of StorageService instances" do
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

end
