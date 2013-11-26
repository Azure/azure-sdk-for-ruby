#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
require "integration/test_helper"
require "azure/table/table_service"
require "azure/core/http/http_error"

describe Azure::Table::TableService do 
  describe "#get/set_acl" do
    subject { Azure::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }
    let(:signed_identifier) { 
      identifier = Azure::Service::SignedIdentifier.new 
      identifier.id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI="
      identifier.access_policy = Azure::Service::AccessPolicy.new
      identifier.access_policy.start = "2009-09-28T08:49:37.0000000Z"
      identifier.access_policy.expiry = "2009-09-29T08:49:37.0000000Z"
      identifier.access_policy.permission = "raud"
      identifier
    }

    before { 
      subject.create_table table_name
    }
    after { TableNameHelper.clean }

    it "sets and gets the ACL for a table" do
      subject.set_table_acl(table_name, { :signed_identifiers => [ signed_identifier ] })

      result = subject.get_table_acl table_name
      result.must_be_kind_of Array

      result.wont_be_empty
      result.last.must_be_kind_of Azure::Service::SignedIdentifier
      result.last.id.must_equal signed_identifier.id
      result.last.access_policy.start.must_equal signed_identifier.access_policy.start
      result.last.access_policy.expiry.must_equal signed_identifier.access_policy.expiry
      result.last.access_policy.permission.must_equal signed_identifier.access_policy.permission
    end
  end
end