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
    class CloudService
      def initialize
        yield self if block_given?
      end

      attr_accessor :url
      attr_accessor :name
      attr_accessor :label
      attr_accessor :description
      attr_accessor :location
      attr_accessor :affinity_group
      attr_accessor :status
      attr_accessor :date_created
      attr_accessor :date_modified
      attr_accessor :extended_properties
      attr_accessor :default_winrm_certificate_thumbprint
      attr_accessor :virtual_machines
      attr_accessor :deployment_name
    end
  end
end
