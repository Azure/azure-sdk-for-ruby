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
require "time"
require "date"
require "delegate"

module Azure
  module Tables
    module Types
      # Public: Get the type of an object.
      #
      # value - An Object.
      #
      # Returns a String.
      def self.type_of(value)
        case value
        when Float
          "Edm.Double"
        when Date, Time, DateTime
          "Edm.DateTime"
        when Integer
          value.abs < 2**31 ? "Edm.Int32" : "Edm.Int64"
        when TrueClass, FalseClass
          "Edm.Boolean"
        when GUID
          "Edm.Guid"
        else
          "Edm.String"
        end
      end

      # Public: Convert a raw value (as a String) into an object of the proper
      # type.
      #
      # value - A String serialization of an object.
      # type  - A String with the Edm datatype.
      #
      # Returns an Object.
      def self.cast(serialized, type)
        case type
        when "Edm.Double"
          Float(serialized)
        when "Edm.DateTime"
          Time.parse(serialized)
        when "Edm.Int32", "Edm.Int64"
          Integer(serialized)
        when "Edm.Boolean"
          /true/i === serialized
        when "Edm.Guid"
          GUID.new(serialized.to_s)
        else
          serialized.to_s
        end
      end
    end

    # Public: Wrapper around strings to represent GUIDs in the Azure Platform.
    #
    # Example
    #
    #   entity = Azure::Tables::Entity.new(
    #     "PartitionKey" => "part1",
    #     "RowKey"       => "row1",
    #     "Id"           => Azure::Tables::GUID.new("123456-123123123-123123")
    #   )
    class GUID < SimpleDelegator
    end
  end
end
