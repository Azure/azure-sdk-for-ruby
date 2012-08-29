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
require "integration/test_helper"

describe "Clear Messages" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
  end

  it "should be able to delete all messages from the queue" do
    @queue << "message 1"
    @queue << "message 2"

    result = @queue.clear
    result.must_equal true

    messages = @queue.get(5)
    messages.must_be_empty
  end
end
