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

describe Azure::ServiceBus::ServiceBusService do
  subject { Azure::ServiceBus::ServiceBusService.new }
  let(:queue_name) { 'test-queue' }

  describe 'Service bus queue GB-18030' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_queue queue_name
    end

    after do
      subject.delete_queue queue_name
      VCR.eject_cassette
    end

    it 'should not create queue with UTF-8 names' do
      # Expected results: Failure, because the Queue name can only contain ASCII
      # characters, per the Service Bus Queue spec.
      GB18030TestStrings.get.each do |k,v|
        begin
          subject.create_queue queue_name + v.encode("UTF-8")
          flunk "No exception"
        rescue
        end
      end
    end

    it 'should not create queue with GB18030 names' do
      # Expected results: Failure, because the Queue name can only contain ASCII
      # characters, per the Service Bus Queue spec.
      GB18030TestStrings.get.each do |k,v|
        begin
          subject.create_queue queue_name + v.encode("GB18030")
          flunk "No exception"
        rescue
        end
      end
    end

    # FIXME VCR does not record cassette when request/response body has unrecognized characters
    # it 'should not create queue with UTF-8 metadata' do
    #   VCR.use_cassette("service_bus/encoding/synopsis", :serialize_with => :json, :preserve_exact_body_bytes => true) do
    #     subject.create_queue queue_name
    #     GB18030TestStrings.get.each do |k,v|
    #       begin
    #         subject.create_queue queue_name, {
    #             :dead_lettering_on_message_expiration => v.encode("UTF-8"),
    #         }
    #         flunk "No exception"
    #       rescue Azure::Core::Http::HTTPError => error
    #         error.status_code.must_equal 400
    #       end
    #     end
    #     VCR.eject_cassette
    #   end
    # end
    #
    # it 'should not create queue with GB18030 metadata' do
    #   VCR.use_cassette("service_bus/encoding/a") do
    #     subject.create_queue queue_name
    #     GB18030TestStrings.get.each do |k,v|
    #       begin
    #         subject.create_queue queue_name, {
    #             :dead_lettering_on_message_expiration => v.encode("GB18030"),
    #         }
    #         flunk "No exception"
    #       rescue Azure::Core::Http::HTTPError => error
    #         error.status_code.must_equal 400
    #       end
    #     end
    #     subject.delete_queue queue_name
    #   end
    # end
    #
    # it 'should read/write queue with UTF-8 message' do
    #   GB18030TestStrings.get.each do |k,v|
    #     msg = Azure::ServiceBus::BrokeredMessage.new(v.encode("UTF-8"))
    #     subject.send_queue_message queue_name, msg
    #     retrieved = subject.read_delete_queue_message queue_name
    #     retrieved.body.force_encoding("UTF-8").must_equal v.encode("UTF-8")
    #   end
    # end
    #
    # it 'should read/write queue with GB18030 message ' do
    #   GB18030TestStrings.get.each do |k,v|
    #     msg = Azure::ServiceBus::BrokeredMessage.new(v.encode("GB18030"))
    #     subject.send_queue_message queue_name, msg
    #     retrieved = subject.read_delete_queue_message queue_name
    #     retrieved.body.force_encoding("GB18030").must_equal v.encode("GB18030")
    #   end
    # end
    #
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
    #
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
    #
    # it 'should not read/write queue custom property Key with UTF-8' do
    #   GB18030TestStrings.get.each do |k,v|
    #     msg = Azure::ServiceBus::BrokeredMessage.new("some text", {
    #         ("key" +  v).encode("UTF-8") => "CustomStringProperty"
    #     })
    #     begin
    #       subject.send_queue_message queue_name, msg
    #       flunk "No exception"
    #     rescue Azure::Core::Http::HTTPError => error
    #       error.status_code.must_equal 400
    #     end
    #   end
    # end
    #
    # it 'should not read/write queue custom property Key with GB18030' do
    #   GB18030TestStrings.get.each do |k,v|
    #     msg = Azure::ServiceBus::BrokeredMessage.new("some text", {
    #         ("key" +  v).encode("GB18030") => "CustomStringProperty",
    #     })
    #     begin
    #       subject.send_queue_message queue_name, msg
    #       flunk "No exception"
    #     rescue Azure::Core::Http::HTTPError => error
    #       error.status_code.must_equal 400
    #     end
    #   end
    # end
    #
    # it 'Read/Write SB Queue Custom Property Value UTF-8' do
    #   GB18030TestStrings.get.each { |k,v|
    #     msg = Azure::ServiceBus::BrokeredMessage.new("some text", {
    #         "key" => ("value" + v).encode("UTF-8")
    #     })
    #
    #     begin
    #       subject.send_queue_message queue_name, msg
    #     end
    #   }
    # end
    #
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
end
