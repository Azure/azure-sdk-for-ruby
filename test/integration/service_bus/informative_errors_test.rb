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
require "azure/core/http/http_error"

describe Azure::ServiceBus::ServiceBusService do
  subject { Azure::ServiceBus::ServiceBusService.new }
  let(:topic){ 'test-topic' }

  before do
    VCR.insert_cassette "service_bus/#{name}"
    subject.create_topic topic
  end

  after do
    subject.delete_topic topic
    VCR.eject_cassette
  end

  it "should throw exception when topic conflicts" do
    begin
      subject.create_topic topic
      flunk "No exception"
    rescue Azure::Core::Http::HTTPError => error
      error.status_code.must_equal 409
      error.type.must_equal "409"
      error.detail.wont_be_nil
    end
  end
end
