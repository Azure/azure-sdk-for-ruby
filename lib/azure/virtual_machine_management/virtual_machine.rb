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
  module VirtualMachineManagement
    class VirtualMachine
      def initialize
        yield self if block_given?
      end

      attr_accessor :cloud_service_name
      attr_accessor :status
      attr_accessor :ipaddress
      attr_accessor :vm_name
      attr_accessor :udp_endpoints
      attr_accessor :hostname
      attr_accessor :deployment_name
      attr_accessor :deployment_status
      attr_accessor :tcp_endpoints
      attr_accessor :role_size
      attr_accessor :image
      attr_accessor :os_type
      attr_accessor :disk_name
      attr_accessor :virtual_network_name
      attr_accessor :availability_set_name
      attr_accessor :media_link
      attr_accessor :data_disks
    end
  end
end
