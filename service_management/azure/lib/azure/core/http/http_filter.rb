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
module Azure
  module Core
    module Http
      # A filter which can modify the HTTP pipeline both before and
      # after requests/responses. Multiple filters can be nested in a
      # "Russian Doll" model to create a compound HTTP pipeline
      class HttpFilter

        # Initialize a HttpFilter
        #
        # &block - An inline block which implements the filter.
        #
        # The inline block should take parameters |request, _next| where
        # request is a HttpRequest and _next is an object that implements
        # a method .call which returns an HttpResponse. The block passed
        # to the constructor should also return HttpResponse, either as
        # the result of calling _next.call or by customized logic.
        #
        def initialize(&block)
          @block = block
        end

        # Executes the filter
        #
        # request - HttpRequest. The request
        # _next   - An object that implements .call (no params)
        #
        # NOTE: _next is a either a subsequent HttpFilter wrapped in a
        # closure, or the HttpRequest object's call method. Either way,
        # it must have it's .call method executed within each filter to
        #  complete the pipeline. _next.call should return an HttpResponse
        # and so should this Filter.
        def call(request, _next)
          @block ? @block.call(request, _next) : _next.call
        end
      end
    end
  end
end