# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

include MsRestAzure
include Azure::ARM::Resources

describe ResourceManagementClient do

  before(:all) do
    @client = RESOURCES_CLIENT.tags
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

    while !result.body.next_link.nil? && !result.body.next_link.empty?  do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should delete tag' do
    tag = create_tag

    result = @client.delete(tag.tag_name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should delete tag value' do
    tag = create_tag
    value = 'Val1'
    @client.create_or_update_value(tag.tag_name, value).value!

    result = @client.delete_value(tag.tag_name, value).value!

    expect(result.response.status).to eq(200)
  end

  it 'should raise an exception creating value for not existing tag' do
    tag_name = get_random_name('tag_name')
    tag_value = get_random_name('tag_value')
    expect{@client.create_or_update_value(tag_name, tag_value).value!}.to raise_error(MsRestAzure::AzureOperationError)
  end

  def create_tag
    name = get_random_name('RubySDKTest_')
    @created_tags.push(name)
    @client.create_or_update(name).value!.body
  end
end
