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
    class Deployment
      def initialize
        yield self if block_given?
      end

      attr_accessor :name
      attr_accessor :deployment_slot
      attr_accessor :private_id
      attr_accessor :status
      attr_accessor :label
      attr_accessor :url
      attr_accessor :configuration
      attr_accessor :role_instances
      attr_accessor :upgrade_domain_count
      attr_accessor :roles
      attr_accessor :sdk_version
      attr_accessor :locked
      attr_accessor :rollback_allowed
      attr_accessor :created_time
      attr_accessor :last_modified_time
      attr_accessor :extended_properties
      attr_accessor :persistent_vm_downtime
      attr_accessor :virtual_ips

      def all_vms_running
        if role_instances.nil? || role_instances.empty?
          return false
        else
          return role_instances.all? { |vm| vm.is_running }
        end
      end

      def is_transitioning?
        return status.casecmp("runningtransitioning") == 0
      end

      def exists?
        return !deployment_slot.nil? && !name.nil? && !deployment_slot.empty? && !name.empty?
      end
      
      private 
        def validate_vms
          raise IndexError, "Deployment #{private_id} does not have any VM associated with it" if (role_instances.nil? || role_instances.empty?)
        end
    end
  end
end