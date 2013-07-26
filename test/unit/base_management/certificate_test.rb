#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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
require "test_helper"

describe Azure::BaseManagement::Certificate do

  subject do
    Azure::BaseManagement::Certificate
  end
  after do
    Azure.config.subscription_id = nil
  end

  describe "#new" do

    let(:old_format_publicsettings_file) { Fixtures['azure.publishsettings'] }
    let(:new_format_publicsettings_file) { Fixtures['azure_new_format.publishsettings'] }
    let(:invalid_publishsettings_file) { Fixtures['invalid.publishsettings'] }

    it "should set properties of old publishsettings file" do
      Azure.config.subscription_id = nil
      certificate = subject.new(:publish_settings_file => old_format_publicsettings_file)
      certificate.subscription_id.must_equal "test-id-3"
      certificate.api_url.must_equal "management.core.windows.net"
      certificate.key.wont_be_nil
      certificate.cert.wont_be_nil
    end

    it "should set properties of given subscription id for old publishsettings file" do
      Azure.config.subscription_id = 'test-id-4'
      certificate = subject.new(:publish_settings_file => old_format_publicsettings_file)
      certificate.subscription_id.must_equal "test-id-4"
      certificate.api_url.must_equal "management.core.windows.net"
      certificate.key.wont_be_nil
      certificate.cert.wont_be_nil
    end

    it "should raise error when invalid subscription is given for old publishsettings file." do
      Azure.configure do |config|
        config.subscription_id = 'wrong_id'
      end

      exception = assert_raises(RuntimeError) do
        subject.new(:publish_settings_file => old_format_publicsettings_file)
      end
      assert_match(/Subscription ID not valid./i, exception.message)
    end

    it "should set properties of given subscription id for new publishsettings file" do
      Azure.configure do |config|
        config.subscription_id = "test-id-1"
        config.publish_settings_file = new_format_publicsettings_file
      end
      certificate1 = subject.new
      certificate1.subscription_id.must_equal "test-id-1"
      certificate1.api_url.must_equal "test-id-1.core.windows.net"
      certificate1.key.wont_be_nil
      certificate1.cert.wont_be_nil

      Azure.configure do |config|
        config.subscription_id = "test-id-2"
        config.publish_settings_file = new_format_publicsettings_file
      end
      certificate2 = subject.new
      certificate2.subscription_id.must_equal "test-id-2"
      certificate2.api_url.must_equal "test-id-2.core.windows.net"
      certificate2.key.wont_be_nil
      certificate2.cert.wont_be_nil
      refute_equal(certificate2.cert, certificate1.cert)
      refute_equal(certificate2.key, certificate1.key)
    end

    it "should set use first subscription when no subscription is given for new publishsettings file." do
      Azure.configure do |config|
        config.subscription_id = nil
      end
      certificate = subject.new(:publish_settings_file => new_format_publicsettings_file)
      certificate.subscription_id.must_equal "test-id-1"
      certificate.api_url.must_equal "test-id-1.core.windows.net"
      certificate.key.wont_be_nil
      certificate.cert.wont_be_nil
    end

    it "should raise error when invalid subscription is given for new publishsettings file." do
      Azure.configure do |config|
        config.subscription_id = 'wrong_id'
      end

      exception = assert_raises(RuntimeError) do
        subject.new(:publish_settings_file => new_format_publicsettings_file)
      end
      assert_match(/Subscription ID not valid./i, exception.message)
    end

    it "should raise error when invalid publishsettings file is given." do
      Azure.config.subscription_id = nil
      exception = assert_raises(OpenSSL::PKCS12::PKCS12Error) do
        subject.new(:publish_settings_file => invalid_publishsettings_file)
      end
      assert_match(/PKCS12_parse: mac verify failure/i, exception.message)
    end
  end

end
