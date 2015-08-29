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
require 'azure/service_bus/resource'
require 'azure/service_bus/rule_aspect'

require 'azure/service_bus/sql_filter'
require 'azure/service_bus/true_filter'
require 'azure/service_bus/false_filter'
require 'azure/service_bus/correlation_filter'

require 'azure/service_bus/sql_rule_action'
require 'azure/service_bus/empty_rule_action'

module Azure
  module ServiceBus
    class Rule < Resource

      attr_accessor :topic
      attr_accessor :subscription

      # Public: Initialize the rule.
      #
      # ==== Attributes
      #
      # * +name+      - A String with the name of the rule.
      # * +options+   - The resource options Hash
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:filter+                               - String. The rule filter.
      # * +:action+                               - String. The rule action.
      #
      def initialize(name, options = {})
        normalized_options = {}
        normalized_options["Filter"] = options[:filter] if options.has_key?(:filter)
        normalized_options["Action"] = options[:action] if options.has_key?(:action)

        super(name, normalized_options)
      end

      # Filter: SqlFilter, TrueFilter /FalseFiilter, CorrelationFilter
      #
      # The Filter property references an instance of Filter that is evaluated against a message. The following types of
      # filters are provided:
      #
      #   SqlFilter - A type of Filter that is represented by SQL expression. For detailed information about SqlFilter
      #               syntax, see SqlFilter.SqlExpression Property.
      #
      #   TrueFilter/FalseFiilter - A handy shortcut for always returning true or false. They are a type of SqlFilter.
      # 
      #   CorrelationFilter: A type of Filter that matches CorrelationId property of BrokeredMessage.
      def filter
        RuleAspect.from_hash(description['Filter'])
      end

      def filter=(val)
        description['Filter'] = val.to_hash
      end

      # Action: String
      #
      # The Action property references an instance of FilterAction. The following type of FilterAction are provided.
      # Default is an instance of EmptyRuleAction.
      #
      #   SqlFilterAction - A type of FilterAction that is represented by SQL expression. For detailed information about
      #                     SqlFilterAction syntax, see SqlRuleAction.SqlExpression Property.
      #
      #   EmptyRuleAction - A type of FilterAction that represents an empty action.
      def action
        RuleAspect.from_hash(description['Action'])
      end

      def action=(val)
        description['Action'] = val.to_hash
      end

      def ordered_props
        [
          'Filter',
          'Action'
        ]
      end
    end
  end
end