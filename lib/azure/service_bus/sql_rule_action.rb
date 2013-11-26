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
require 'azure/service_bus/action'

module Azure
  module ServiceBus
    class SqlRuleAction < Action

      # Public: Initialize the SQL Rule Action.
      #
      # ==== Attributes
      #
      # * +hash+   - The resource options Hash
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:sql_expression+                                 - The SQL expression.
      # * +:compatibility_level+                            - The compatibility level.
      #
      def initialize(hash=nil)
        hash = {} unless hash
        @sql_expression = hash[:sql_expression]
        @compatibility_level = (hash[:compatibility_level] || 20).to_i
        super()
      end

      attr_accessor :sql_expression 
      attr_accessor :compatibility_level 
      
      def to_hash(hash={})
        hash[:sql_expression]=sql_expression if sql_expression
        hash[:compatibility_level]=compatibility_level.to_s if compatibility_level
        super(hash)
      end
    end
  end
end
