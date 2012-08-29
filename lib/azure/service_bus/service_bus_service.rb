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
require "azure/core/service"

module Azure
  module ServiceBus
    class ServiceBusService < Core::Service
      def initialize(signer=Azure::ServiceBus::Auth::Wrap.new)
        super(signer, Azure::ServiceBus::Auth::Authorizer.new)
      end

      def call(method, uri, body=nil)
        super(method, uri, body) do |request|
          request.headers.delete("x-ms-date")
          request.headers.delete("x-ms-version")
          request.headers.delete("DataServiceVersion")
          request.headers.delete("MaxDataServiceVersion")

          yield request if block_given?
        end
      end
    end
  end
end
