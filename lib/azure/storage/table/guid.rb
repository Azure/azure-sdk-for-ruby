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
require "delegate"

module Azure
  module Storage
    module Table
      # Public: Wrapper around a string to represent a GUID
      #
      # Example
      #
      #   entity = Azure::Tables::Entity.new(
      #     "PartitionKey" => "part1",
      #     "RowKey"       => "row1",
      #     "Id"           => Azure::Storage::Table::GUID.new("81425519-6394-43e4-ac6e-28d91f5c3921")
      #   )
      class GUID < SimpleDelegator
      end
    end
  end
end