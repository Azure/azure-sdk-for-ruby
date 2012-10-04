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
module Azure
  module ServiceBus
    module Core
      # Public: Mixin that gives a few convenience methods for handling errors in
      # domain objects
      module ErrorHandler
        # Public: Get/Set the current error in this object
        attr_accessor :error

        # Public: Check if this object doesn't have any errors
        def valid?
          error.nil?
        end
      end
    end
  end
end
