#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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

module Azure
  module CloudServiceManagement
    class RoleInstance
      def initialize
        yield self if block_given?
      end

      attr_accessor :role_name
      attr_accessor :instance_name
      attr_accessor :instance_status
      attr_accessor :instance_upgrade_domain
      attr_accessor :instance_fault_domain
      attr_accessor :instance_size
      attr_accessor :instance_state_details
      attr_accessor :ip_address
      attr_accessor :instance_endpoints
      attr_accessor :power_state

      def is_running
        return !instance_status.nil? && instance_status.casecmp("readyrole") == 0
      end
      
    end
  end
end