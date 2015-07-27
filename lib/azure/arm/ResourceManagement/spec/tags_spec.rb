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

require_relative 'test_helper'

include MsRestAzure
include Azure::ARM::Resources

describe ResourceManagementClient do

  before(:all) do
    @client = Client.tags
    @created_tags = []
  end

  after(:all) do
    @created_tags.each do |item|
      begin
        @client.delete(item).value!.body
      rescue Exception
      end
    end
  end

  it 'should create tag' do
    name = get_random_name('RubySDKTest_')
    @created_tags.push(name)

    result = @client.create_or_update(name).value!

    expect(result.body).not_to be_nil
    expect(result.body.id).not_to be_nil
    expect(result.body.tag_name).to eq(name)
    expect(result.body.values).to be_a(Array)
    expect(result.body.count).to be_a(Models::TagCount)
  end

  it 'should create tag value' do
    tag = create_tag
    value = 'Val1'

    result = @client.create_or_update_value(tag.tag_name, value).value!

    expect(result.body).not_to be_nil
    expect(result.body.id).not_to be_nil
    expect(result.body.tag_value).to eq(value)
    expect(result.body.count).to be_a(Models::TagCount)
  end

  it 'should list tags' do
    result = @client.list().value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)

    while result.body.next_link  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should delete tag' do
    tag = create_tag

    result = @client.delete(tag.tag_name).value!
    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  it 'should delete tag value' do
    tag = create_tag
    value = 'Val1'
    @client.create_or_update_value(tag.tag_name, value).value!

    result = @client.delete_value(tag.tag_name, value).value!

    expect(result.response).to be_an_instance_of(Net::HTTPOK)
  end

  def create_tag
    name = get_random_name('RubySDKTest_')
    @created_tags.push(name)
    @client.create_or_update(name).value!.body
  end
end
