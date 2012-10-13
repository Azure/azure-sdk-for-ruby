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

# describe "Listing Subscription" do
#   before do
#     @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
#   end

#   after do
#     ServiceBusTopicNameHelper.clean
#   end

#   it "returns an empty collection when there are no subscriptions" do
#     @topic.subscriptions.must_be_empty
#   end

#   it "returns the subscriptions when there are any" do
#     sub_1 = @topic.subscriptions.create("subscription-1")
#     sub_2 = @topic.subscriptions.create("subscription-2")

#     @topic.subscriptions.must_include(sub_1)
#     @topic.subscriptions.must_include(sub_2)
#   end
# end
