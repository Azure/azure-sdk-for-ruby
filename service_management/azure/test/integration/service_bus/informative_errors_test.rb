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
require "azure/core/http/http_error"

describe "ServiceBus errors" do
  subject { Azure::ServiceBus::ServiceBusService.new }
  after { ServiceBusTopicNameHelper.clean }
  let(:topic){ ServiceBusTopicNameHelper.name }

  it "exception message should be valid" do
    subject.create_topic topic

    # creating the same topic again should throw
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