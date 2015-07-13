require 'test_helper'

describe Azure::HttpClient do
  subject { Azure }

  let :uri do
    URI('https://management.core.windows.net')
  end

  describe '#agents' do

    describe 'ssl vs non ssl uris' do
      it 'should set verify true if using ssl' do
        Azure.agents(uri).ssl[:verify].must_equal true
      end

      it 'should not set ssl if not using ssl' do
        Azure.agents('http://localhost').ssl.must_be_empty
      end
    end

    describe 'when using a ca_file' do
      before do
        Azure.config.ca_file = './blah.pem'
      end

      after do
        Azure.config.ca_file = nil
      end

      it 'should set ca_file option on the http connection' do
        Azure.agents(uri).ssl[:ca_file].must_equal './blah.pem'
      end
    end

    describe 'when not using a ca_file' do
      it 'should not set ca_file option on the http connection' do
        Azure.agents(uri).ssl[:ca_file].must_be_nil
      end
    end

    describe 'when using a http proxy' do
      let(:proxy_uri){ URI('http://localhost:80') }

      before do
        ENV['HTTP_PROXY'] = proxy_uri.to_s
      end

      after do
        ENV['HTTP_PROXY'] = nil
      end

      it 'should set the proxy configuration information on the http connection' do
        Azure.agents(uri).proxy.uri.must_equal proxy_uri
      end
    end

    describe 'when using a https proxy' do
      let(:proxy_uri){ URI('https://localhost:443') }

      before do
        ENV['HTTPS_PROXY'] = proxy_uri.to_s
      end

      after do
        ENV['HTTPS_PROXY'] = nil
      end

      it 'should set the proxy configuration information on the http connection' do
        Azure.agents(uri).proxy.uri.must_equal proxy_uri
      end
    end
  end
end
