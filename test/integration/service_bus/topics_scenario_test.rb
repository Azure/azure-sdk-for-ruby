#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
# require "integration/test/service_bus/scenario_helper"

require "azure/service_bus/brokered_message"

describe "ServiceBus Topics Scenario" do
  let(:topic_name){ ServiceBusTopicNameHelper.name }
  let(:subscription_name1){ 'noRules' }
  let(:subscription_name2){ 'intRuleSub' }
  let(:subscription_name3){ 'strAndBoolRuleSub' }
  let(:subscription_name4){ 'tripleMsgRuleSub' }

  subject { Azure::ServiceBus::ServiceBusService.new }
  after { ServiceBusTopicNameHelper.clean }

  def setup_topic()
    topics = subject.list_topics({ :skip => 20, :top => 2 })
    topics.each { |t|
      ScenarioHelper.out "Topic name is " + t.title
    }

    ScenarioHelper.out "checking if topic already exists " + topic_name
    begin
      subject.get_topic topic_name
      ScenarioHelper.out "Topic already exists deleting it"
      subject.delete_topic topic_name
    rescue Azure::Core::Http::HTTPError => error
      ScenarioHelper.out "could not get an existing topic (" + error.type + "), proceeding..."
      error.status_code.must_equal 404
      error.type.must_equal "ResourceNotFound"
    end

    t = Azure::ServiceBus::Topic.new(topic_name, {
      :max_size_in_megabytes => 1024,
      :requires_duplicate_detection => true,
      :enable_batched_operations => true
    })
    t.max_size_in_megabytes.must_equal 1024
    t.requires_duplicate_detection.must_equal true
    t.enable_batched_operations.must_equal true

    ScenarioHelper.out 'Creating topic ' + topic_name
    t2 = subject.create_topic topic_name, {
      :max_size_in_megabytes => 1024,
      :requires_duplicate_detection => true,
      :enable_batched_operations => true
    }
    t2.max_size_in_megabytes.must_equal 1024
    t2.requires_duplicate_detection.must_equal true
    t2.enable_batched_operations.must_equal true

    success = false
    retry_counter = 0
    while !success &&  retry_counter < 5
      begin
        subject.get_topic topic_name
        success = true
      rescue error
        ScenarioHelper.out "got error: " + error
        retry_counter = retry_counter + 1
        if retry_counter > 5
          throw error
        end
      end
    end
  end

  def setup_subscriptions()
    s = Azure::ServiceBus::Subscription.new(subscription_name1, {
      :dead_lettering_on_filter_evaluation_exceptions => true,
      :dead_lettering_on_message_expiration => true,
      :enable_batched_operations => true,
      :max_delivery_count => 20,
      :requires_session => false
    })
    s.topic = topic_name

    s_prime = subject.create_subscription s
    s_prime.dead_lettering_on_filter_evaluation_exceptions.must_equal s.dead_lettering_on_filter_evaluation_exceptions
    s_prime.dead_lettering_on_message_expiration.must_equal s.dead_lettering_on_message_expiration
    s_prime.enable_batched_operations.must_equal s.enable_batched_operations
    s_prime.max_delivery_count.must_equal s.max_delivery_count
    s_prime.requires_session.must_equal s.requires_session

    s2 = subject.create_subscription topic_name, subscription_name2, {
      :dead_lettering_on_filter_evaluation_exceptions => true,
      :dead_lettering_on_message_expiration => true,
      :enable_batched_operations => true,
      :max_delivery_count => 20,
      :requires_session => false
    }
    s2.dead_lettering_on_filter_evaluation_exceptions.must_equal true
    s2.dead_lettering_on_message_expiration.must_equal true
    s2.enable_batched_operations.must_equal true
    s2.max_delivery_count.must_equal 20
    s2.requires_session.must_equal false

    subject.create_subscription topic_name, subscription_name3
    subject.create_subscription topic_name, subscription_name4

    show_subscriptions
  end

  def setup_rules()
    # See this topic for more information on what SQL filter strings are allowed:
    #  http://msdn.microsoft.com/en-us/library/microsoft.servicebus.messaging.sqlfilter.sqlexpression.aspx
    # See this topic for more information on what SQL action strings are allowed:
    #  http://msdn.microsoft.com/en-us/library/microsoft.servicebus.messaging.sqlruleaction.sqlexpression

    # subscription_name1 is left unchanged

    # subscription_name2 gets a rule that works on integers
    subject.delete_rule topic_name, subscription_name2, '$Default'
    rule2 = Azure::ServiceBus::Rule.new('intType')
    rule2.filter = Azure::ServiceBus::SqlFilter.new({
        :sql_expression => 'int < 53'
      })
    subject.create_rule topic_name, subscription_name2, rule2.name, rule2.description

    # subscription_name3 gets a rule that works on strings and booleans
    subject.delete_rule topic_name, subscription_name3, '$Default'
    rule3 = Azure::ServiceBus::Rule.new('strAndBoolRule')
    rule3.topic = topic_name;
    rule3.subscription = subscription_name3
    rule3.filter = Azure::ServiceBus::SqlFilter.new({
        :sql_expression => 'name LIKE \'%3\' OR user.even = TRUE'
      })
    subject.create_rule rule3

    # subscription_name4 gets two rules to enable duplicate messages
    lst = subject.list_rules topic_name, subscription_name4
    rule4a = lst[0]
    rule4a.action = Azure::ServiceBus::SqlRuleAction.new({
        :sql_expression => 'SET trueRuleA=TRUE; ' +
          'SET actionGuid=newid(); ' +
          'SET actionDouble=3.5; ' +
          'REMOVE int;'
      })
    subject.delete_rule rule4a
    subject.create_rule rule4a

    rule4b_title = 'trueRuleB'
    action = Azure::ServiceBus::SqlRuleAction.new({
        :sql_expression => 'SET trueRuleB=TRUE; ' +
          'SET actionString=\'hello\'; ' +
          # SQL uses '' to represent ' in strings.
          'SET actionStringSingleQuote=\'\'\'\'; ' +
          'SET actionStringDoubleQuote=\'"\'; ' +
          # ReverseSolidus is just \
          'SET actionStringReverseSolidus=\'\\\'; ' +
          'SET actionStringSlashN=\'' + "\n" + '\'; ' +
          'SET actionStringTab=\'' + "\t" + '\'; ' +
          'SET actionNull=null; ' +
          # "test" was originally a date, so this
          # string gets converted into a date.
          'SET test=\'1999-12-25\'; ' +
          # There was no "actionNewDate" defined
          # before, so this is a string.
          'SET actionNewDate=\'1999-12-25\'; ' +
          'REMOVE float;'
      })
    subject.create_rule topic_name, subscription_name4, rule4b_title, { "Action" => action.to_hash }

    show_subscriptions
  end

  def send_messages()
    expected_messages = []
    expected_messages[0] = ScenarioHelper.create_issue_message '1', 'First  message information', 'label1'
    expected_messages[1] = ScenarioHelper.create_issue_message '2', 'Second message information', 'label2'
    expected_messages[2] = ScenarioHelper.create_issue_message '3', 'Third  message information', 'label3'
    expected_messages[3] = ScenarioHelper.create_issue_message '4', 'Fourth message information', 'label4'
    expected_messages.each { |message|
      subject.send_topic_message topic_name, message
      ScenarioHelper.out 'Message sent with id: ' + message.message_id + ' Body of $message ' + message.body
    }
    ScenarioHelper.out "Sleeping for 10 seconds to let SB process the messages"
    sleep(10)
    expected_messages
  end

  def show_subscriptions()
    lst = subject.list_subscriptions topic_name
    lst.each { |item|
      show_rules item.title
    }
  end

  def show_rules(sub_name)
    ScenarioHelper.out 'Subscription: ' + sub_name
    lst = subject.list_rules topic_name, sub_name
    lst.each { |item|
      ScenarioHelper.out '  Rule: ' + item.title
      filter = item.filter
      ScenarioHelper.out '    Filter: ' + filter.class.to_s
      ScenarioHelper.out '      ' + filter.sql_expression
    }
  end

  def get_message_counts()
    topic = subject.get_topic topic_name
    topic.title.must_equal topic_name

    # Subscription 1
    subscription1 = subject.get_subscription topic_name, subscription_name1
    ScenarioHelper.out 'Subscription 1 message count: ' + subscription1.message_count.to_s
    subscription1.message_count.must_equal 4

    # Subscription 2
    subscription2 = subject.get_subscription topic_name, subscription_name2
    ScenarioHelper.out 'Subscription 2 message count ' + subscription2.message_count.to_s
    subscription2.message_count.must_equal 2

    # Subscription 3
    subscription3 = subject.get_subscription topic_name, subscription_name3
    ScenarioHelper.out 'Subscription 3 message count ' + subscription3.message_count.to_s
    subscription3.message_count.must_equal 3

    # Subscription 4
    subscription4 = subject.get_subscription topic_name, subscription_name4
    ScenarioHelper.out 'Subscription 4 message count ' + subscription4.message_count.to_s
    subscription4.message_count.must_equal 8
  end

  def get_message_from_sub(expected_messages, subscription_name, exp_custom_props = nil)
    ScenarioHelper.out "expected_messages: " + expected_messages.to_yaml

    expected_count = expected_messages.length
    if exp_custom_props == nil
      exp_custom_props = []
      for i in 1..expected_count
        exp_custom_props[i-1] = nil
      end
    end

    ScenarioHelper.out '=============================================='
    ScenarioHelper.out 'Getting messages from ' +
            'subscription ' + subscription_name +
            ', expecting ' + expected_count.to_s + ' messages'

    message_count = (subject.get_subscription topic_name, subscription_name).message_count
    ScenarioHelper.out 'Before getting any messages, Message count: ' + message_count.to_s
    message_count.must_equal expected_count

    # Peek the first message
    message1 = subject.peek_lock_subscription_message topic_name, subscription_name, { :timeout => 20 }
    ScenarioHelper.compare_messages expected_messages[0], message1, exp_custom_props[0]

    message_count = (subject.get_subscription topic_name, subscription_name).message_count
    ScenarioHelper.out 'Peek locked first message, Message count: ' + message_count.to_s
    message_count.must_equal expected_count # Peek locked first message, count should not change

    # Get the second message
    message2 = subject.read_delete_subscription_message topic_name, subscription_name,  { :timeout => 5 }
    expected_count = expected_count - 1
    ScenarioHelper.compare_messages expected_messages[1], message2, exp_custom_props[1]

    message_count = (subject.get_subscription topic_name, subscription_name).message_count
    ScenarioHelper.out 'RECEIVE_AND_DELETE second message, Message count: ' + message_count.to_s
    message_count.must_equal expected_count # RECEIVE_AND_DELETE second message, count decrements

    # Unlock and get the first message
    subject.unlock_subscription_message message1

    message_count = (subject.get_subscription topic_name, subscription_name).message_count
    ScenarioHelper.out 'Unlocked first message, Message count: ' + message_count.to_s
    message_count.must_equal expected_count # Unlocked first message, count stays the same

    # Get the first unlocked message
    message1again = subject.read_delete_subscription_message topic_name, subscription_name
    expected_count = expected_count - 1
    # Should be the original, now that it is unlocked
    ScenarioHelper.compare_messages expected_messages[0], message1again, exp_custom_props[0]

    message_count = (subject.get_subscription topic_name, subscription_name).message_count
    ScenarioHelper.out 'got first message again, Message count: ' + message_count.to_s
    message_count.must_equal expected_count # Got message one again (destructive), count should decrease

    # Negative test, make sure unlocked messages cannot be deleted.
    begin
      subject.delete_subscription_message message1again.location
      flunk 'Deleting a RECEIVEANDDELETE messasge should fail'
    rescue Azure::Core::Http::HTTPError => error
      ScenarioHelper.out "As expected, could not delete a deleted message"
      error.status_code.must_equal 400
      error.type.must_equal "Unknown"
    end

    if expected_count > 0
      # Get the third
      message3 = subject.peek_lock_subscription_message topic_name, subscription_name
      ScenarioHelper.compare_messages expected_messages[2], message3, exp_custom_props[2]

      message_count = (subject.get_subscription topic_name, subscription_name).message_count
      ScenarioHelper.out 'Got third message, Message count: ' + message_count.to_s
      message_count.must_equal expected_count # Peeked third message, count should not change

      # Delete it
      subject.delete_subscription_message message3
      expected_count = expected_count - 1

      message_count = (subject.get_subscription topic_name, subscription_name).message_count
      ScenarioHelper.out 'Deleted third message, Message count: ' + message_count.to_s
      message_count.must_equal expected_count # Deleted third message, count decrements
    end

    if expected_count > 0
      # Get the fourth
      message4 = subject.read_delete_subscription_message topic_name, subscription_name
      expected_count = expected_count - 1
      ScenarioHelper.compare_messages expected_messages[3], message4, exp_custom_props[3]

      message_count = (subject.get_subscription topic_name, subscription_name).message_count
      ScenarioHelper.out 'Got fourth message, Message count: ' + message_count.to_s
      message_count.must_equal expected_count # Got fourth message, count decrements
    end

    # Get the rest of the messages
    message_id = 4
    while expected_count > 0 && message_count > 0
      message = subject.read_delete_subscription_message topic_name, subscription_name
      expected_count = expected_count - 1
      ScenarioHelper.compare_messages expected_messages[message_id], message, exp_custom_props[message_id]

      message_count = (subject.get_subscription topic_name, subscription_name).message_count
      ScenarioHelper.out 'Got message #' + message_id.to_s + ' message, Message count: ' + message_count.to_s
      message_count.must_equal expected_count

      message_id = message_id + 1
    end

    message_count = (subject.get_subscription topic_name, subscription_name).message_count
    ScenarioHelper.out 'Got all messages, Message count: ' + message_count.to_s
    message_count.must_equal 0
  end

  it "should be able to upload many messages to a topic and read them back from all subscriptions" do
    setup_topic
    setup_subscriptions
    setup_rules

    messages = send_messages

    get_message_counts

    exp_sub1_messages = messages
    exp_sub2_messages = [messages[0], messages[1]]
    exp_sub3_messages = [messages[1], messages[2], messages[3]]

    # The rules for subscription 4 add and remove custom properties.
    exp_custom_props4 = []
    exp_sub4_messages = []
    for i in 1..4 do
        tmp = ScenarioHelper.get_custom_properties i
        tmp['trueRuleA']    = true
        tmp['actionGuid']   = 'GUID'
        tmp['actionDouble'] = 3.5
        tmp['rulename']     = '$Default'
        tmp.delete 'int'
        exp_custom_props4[2*i-2] = tmp
        exp_sub4_messages[2*i-2] = messages[i-1].dup

        tmp = ScenarioHelper.get_custom_properties i
        tmp['trueRuleB']                  = true
        tmp['actionString']               = 'hello'
        tmp['actionStringSingleQuote']    = '\''
        tmp['actionStringDoubleQuote']    = '"'
        tmp['actionStringReverseSolidus'] = '\\'
        tmp['actionStringSlashN']         = "\n"
        tmp['actionStringTab']            = "\t"
        # Null valued properties are not returned

        # "test" was originally a date, so this is a date.
        # This has to be GMT, because the updating string
        # had no timezone information.
        tmp['test'] = Time.gm(1999, 12, 25)
        # There was no "actionNewDate" defined
        # before, so this is a string.
        tmp['actionNewDate'] = '1999-12-25'
        tmp['rulename']      = 'trueRuleB'
        tmp.delete 'float'
        exp_custom_props4[2*i-1] = tmp
        exp_sub4_messages[2*i-1] = messages[i-1].dup
    end


    get_message_from_sub exp_sub1_messages, subscription_name1
    get_message_from_sub exp_sub2_messages, subscription_name2
    get_message_from_sub exp_sub3_messages, subscription_name3
    get_message_from_sub exp_sub4_messages, subscription_name4, exp_custom_props4
  end
end
