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

# describe "Deleting a Topic" do

#   after do
#     ServiceBusTopicNameHelper.clean
#   end

#   it "should return false if the topic cannot be deleted" do
#     topic = Azure::ServiceBus::Topics::Topic.new(ServiceBusTopicNameHelper.name)
#     response = topic.delete

#     response.must_equal false
#     refute topic.valid?
#     refute topic.frozen?
#   end

#   it "should return true if the topic can be deleted" do
#     topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
#     response = topic.delete

#     response.must_equal true
#     assert topic.frozen?
#   end
# end
