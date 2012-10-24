#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require "azure/storage/table/table_service"
require "azure/core/http/http_error"

describe Azure::Storage::Table::TableService do
  describe "#delete_entity" do
    subject { Azure::Storage::Table::TableService.new }
    let(:table_name){ TableNameHelper.name }

    let(:partition){ "testingpartition" }
    let(:row_key){ "abcd123" }
    let(:entity_properties){ 
      { 
        "CustomStringProperty" => "CustomPropertyValue",
        "CustomIntegerProperty" => 37,
        "CustomBooleanProperty" => true,
        "CustomDateProperty" => Time.now
      }
    }

    before { 
      subject.create_table table_name
      subject.insert_entity table_name, partition, row_key, entity_properties
    }
    after { TableNameHelper.clean }

    it "deletes an entity" do 
      assert subject.delete_entity table_name, partition, row_key
    end

    it "errors on an invalid table name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_entity "this_table.cannot-exist!", partition, row_key
      end
    end

    it "errors on an invalid partition key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_entity table_name, "this_partition/key#is_invalid", row_key
      end
    end

    it "errors on an invalid row key" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_entity table_name, partition, "thisrow/key#is_invalid"
      end
    end
  end
end