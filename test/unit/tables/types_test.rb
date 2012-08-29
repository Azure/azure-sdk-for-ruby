#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
require "azure/tables/types"

describe Azure::Tables::Types do
  subject do
    Azure::Tables::Types
  end

  describe ".type_of" do
    def self.returns_type_for(type, value)
      it "returns #{type} for #{value.inspect}" do
        subject.type_of(value).must_equal type
      end
    end

    returns_type_for "Edm.Double",   2.2

    returns_type_for "Edm.Int32",    10
    returns_type_for "Edm.Int32",    2147483647
    returns_type_for "Edm.Int32",    -2147483647
    returns_type_for "Edm.Int64",    2147483648
    returns_type_for "Edm.Int64",    -2147483648

    returns_type_for "Edm.String",   "test"

    returns_type_for "Edm.DateTime", Time.now
    returns_type_for "Edm.DateTime", Time.now.to_date
    returns_type_for "Edm.DateTime", Time.now.to_datetime

    returns_type_for "Edm.Boolean",  true
    returns_type_for "Edm.Boolean",  false

    returns_type_for "Edm.Guid",     Azure::Tables::GUID.new("guid")
  end

  describe ".cast" do
    def self.casts_from_type(value, type, result)
      it "converts #{value.inspect} (as #{type}) to #{result.inspect}" do
        subject.cast(value, type).must_equal result
      end
    end

    casts_from_type "2.2", "Edm.Double", 2.2

    casts_from_type "10",          "Edm.Int32", 10
    casts_from_type "2147483647",  "Edm.Int32", 2147483647
    casts_from_type "-2147483647", "Edm.Int32", -2147483647
    casts_from_type "2147483648",  "Edm.Int64", 2147483648
    casts_from_type "-2147483648", "Edm.Int64", -2147483648

    casts_from_type "test", "Edm.String", "test"
    casts_from_type "test", nil,          "test"

    casts_from_type "18:00",             "Edm.DateTime", Time.parse("18:00")
    casts_from_type "2012-10-10",        "Edm.DateTime", Time.parse("2012-10-10")
    casts_from_type "2012-10-10T18:00Z", "Edm.DateTime", Time.parse("2012-10-10T18:00Z")

    casts_from_type "true",  "Edm.Boolean",  true
    casts_from_type "True",  "Edm.Boolean",  true
    casts_from_type "TRUE",  "Edm.Boolean",  true
    casts_from_type "false", "Edm.Boolean",  false
    casts_from_type "False", "Edm.Boolean",  false
    casts_from_type "FALSE", "Edm.Boolean",  false

    casts_from_type "guid", "Edm.Guid", Azure::Tables::GUID.new("guid")
  end
end
