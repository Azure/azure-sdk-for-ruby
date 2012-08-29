#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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

describe "Manage queue service properties" do
  it "should be able to get service properties" do
    response = Azure::Queues.get_service_properties
    response.must_be :kind_of?, Azure::Queues::ServiceProperties
  end

  it "should be able to set properties" do
    properties = Azure::Queues::ServiceProperties.new do |p|
      p.logging.delete = true
      p.logging.write = true
      p.logging.retention_policy.enabled = true
      p.logging.retention_policy.days = 7

      p.metrics.enabled = true
      p.metrics.retention_policy.enabled = true
      p.metrics.retention_policy.days = 7
    end

    response = Azure::Queues.set_service_properties(properties)
    response.must_equal true

    loaded_properties = Azure::Queues.get_service_properties
    loaded_properties.logging.delete.must_equal true
  end
end
