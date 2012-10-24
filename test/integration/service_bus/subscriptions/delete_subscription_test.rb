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

# describe "Deleting a subscription" do
#   before do
#     @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
#   end

#   after do
#     ServiceBusTopicNameHelper.clean
#   end

#   it "freezes the subscription if successful" do
#     subscription = @topic.subscriptions.create("subscription-name")
#     result = subscription.delete
#     result.must_equal true
#     assert subscription.frozen?
#     assert subscription.valid?
#   end

#   it "invalidates the subscription if unsuccessful" do
#     subscription = Azure::ServiceBus::Subscriptions::Subscription.new("nonexistent") do |sub|
#       sub.topic = @topic
#     end

#     result = subscription.delete
#     result.must_equal false
#     refute subscription.frozen?
#     refute subscription.valid?
#   end
# end
