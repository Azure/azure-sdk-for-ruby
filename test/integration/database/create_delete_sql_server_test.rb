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
require 'integration/test_helper'

describe Azure::SqlDatabaseManagementService do
  subject { Azure::SqlDatabaseManagementService.new }
  let(:login_name) {'test_login'}
  let(:geo_location) { 'Southeast Asia' }

  describe 'Sql database management service' do
    before do
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      VCR.insert_cassette "database/#{name}"
    end

    after do
      VCR.eject_cassette
    end

    it 'should be able to create and delete sql database server' do
      sql_server = subject.create_server(login_name, 'User@123', geo_location)
      sql_server.name.wont_be_nil
      sql_server.location.must_equal geo_location
      sql_server.administrator_login.must_equal login_name

      subject.delete_server(sql_server.name)
      sql_server = subject.list_servers.select { |x| x.name == sql_server.name }.first
      sql_server.must_be_nil
    end

    it 'throws errors if the sql server location does not exist' do
      location = 'unknown-location'
      exception = assert_raises(Azure::SqlDatabaseManagement::Error) do
        subject.create_server(login_name, 'User@123', location)
      end
      assert_match(/Location \'#{location}\' cannot be found/i, exception.message)
    end

    it 'throws if the sql server does not exist' do
      assert_raises(Azure::SqlDatabaseManagement::ServerDoesNotExist) do
        subject.delete_server('unknown-server')
      end
    end
  end
end
