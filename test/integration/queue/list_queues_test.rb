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
require "integration/test_helper"
require "azure/queue/queue_service"

describe Azure::Queue::QueueService do
  subject { Azure::Queue::QueueService.new }

  describe '#list_queues' do
    let(:queue_names){ [QueueNameHelper.name, QueueNameHelper.name] }
    before { queue_names.each { |q| subject.create_queue q } }
    after { QueueNameHelper.clean }
    
    it 'lists the available queues' do
      result = subject.list_queues

      expected_queues = 0
      result.queues.each { |q|
        q.name.wont_be_nil
        q.url.wont_be_nil

        expected_queues += 1 if queue_names.include? q.name
      }

      expected_queues.must_equal queue_names.length
    end
  end
end
