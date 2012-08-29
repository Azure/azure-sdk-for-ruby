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

describe "Create queues" do
  after do
    QueueNameHelper.clean
  end

  it "should be able to create a new queue" do
    queue = Azure::Queues.create(QueueNameHelper.name)
    queue.must_be_kind_of Azure::Queues::Queue
    assert queue.valid?, "must be valid"
  end
end
