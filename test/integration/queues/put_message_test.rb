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

describe "Create a Message" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
  end

  it "should be able to create a new message out of a string" do
    @queue << "some sample text"

    message = @queue.pop

    message.text.must_equal "some sample text"
    assert message.valid?, "must be valid"
  end

  it "should be able to create a new message" do
    @queue << "some sample text"

    message = @queue.pop

    message.text.must_equal "some sample text"
    assert message.valid?, "must be valid"
  end

  #TODO: tests for visibilitytimeout and messagesttl
end
