# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-04-01/generated/azure_mgmt_relay'
require '2016-07-01/generated/azure_mgmt_relay'
# Adding require for the profiles
require 'profiles/Profile_2016_07_01/relay_profile_2016_07_01_profile_client'
require 'profiles/Profile_2017_04_01/relay_profile_2017_04_01_profile_client'
require 'profiles/Profile_Latest/relay_profile_latest_profile_client'
