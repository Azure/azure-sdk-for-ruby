# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

describe 'GraphManagementClient' do
  before(:each) do
    @resource_helper = ResourceHelper.new
    @graph_client = @resource_helper.graph_client
  end

  it 'should list all existing users using lazy paging' do
    first_page = @graph_client.users.list_as_lazy("startswith(displayName,'Sample User')")
    expect(first_page).not_to be_nil
    expect(first_page.value).to be_a(Array)
    expect(first_page.value[0]).to be_a(Azure::Graph::V1_6::Models::User)

    # Retrieve next page from first_page
    next_page = first_page.get_next_page
    expect(next_page).not_to be_nil
    expect(next_page.value).to be_a(Array)
    expect(next_page.value[0]).to be_a(Azure::Graph::V1_6::Models::User)
  end

  it 'should list all existing users synchronously' do
    all_users = @graph_client.users.list("startswith(displayName,'Sample User')")
    expect(all_users).not_to be_nil
    expect(all_users).to be_a(Array)
    expect(all_users[0]).to be_a(Azure::Graph::V1_6::Models::User)
  end

  it 'should create new user' do
    user_param = Azure::Graph::V1_6::Models::UserCreateParameters.new
    user_param.account_enabled = true
    user_param.password_profile = Azure::Graph::V1_6::Models::PasswordProfile.new.tap do |profile|
      profile.password = '$ample!Password'
    end
    user_param.user_principal_name = 'sampleuser@student7.onmicrosoft.com'
    user_param.display_name = 'Sample User'
    user_param.mail_nickname = 'sampleuser'
    user = @graph_client.users.create(user_param)
    expect(user).not_to be_nil
    expect(user).to be_a(Azure::Graph::V1_6::Models::User)
    expect(user.object_id).not_to be_nil
    expect(user.user_principal_name).to eq('sampleuser@student7.onmicrosoft.com')
    expect(user.display_name).to eq('Sample User')
  end
end
