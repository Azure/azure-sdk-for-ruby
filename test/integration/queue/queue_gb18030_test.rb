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

describe 'Queue GB-18030' do
  subject { Azure::Queue::QueueService.new }

  let(:queue_name){ QueueNameHelper.name }

  before {
    subject.create_queue queue_name
  }

  it 'Read/Write Queue Name UTF-8' do
    # Expected results: Failure, because the Queue
    # name can only contain ASCII
    # characters, per the Queue Service spec.
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_queue queue_name + v.encode("UTF-8")
        flunk "No exception"
      rescue
        # Add validation?
      end
    }
  end

  it 'Read/Write Queue Name GB-18030' do
    # Expected results: Failure, because the Queue
    # name can only contain ASCII
    # characters, per the Queue Service spec.
    GB18030TestStrings.get.each { |k,v|
      begin
        subject.create_queue queue_name + v.encode("GB18030")
        flunk "No exception"
      rescue
        # Add validation?
      end
    }
  end

  it 'Read/Write Queue Metadata UTF-8 key' do
    GB18030TestStrings.get.each { |k,v|
      begin
        metadata = {"custommetadata" + v.encode("UTF-8") => "CustomMetadataValue" }
        subject.set_queue_metadata queue_name, metadata
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        error.status_code.must_equal 400
      end
    }
  end

  it 'Read/Write Queue Metadata GB-18030 key' do
    GB18030TestStrings.get.each { |k,v|
      begin
        metadata = {"custommetadata" + v.encode("GB18030") => "CustomMetadataValue" }
        subject.set_queue_metadata queue_name, metadata
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        error.status_code.must_equal 400
      end
    }
  end

  it 'Read/Write Queue Metadata UTF-8 value' do
    GB18030TestStrings.get.each { |k,v|
      begin
        metadata = {"custommetadata" => "CustomMetadataValue" + v.encode("UTF-8")}
        subject.set_queue_metadata queue_name, metadata
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        # TODO: Error should really be 400
        error.status_code.must_equal 403
      end
    }
  end

  it 'Read/Write Queue Metadata GB-18030 value' do
    GB18030TestStrings.get.each { |k,v|
      begin
        metadata = {"custommetadata" => "CustomMetadataValue" + v.encode("GB18030")}
        subject.set_queue_metadata queue_name, metadata
        flunk "No exception"
      rescue Azure::Core::Http::HTTPError => error
        # TODO: Error should really be 400
        error.status_code.must_equal 403
      end
    }
  end

  it 'Read/Write Queue Content UTF-8' do
    GB18030TestStrings.get.each { |k,v|
      content = v.encode("UTF-8")
      subject.create_message queue_name, content
      messages = subject.list_messages queue_name, 500
      message = messages.first
      returned_content = message.message_text
      returned_content.must_equal content
      subject.delete_message queue_name, message.id, message.pop_receipt
    }
  end

  # Fails because of
  # https://github.com/appfog/azure-sdk-for-ruby/issues/295
  it 'Read/Write Queue Content GB18030' do
    GB18030TestStrings.get.each { |k,v|
      content = v.encode("GB18030")
      subject.create_message queue_name, content
      messages = subject.list_messages queue_name, 500
      message = messages.first
      returned_content = message.message_text
      returned_content.encode("UTF-8").must_equal content.encode("UTF-8")
      subject.delete_message queue_name, message.id, message.pop_receipt
    }
  end

end
