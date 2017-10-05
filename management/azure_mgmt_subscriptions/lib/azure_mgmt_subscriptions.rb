# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2015-11-01/generated/azure_mgmt_subscriptions'
require '2016-06-01/generated/azure_mgmt_subscriptions'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_11_01/profile_client'
require_relative 'profiles/Profile_2016_06_01/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
