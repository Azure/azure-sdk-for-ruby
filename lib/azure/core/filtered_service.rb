#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require 'azure/core/service'

module Azure
  module Core
    # A base class for Service implementations
    class FilteredService < Service

      # Create a new instance of the FilteredService
      # 
      # host            - String. The hostname. (optional, Default empty)
      def initialize(host='')
        super(host)
        @filters = []
      end

      attr_accessor :filters

      def call(method, uri, body=nil, headers=nil)
        super(method, uri, body, headers) do |request|
          filters.each { |filter| request.with_filter filter } if filters
        end
      end

      def with_filter(filter=nil, &block)
        filter = filter || block
        filters.push filter if filter
      end
    end
  end
end