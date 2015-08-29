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
require "integration/test_helper"
require "azure/queue/queue_service"

describe Azure::Queue::QueueService do
  subject { Azure::Queue::QueueService.new }
  describe '#set/get_queue_metadata' do
    let(:queue_name){ QueueNameHelper.name }
    before { 
      subject.create_queue queue_name 
      subject.create_message queue_name, "some random text " + QueueNameHelper.name
    }
    after { QueueNameHelper.clean }  

    it 'can set and retrieve queue metadata' do
      result = subject.set_queue_metadata queue_name, {"CustomMetadataProperty" => "Custom Metadata Value"}
      result.must_be_nil
      
      message_count, metadata = subject.get_queue_metadata queue_name
      message_count.must_equal 1

      # note: case insensitive! even though it was sent in mixed case, it will be returned in downcase
      metadata.must_include "custommetadataproperty"
      metadata["custommetadataproperty"].must_equal "Custom Metadata Value"
    end
  end
end
