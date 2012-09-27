#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
require 'happymapper'
require 'azure/entity/service/logging'
require 'azure/entity/service/metrics'

module Azure
  module Entity
    module Service
      class StorageServiceProperties
        include HappyMapper
        
        tag "StorageServiceProperties"

        has_one :logging, Logging, :tag => "Logging"
        has_one :metrics, Metrics, :tag => "Metrics"

        element :default_service_version, String, :tag => "DefaultServiceVersion"
      end
    end
  end
end