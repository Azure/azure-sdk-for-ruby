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
module Azure
  module Storage
    module Blob
      class BlobProperties
        def initialize
            yield self if block_given?
        end
        
        attr_accessor :last_modified
        attr_accessor :etag
        attr_accessor :content_length
        attr_accessor :content_type
        attr_accessor :content_encoding
        attr_accessor :content_language
        attr_accessor :content_md5
        attr_accessor :cache_control
        attr_accessor :sequence_number
        attr_accessor :blob_type
        attr_accessor :lease_status
        attr_accessor :lease_state
        attr_accessor :lease_duration
        attr_accessor :copy_id
        attr_accessor :copy_status
        attr_accessor :copy_source
        attr_accessor :copy_progress
        attr_accessor :copy_completion_time
        attr_accessor :copy_status_description
        attr_accessor :accept_ranges
      end
    end
  end
end