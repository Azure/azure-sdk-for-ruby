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
require "azure/blob/blob_service"

describe 'Service Bus Queue GB-18030' do
  subject { Azure::ServiceBus::ServiceBusService.new }
  let(:queue_name) { ServiceBusQueueNameHelper.name }

  before { subject.create_queue queue_name }
  after { ServiceBusQueueNameHelper.clean }

  it 'Read/Write SB Queue Name UTF-8' do
    # Expected results: Failure, because the Queue
    # name can only contain ASCII
    # characters, per the Service Bus Queue spec.
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_queue queue_name + v.encode("UTF-8")
        flunk "No exception"
      rescue
        # Add validation?
      end
    }
  end

  it 'Read/Write SB Queue Name GB-18030' do
    # Expected results: Failure, because the Queue
    # name can only contain ASCII
    # characters, per the Service Bus Queue spec.
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_queue queue_name + v.encode("GB18030")
        flunk "No exception"
      rescue
        # Add validation?
      end
    }
  end

  it 'Read/Write SB Queue Metadata UTF-8' do
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_queue queue_name, {
          :dead_lettering_on_message_expiration => v.encode("UTF-8"),
        }
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        error.status_code.must_equal 400
      end
    }
  end

  it 'Read/Write SB Queue Metadata GB18030' do
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_queue queue_name, {
          :dead_lettering_on_message_expiration => v.encode("GB18030"),
        }
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        error.status_code.must_equal 400
      end
    }
  end

  it 'Read/Write SB Queue message UTF-8' do
    GB18030TestStrings.get.each { |k,v|
      msg = Azure::ServiceBus::BrokeredMessage.new(v.encode("UTF-8"))
      subject.send_queue_message queue_name, msg
      retrieved = subject.read_delete_queue_message queue_name
      retrieved.body.force_encoding("UTF-8").must_equal v.encode("UTF-8")
    }
  end

  it 'Read/Write SB Queue message GB18030' do
    GB18030TestStrings.get.each { |k,v|
      msg = Azure::ServiceBus::BrokeredMessage.new(v.encode("GB18030"))
      subject.send_queue_message queue_name, msg
      retrieved = subject.read_delete_queue_message queue_name
      retrieved.body.force_encoding("GB18030").must_equal v.encode("GB18030")
    }
  end

  # it 'Read/Write SB Queue message Metadata UTF-8' do
  #   GB18030TestStrings.get.each { |k,v|
  #     msg = Azure::ServiceBus::BrokeredMessage.new("some text") do |m|
  #       m.to = v.encode("UTF-8")
  #     end
  #     begin
  #       subject.send_queue_message queue_name, msg
  #       # Do not flunk here; the service appears to let some
  #       # "bad" strings go through
  #     rescue Azure::Core::Http::HTTPError => error
  #       error.status_code.must_equal 500
  #     end
  #   }
  # end

  # it 'Read/Write SB Queue message Metadata GB18030' do
  #   GB18030TestStrings.get.each { |k,v|
  #     msg = Azure::ServiceBus::BrokeredMessage.new("some text") do |m|
  #       m.to = v.encode("GB18030")
  #     end
  #     begin
  #       subject.send_queue_message queue_name, msg
  #       # Do not flunk here; the service appears to let some
  #       # "bad" strings go through
  #     rescue Azure::Core::Http::HTTPError => error
  #       error.status_code.must_equal 500
  #     end
  #   }
  # end

  it 'Read/Write SB Queue Custom Property Key UTF-8' do
    GB18030TestStrings.get.each { |k,v|
      msg = Azure::ServiceBus::BrokeredMessage.new("some text", {
          ("key" +  v).encode("UTF-8") => "CustomStringProperty"
      })
      begin
        subject.send_queue_message queue_name, msg
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        error.status_code.must_equal 400
      end
    }
  end

  it 'Read/Write SB Queue Custom Property Key GB18030' do
    GB18030TestStrings.get.each { |k,v|
      msg = Azure::ServiceBus::BrokeredMessage.new("some text", {
          ("key" +  v).encode("GB18030") => "CustomStringProperty",
      })
      begin
        subject.send_queue_message queue_name, msg
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        error.status_code.must_equal 400
      end
    }
  end

  # it 'Read/Write SB Queue Custom Property Value UTF-8' do
  #   GB18030TestStrings.get.each { |k,v|
  #     msg = Azure::ServiceBus::BrokeredMessage.new("some text", {
  #         "key" => ("value" + v).encode("UTF-8")
  #     })

  #     begin
  #       subject.send_queue_message queue_name, msg
  #     end
  #   }
  # end

  # it 'Read/Write SB Queue Custom Property Value GB18030' do
  #   GB18030TestStrings.get.each { |k,v|
  #     msg = Azure::ServiceBus::BrokeredMessage.new("some text", {
  #         "key" => ("value" + v).encode("GB18030")
  #     })
  #     begin
  #       subject.send_queue_message queue_name, msg
  #       retrieved = subject.read_delete_queue_message queue_name
  #       # Do not flunk here; the service appears to let some
  #       # "bad" strings go through
  #     rescue Azure::Core::Http::HTTPError => error
  #       error.status_code.must_equal 500
  #     end
  #   }
  # end
end
