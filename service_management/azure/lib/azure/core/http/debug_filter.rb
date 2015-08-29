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
require "azure/core/http/http_filter"

module Azure
  module Core
    module Http
      # A HttpFilter implementation that displays information about the request and response for debugging
      class DebugFilter < HttpFilter
        def call(req, _next)
          puts "--REQUEST-BEGIN---------------------------"
          puts "method:", req.method, "uri:", req.uri, "headers:", req.headers, "body:", req.body
          puts "--REQUEST-END---------------------------"

          r = _next.call
          puts "--RESPONSE-BEGIN---------------------------"
          puts "status_code:", r.status_code, "headers:", r.headers, "body:", r.body
          puts "--RESPONSE-END---------------------------"
          r
        end
      end
    end
  end
end