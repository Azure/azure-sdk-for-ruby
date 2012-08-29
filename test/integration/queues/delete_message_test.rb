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

describe "Delete Messages" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
    @queue << "some sample text"
  end

  it "should be able to delete a message from the queue" do
    message = @queue.pop
    response = message.delete
    response.must_equal true
    assert message.frozen?
  end

  describe "Invalid delete operations" do
    it "shouldn't be able to delete an expired message" do
      skip "Docs say so but in fact this test it's not passing as of now"

      Azure::Queues::Message.new("some sample text") do |message|
        message.ttl = 1
      end

      message = @queue.pop
      sleep 1

      response = message.delete
      response.must_equal false
    end

    it "shouldn't be able to delete an already deleted message" do
      message = @queue.pop
      message.delete

      proc { message.delete }.must_raise RuntimeError
    end
  end
end
