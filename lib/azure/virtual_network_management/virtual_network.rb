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
  module VirtualNetworkManagement
    # Represents a Virtual Network
    class VirtualNetwork
      def initialize
        yield self if block_given?
        @address_space = []
        @subnets = []
        @dns_servers = []
      end

      attr_accessor :name
      attr_accessor :state
      attr_accessor :id
      attr_accessor :address_space
      attr_accessor :subnets
      attr_accessor :dns_servers
      attr_accessor :affinity_group
    end
  end
end
