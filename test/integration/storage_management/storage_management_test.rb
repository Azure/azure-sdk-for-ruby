#-------------------------------------------------------------------------
# Copyright 2015 Microsoft Open Technologies, Inc.
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

describe Azure::StorageManagementService do

  util = Class.new.extend(Azure::Core::Utility)
  subject { Azure::StorageManagementService.new }
  affinity_name = util.random_string('affinity-group-', 10)
  Azure::BaseManagementService.new.create_affinity_group(
    affinity_name,
    'West US',
    'Label Name'
  )
  StorageName =  util.random_string('storagetest', 10)
  opts = {
    affinity_group_name: affinity_name,
    label: 'storagelabel',
    description: 'This is a storage account',
    geo_replication_enabled: 'true'
  }
  Azure::StorageManagementService.new.create_storage_account(StorageName, opts)

  let(:affinity_group_name) { affinity_name }
  let(:storage_name) { Time.now.getutc.to_i.to_s }
  let(:label) { 'Label Name' }
  let(:options) { { description: 'sample description' } }

  before do
    Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
  end

  it 'list storage accounts' do
    storagelist = subject.list_storage_accounts
    storagelist.wont_be_nil
    storagelist.must_be_kind_of Array
  end

  it 'get_storage_account return nil if storage account with given name not exists' do
    storage = subject.get_storage_account('nonexistentstorage')
    storage.must_equal nil
  end

  it 'create storage account' do
    options = {
      affinity_group_name: affinity_group_name,
      label: 'storagelabel',
      description: 'This is a storage account',
      geo_replication_enabled: 'false'
    }
    subject.create_storage_account(storage_name, options)
    storage_account = subject.get_storage_account(storage_name)
    storage_account.must_be_kind_of Azure::StorageManagement::StorageAccount
    # Test for delete storage account
    subject.delete_storage_account(storage_name)
    storage_account = subject.get_storage_account(storage_name)
    storage_account.must_equal nil
  end

  it 'get storage account' do
    storage_name = StorageName
    storage_account = subject.get_storage_account(storage_name)
    storage_account.must_be_kind_of Azure::StorageManagement::StorageAccount
  end

  it 'get storage account properties' do
    storage_name = StorageName
    storage = subject.get_storage_account_properties(storage_name)
    storage.name.must_equal storage_name
    storage.label.must_equal 'storagelabel'
    storage.account_type.must_equal 'Standard_GRS'
  end

  it 'regenerate storage account keys' do
    storage_name = StorageName
    storage_keys1 = subject.regenerate_storage_account_keys(storage_name)
    storage_keys1.primary_key.wont_be_nil
    storage_keys1.secondary_key.wont_be_nil
    storage_keys2 = subject.regenerate_storage_account_keys(storage_name, 'secondary')
    storage_keys1.primary_key.must_equal storage_keys2.primary_key
    storage_keys1.secondary_key.wont_equal storage_keys2.secondary_key
  end

  it 'get storage account keys' do
    storage_name = StorageName
    storage_keys1 = subject.get_storage_account_keys(storage_name)
    storage_keys1.primary_key.wont_be_nil
    storage_keys1.secondary_key.wont_be_nil
  end

  it 'get storage account properties error' do
    storage_name = 'invalidstorage'
    exception = assert_raises(RuntimeError) do
      subject.get_storage_account_properties(storage_name)
    end
    assert_match(/The storage account 'invalidstorage' was not found/, exception.message)
  end

  it 'create storage account with invalid storage name' do
    options = {
      affinity_group_name: 'affinitygrouptest',
      label: 'storagelabel',
      description: 'This is a storage account',
      geo_replication_enabled: 'false'
    }
    storage_name = 'ba'
    exception = assert_raises(RuntimeError) do
      subject.create_storage_account(storage_name, options)
    end
    assert_match(/Storage account names must be between 3 and 24/, exception.message)
  end

  it 'create storage account with invalid location' do
    options = {
      location: 'West1 US',
      label: 'storagelabel',
      description: 'This is a storage account',
      geo_replication_enabled: 'false'
    }
    exception = assert_raises(RuntimeError) do
      subject.create_storage_account(storage_name, options)
    end
    assert_match('The location constraint is not valid', exception.message)
  end

  it 'create storage account with invalid affinity group' do
    options = {
      affinity_group_name: 'invalidaffinitygroup',
      label: 'storagelabel',
      description: 'This is a storage account',
      geo_replication_enabled: 'false'
    }
    exception = assert_raises(RuntimeError) do
      subject.create_storage_account(storage_name, options)
    end
    assert_match('The affinity group does not exist.', exception.message)
  end

  it 'delete storage account that does not exist' do
    msg = subject.delete_storage_account('invalidstorageaccount')
    assert_match(/The storage account 'invalidstorageaccount' was not found./, msg)
  end

  describe '#update_storage_account' do

    it 'update storage account with non existent storage name' do
      options = {
        label: 'labelchanged',
        description: 'description changed'
      }
      storage_name = 'storage_nonexistent'
      storage = subject.update_storage_account(storage_name, options)
      error_msg = "Storage Account 'storage_nonexistent' does not exist"
      assert_match(/#{error_msg}/, storage)
    end

    it 'update existing storage account' do
      options = {
        label: 'labelchanged',
        description: 'description changed',
        account_type: 'Standard_LRS'
      }
      storage_name = StorageName
      subject.update_storage_account(storage_name, options)
      storage = subject.get_storage_account_properties(storage_name)
      storage.name.must_equal storage_name
      storage.label.must_equal 'labelchanged'
      storage.account_type.must_equal 'Standard_LRS'
      opts[:account_type] = 'Standard_GRS'
      subject.update_storage_account(storage_name, opts)
    end
  end
end
