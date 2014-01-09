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
  module StorageManagement
    # Represents a Windows Azure storage account
    class StorageAccount
      def initialize
        yield self if block_given?
      end
      attr_accessor :url
      attr_accessor :name
      attr_accessor :description
      attr_accessor :location
      attr_accessor :affinity_group
      attr_accessor :label
      attr_accessor :status
      attr_accessor :endpoints
      attr_accessor :geo_replication_enabled
      attr_accessor :geo_primary_region
      attr_accessor :status_of_primary
      attr_accessor :last_geo_failover_time
      attr_accessor :geo_secondary_region
      attr_accessor :status_of_secondary
      attr_accessor :creation_time
      attr_accessor :extended_properties
    end
  end
end
