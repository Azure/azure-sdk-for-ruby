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

# describe Azure::ServiceBus::Subscriptions::Subscription do
#   before do
#     @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
#     @subscription = @topic.subscriptions.create("mySubscription")
#   end

#   after do
#     ServiceBusTopicNameHelper.clean
#   end

#   it "should be able to create rules" do
#     rule = @subscription.create_rule("myRule")
#     rule.must_be :kind_of?, Azure::ServiceBus::Rules::Rule
#   end

#   it "should be able to list rules" do
#     @subscription.create_rule("myRule")
#     rules = @subscription.get_rules
#     rules.size.must_equal 2 # There is always a $Default Rule
#     rules.first.must_be :kind_of?, Azure::ServiceBus::Rules::Rule
#   end

#   it "should be able to get rules" do
#     @subscription.create_rule("myRule")
#     rule = @subscription.get_rule("myRule")
#     rule.must_be :kind_of?, Azure::ServiceBus::Rules::Rule
#     rule.name.must_equal "myRule"
#   end
# end
