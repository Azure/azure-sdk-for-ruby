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
    class EmptyRuleAction < Action
      # Public: Initialize the empty rule action.
      #
      # ==== Attributes
      #
      # * +hash+   - The resource options Hash
      def initialize(hash=nil)
        super()
      end
    end
  end
end