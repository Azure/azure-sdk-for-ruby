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
# require "azure/service_bus/queues"
# require "azure/service_bus/brokered_message"

# describe "Sending a Message to a Queue" do

#   after do
#     ServiceBusQueueNameHelper.clean
#   end

#   before do
#     @queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
#   end

#   it "should be able to send a message to a queue" do
#     message = Azure::ServiceBus::BrokeredMessage.new("some text") do |m|
#       m.to = "yo"
#     end
#     res = Azure::ServiceBus::Queues.send_message_to_queue(@queue, message)
#     res.must_equal true
#   end
# end
