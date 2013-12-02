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
require "test_helper"
require "azure/table/edmtype"

require "azure/table/guid"

describe Azure::Table::EdmType do
  describe "#serialize_query_value" do
    it "correctly serializes int64 query values" do
      value = 2**128 + 1256231
      serializedValue = Azure::Table::EdmType.serialize_query_value(value)
      serializedValue.must_equal value.to_s + "L"
    end

    it "correctly serializes int32 query values" do
      value = 2
      serializedValue = Azure::Table::EdmType.serialize_query_value(value)
      serializedValue.must_equal "2"
    end

    it "correctly serializes datetime query values" do
      value = DateTime.new(2001,2,3,4,5,6)
      serializedValue = Azure::Table::EdmType.serialize_query_value(value)
      serializedValue.must_equal "datetime'2001-02-03T04:05:06+00:00'"
    end

    it "correctly serializes guid query values" do
      value = Azure::Table::GUID.new("81425519-6394-43e4-ac6e-28d91f5c3921")
      serializedValue = Azure::Table::EdmType.serialize_query_value(value)
      serializedValue.must_equal "guid'81425519-6394-43e4-ac6e-28d91f5c3921'"
    end

    it "correctly serializes float query values" do
      value = 1.2
      serializedValue = Azure::Table::EdmType.serialize_query_value(value)
      serializedValue.must_equal "1.2"
    end

    it "correctly serializes string query values" do
      value = "string"
      serializedValue = Azure::Table::EdmType.serialize_query_value(value)
      serializedValue.must_equal "string"
    end

    it "correctly serializes binary query values" do
      value = "1".force_encoding("BINARY")
      serializedValue = Azure::Table::EdmType.serialize_query_value(value)
      serializedValue.must_equal "X'31'"
    end
  end

  describe "#unserialize_query_value" do
    it "correctly unserializes int64 query values" do
      value = "340282366920938463463374607431769467687"
      unserializedValue = Azure::Table::EdmType.unserialize_query_value(value, "Edm.Int64")
      unserializedValue.must_equal (2**128 + 1256231)
    end

    it "correctly unserializes int32 query values" do
      value = "2"
      unserializedValue = Azure::Table::EdmType.unserialize_query_value(value, "Edm.Int32")
      unserializedValue.must_equal 2
    end

    it "correctly unserializes datetime query values" do
      value = "2001-02-03T04:05:06+00:00"
      unserializedValue = Azure::Table::EdmType.unserialize_query_value(value, "Edm.DateTime")
      unserializedValue.must_equal Time.new(2001, 2, 3, 4, 5, 6, "+00:00")
    end

    it "correctly unserializes guid query values" do
      value = "81425519-6394-43e4-ac6e-28d91f5c3921"
      unserializedValue = Azure::Table::EdmType.unserialize_query_value(value, "Edm.Guid")
      unserializedValue.must_equal Azure::Table::GUID.new("81425519-6394-43e4-ac6e-28d91f5c3921")
    end

    it "correctly unserializes float query values" do
      value = "1.2"
      unserializedValue = Azure::Table::EdmType.unserialize_query_value(value, "Edm.Double")
      unserializedValue.must_equal 1.2
    end

    it "correctly unserializes string query values" do
      value = "string"
      unserializedValue = Azure::Table::EdmType.unserialize_query_value(value, "Edm.String")
      unserializedValue.must_equal "string"
    end

    it "correctly unserializes binary query values" do
      value = "MTIzNDU=".force_encoding("BINARY")
      unserializedValue = Azure::Table::EdmType.unserialize_query_value(value, "Edm.Binary")
      unserializedValue.must_equal "12345"
    end
  end
end