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
require 'azure/service_bus/sql_filter'

module Azure
  module ServiceBus
    class FalseFilter < SqlFilter
      # Public: Initialize the SQL false Filter.
      #
      # ==== Attributes
      #
      # * +hash+   - The resource options Hash
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:sql_expression+                                  - The SQL expression.
      #
      def initialize(hash=nil)
        hash = {} unless hash
        hash[:sql_expression] = "1 = 0" unless hash[:sql_expression]
        super(hash)
      end
    end
  end
end
