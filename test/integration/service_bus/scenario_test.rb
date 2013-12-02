#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'integration/test_helper'

require 'azure/service_bus/brokered_message'

class ScenarioHelper
  def self.out(s)
    print s + "\n" if false
  end

  def self.get_custom_properties(i)
    custom_properties             = {}
    custom_properties['i']        = i
    custom_properties['test']     = Time.local(2001, i, 1)
    custom_properties['name']     = 'Test' + i.to_s
    custom_properties['meanname'] = "'\"Me`\\'&*<>!@#%^*)\n" + i.to_s
    custom_properties['int']      = 50 + i
    custom_properties['float']    = 3.14159 + i
    custom_properties['even']     = (i % 2 == 0)
    custom_properties
  end

  def self.create_issue_message(issue_id, issue_body, label)
    message = Azure::ServiceBus::BrokeredMessage.new(issue_body)

    message.correlation_id  = 'correlationid' + label
    message.delivery_count  = 1
    message.sequence_number = 12
    message.content_type    = 'text/xml'
    message.label           = label
    message.to              = '1@1.com'
    message.message_id      = issue_id

    custom_properties = ScenarioHelper.get_custom_properties issue_id.to_i
    custom_properties.each do |key, value|
      message.properties[key] = value
    end

    message
  end

  def self.compare_messages(expected,
                            actual,
                            custom_properties = nil)
    actual.body.must_equal                       expected.body
    actual.content_type.must_equal               expected.content_type
    actual.correlation_id.must_equal             expected.correlation_id
    actual.label.must_equal                      expected.label
    actual.message_id.must_equal                 expected.message_id
    actual.reply_to.must_equal                   expected.reply_to
    actual.reply_to_session_id.must_equal        expected.reply_to_session_id
    actual.scheduled_enqueue_time_utc.must_equal(
      expected.scheduled_enqueue_time_utc
    )
    actual.session_id.must_equal                 expected.session_id
    actual.to.must_equal                         expected.to

    # Note: The following properties are controlled by the server,
    # so we cannot verify as much
    actual.delivery_count.must_be_kind_of Integer
    actual.sequence_number.must_be_kind_of Integer
    actual.enqueued_time_utc.must_be_kind_of Time
    actual.lock_token.must_be_kind_of String unless actual.lock_token.nil?

    actual.locked_until_utc.must_be_kind_of Time\
      unless actual.locked_until_utc.nil?

    if custom_properties.nil?
      expected_properties = expected.properties
      index = expected_properties['i']
      index = 1 if index.nil?
      custom_properties = get_custom_properties(index.to_i)
    end

    custom_properties.each do |key, value|
      ScenarioHelper.out key + ':' + value.to_s
      k_d = actual.properties[key.downcase]
      ScenarioHelper.out("#{k_d}:#{k_d.nil? ? '<nil>' : k_d.to_s}")
      if value != 'GUID'
        if !value.nil? && value.class == Time
          value.httpdate.must_equal k_d
        else
          value.must_equal(k_d)
        end
      end
    end
  end
end
