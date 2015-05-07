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

describe "ServiceBus Relay" do

  subject { Azure::ServiceBus::ServiceBusService.new }
  let(:bus_name) { ServiceBusRelayNameHelper.name }
  let(:name_alternative) { ServiceBusRelayNameHelper.name }
  let(:description) {{
    :relay_type => 'Http',
    :requires_client_authorization => true,
    :requires_transport_security => true
  }}
  let(:description_alternative) {{
    :relay_type => 'NetTcp',
    :requires_client_authorization => false,
    :requires_transport_security => false
  }}

  after { ServiceBusRelayNameHelper.clean }

  it "should be able to create a new relay endpoint from a string and description Hash" do
    relay = subject.create_relay name_alternative, description_alternative
    relay.must_be_kind_of Azure::ServiceBus::Relay
    relay.name.must_equal name_alternative

    relay.relay_type.must_equal description_alternative[:relay_type]
    relay.requires_client_authorization.must_equal description_alternative[:requires_client_authorization]
    relay.requires_transport_security.must_equal description_alternative[:requires_transport_security]
  end

  it "should be able to create a new relay from a Relay with a description Hash" do
    relay = subject.create_relay Azure::ServiceBus::Relay.new(name_alternative, description_alternative)
    relay.must_be_kind_of Azure::ServiceBus::Relay
    relay.name.must_equal name_alternative

    relay.relay_type.must_equal description_alternative[:relay_type]
    relay.requires_client_authorization.must_equal description_alternative[:requires_client_authorization]
    relay.requires_transport_security.must_equal description_alternative[:requires_transport_security]
  end

  describe 'when a relay exists' do
    before { subject.create_relay bus_name, description }

    describe "#get_relay" do
      it "should be able to get a relay by name" do
        result = subject.get_relay bus_name

        result.must_be_kind_of Azure::ServiceBus::Relay
        result.name.must_equal bus_name
      end

      it "if the relay endpoint doesn't exists it should throw" do
        assert_raises(Azure::Core::Http::HTTPError) do
          subject.get_relay ServiceBusRelayNameHelper.name
        end
      end
    end

    describe '#delete_relay' do
      it "should raise exception if the relay endpoint cannot be deleted" do
        assert_raises(Azure::Core::Http::HTTPError) do
          subject.delete_relay ServiceBusRelayNameHelper.name
        end
      end

      it "should be able to delete the relay endpoint" do
        response = subject.delete_relay bus_name
        response.must_equal nil
      end
    end

    describe 'when there are multiple relay endpoints' do
      let(:name1) { ServiceBusRelayNameHelper.name }
      let(:name2) { ServiceBusRelayNameHelper.name }
      before { 
        subject.create_relay name1, description
        subject.create_relay name2, description_alternative
      }
      
      it "should be able to get a list of relays" do
        result = subject.list_relays

        result.must_be :kind_of?, Array
        q_found = false
        q1_found = false
        q2_found = false
        result.each { |q|
          q_found = true if q.name == bus_name
          q1_found = true if q.name == name1
          q2_found = true if q.name == name2
        }
        assert (q_found and q1_found and q2_found), "list_relays did not return expected relay endpoints"
      end

      it "should be able to use $skip token with list_relays" do
        result = subject.list_relays
        result2 = subject.list_relays({ :skip => 1 })
        result2.length.must_equal result.length - 1
        result2[0].id.must_equal result[1].id
      end
      
      it "should be able to use $top token with list_relays" do
        result = subject.list_relays
        result.length.wont_equal 1

        result2 = subject.list_relays({ :top => 1 })
        result2.length.must_equal 1
      end

      it "should be able to use $skip and $top token together with list_relays" do
        result = subject.list_relays
        result2 = subject.list_relays({ :skip => 1, :top => 1 })
        result2.length.must_equal 1
        result2[0].id.must_equal result[1].id
      end
    end
  end
end