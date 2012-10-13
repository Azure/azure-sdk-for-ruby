# #-------------------------------------------------------------------------
# # Copyright (c) Microsoft. All rights reserved.
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

# describe "Unlock a Message from a Queue" do

#   after do
#     ServiceBusQueueNameHelper.clean
#   end

#   before do
#     @queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
#   end

#   it "should be able to unlock a message from a queue" do
#     message = Azure::ServiceBus::BrokeredMessage.new("some text") do |m|
#       m.to = "me"
#     end
#     Azure::ServiceBus::Queues.send_message_to_queue(@queue, message)

#     retrieved = Azure::ServiceBus::Queues.peek_lock_message_from_queue(@queue)

#     # There shouldn't be an available message in the queue
#     retrieved2 = Azure::ServiceBus::Queues.peek_lock_message_from_queue(@queue)
#     refute retrieved2.valid?
#     retrieved2.error.message.must_equal "No messages available within the specified timeout period."

#     # Unlock the message
#     res = Azure::ServiceBus::Queues.unlock_message_from_queue(@queue, retrieved)
#     res.must_equal true

#     # The message should be available once again
#     retrieved = Azure::ServiceBus::Queues.peek_lock_message_from_queue(@queue)
#     retrieved.body.must_equal message.body
#   end
# end
