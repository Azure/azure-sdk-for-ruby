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
require 'azure/entity/enumeration_results'

module Azure
  module Entity
    module Blob
      class BlobEnumerationResults < EnumerationResults

        def initialize
          @blobs = []
          @blob_prefixes = []
        end

        attr_accessor :delimiter
        attr_accessor :container_name
        attr_accessor :blob_prefixes
        attr_accessor :blobs
      end
    end
  end
end