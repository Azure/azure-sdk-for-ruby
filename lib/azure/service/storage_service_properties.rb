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
require 'azure/service/logging'
require 'azure/service/metrics'
require 'azure/service/cors'

module Azure
  module Service
    class StorageServiceProperties
      def initialize
        @logging = Logging.new
        @hour_metrics = Metrics.new
        @minute_metrics = Metrics.new
        @cors = Cors.new
        yield self if block_given?
      end

      attr_accessor :logging
      attr_accessor :hour_metrics
      attr_accessor :minute_metrics
      attr_accessor :cors
      attr_accessor :default_service_version
    end
  end
end
