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

#   it "should be able to get a queue by name" do
#     queue_name = ServiceBusQueueNameHelper.name
#     queue = Azure::ServiceBus::Queues.create(queue_name)

#     result = Azure::ServiceBus::Queues.get(queue_name)

#     result.must_equal queue
#   end

#   it "if the queue doesn't exists I should get a list of links to immediate child nodes" do
#     result = Azure::ServiceBus::Queues.get('inexistent')

#     result.must_be_nil
#   end
# end
