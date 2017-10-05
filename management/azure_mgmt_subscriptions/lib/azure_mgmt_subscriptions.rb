# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2015-11-01/generated/azure_mgmt_subscriptions'
require '2016-06-01/generated/azure_mgmt_subscriptions'
# Adding require for the profiles
require 'profiles/Profile_2015_11_01/subscriptions_profile_2015_11_01_profile_client'
require 'profiles/Profile_2016_06_01/subscriptions_profile_2016_06_01_profile_client'
require 'profiles/Profile_Latest/subscriptions_profile_latest_profile_client'
