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
require "azure/core/http/http_error"

describe Azure::Queue::QueueService do
  subject { Azure::Queue::QueueService.new }
  
  describe '#create_queue' do
    let(:queue_name){ QueueNameHelper.name }
    let(:metadata){ {"custommetadata" => "CustomMetadataValue"} }
    after { QueueNameHelper.clean }

    it "creates a queue with a valid name" do
      result = subject.create_queue queue_name
      result.must_be_nil
    end

    it "creates a queue with a valid name and metadata" do
      result = subject.create_queue queue_name, { :metadata => metadata }
      result.must_be_nil

      message_count, queue_metadata = subject.get_queue_metadata queue_name

      metadata.each { |k,v|
        queue_metadata.must_include k
        queue_metadata[k].must_equal v
      }
    end

    it "errors on an invalid queue name" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_queue "this_queue.cannot-exist!"
      end
    end
  end
end
