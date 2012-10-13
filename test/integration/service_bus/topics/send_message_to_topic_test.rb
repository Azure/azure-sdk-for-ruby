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
# require "azure/service_bus/topics"
# require "azure/service_bus/brokered_message"

# describe "Sending a Message to a Topic" do

#   after do
#     ServiceBusTopicNameHelper.clean
#   end

#   before do
#     @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
#   end

#   it "should be able to send a message to a topic" do
#     message = Azure::ServiceBus::BrokeredMessage.new("some text", :prop1 => "val1") do |m|
#       m.to = "me"
#       m.label = 'my_label'
#     end
#     res = Azure::ServiceBus::Topics.send_message_to_topic(@topic, message)
#     res.must_equal true
#   end
# end
