# #-------------------------------------------------------------------------
# # Copyright 2012 Microsoft Corporation
# #
# # Licensed under the Apache License, Version 2.0 (the "License");
# # you may not use this file except in compliance with the License.
# # You may obtain a copy of the License at
# #   http://www.apache.org/licenses/LICENSE-2.0
# #
# # Unless required by applicable law or agreed to in writing, software
# # distributed under the License is distributed on an "AS IS" BASIS,
# # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# # See the License for the specific language governing permissions and
# # limitations under the License.
# #--------------------------------------------------------------------------
# require "integration/test_helper"

# describe "Deleting a Queue" do

#   after do
#     ServiceBusQueueNameHelper.clean
#   end

#   it "should return false if the queue cannot be deleted" do
#     queue = Azure::ServiceBus::Queues::Queue.new(ServiceBusQueueNameHelper.name)
#     response = queue.delete

#     response.must_equal false
#     refute queue.valid?
#     refute queue.frozen?
#   end

#   it "should return true if the queue can be deleted" do
#     queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
#     response = queue.delete

#     response.must_equal true
#     assert queue.frozen?
#   end
# end
