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

describe Azure::StorageManagement::Serialization do
  subject { Azure::StorageManagement::Serialization }

  let(:storage_services_from_xml) { Fixtures["list_storage_accounts"] }

  describe "#storage_services_from_xml" do

    it "accepts an XML string" do
      subject.storage_services_from_xml Nokogiri::XML(storage_services_from_xml)
    end

    it "returns an Array of StorageService instances" do
      results = subject.storage_services_from_xml Nokogiri::XML(storage_services_from_xml)
      results.must_be_kind_of Array
      results[0].must_be_kind_of Azure::StorageManagement::StorageAccount
      results.count.must_equal 2
    end
  end

  describe "#storage_services_to_xml" do
    let(:storage_service_name) {'storage-service'}

    it "accepts an name and options hash" do
      subject.storage_services_to_xml storage_service_name
    end

    it "serializes the argument to xml" do
      results = subject.storage_services_to_xml(storage_service_name, :location => "West US")
      doc = Nokogiri::XML results
      doc.css('ServiceName').text.must_equal storage_service_name
      doc.css('Location').text.must_equal "West US"
      results.must_be_kind_of String
    end

    it "serializes the options hash to xml" do
      results = subject.storage_services_to_xml(storage_service_name, {:location => 'East US'})
      doc = Nokogiri::XML results
      doc.css('Location').text.must_equal 'East US'
      results.must_be_kind_of String
    end

  end
end