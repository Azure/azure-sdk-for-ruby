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

describe "Managing the queue's metadata" do
  after do
    QueueNameHelper.clean
  end

  it "sets metadata on queue creation (Azure changes the casing of metadata keys)" do
    Azure::Queues.create(
      QueueNameHelper.name,
      "UppercaseKey" => "U", "downcaseKey" => "D"
    )

    queue = Azure::Queues.all(:include => 'metadata').first

    queue.metadata["Uppercasekey"].must_equal "U"
    queue.metadata["Downcasekey"].must_equal "D"
  end

  it "#load_metadata! reloads the queue metadata" do
    queue = Azure::Queues.create(QueueNameHelper.name, "Key" => "Value")
    queue.metadata.must_be_empty

    queue.load_metadata!.wont_be_empty
    queue.metadata.wont_be_empty
  end

  it "saves the metadata in the server if you modify the metadata hash" do
    queue = Azure::Queues.create(QueueNameHelper.name)
    queue.metadata["Key"] = "Value"
    queue.save_metadata!

    loaded_queue = Azure::Queues.all(:include => 'metadata').first
    loaded_queue.metadata["Key"].must_equal "Value"
  end

  it "deletes all metadata when setting queue.metadata to an empty hash" do
    queue = Azure::Queues.create(QueueNameHelper.name, "Key" => "Value")
    queue.metadata = {}
    queue.save_metadata!

    loaded_queue = Azure::Queues.all(:include => 'metadata').first
    loaded_queue.metadata.must_be_empty
  end
end
