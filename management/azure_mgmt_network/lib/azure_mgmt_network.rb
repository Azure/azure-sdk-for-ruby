# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-09-01/generated/azure_mgmt_network'
require '2017-03-01/generated/azure_mgmt_network'
require '2017-03-30/generated/azure_mgmt_network'
require '2016-12-01/generated/azure_mgmt_network'
require '2016-09-01/generated/azure_mgmt_network'
require '2016-06-01/generated/azure_mgmt_network'
require '2016-03-30/generated/azure_mgmt_network'
require '2015-06-15/generated/azure_mgmt_network'
require '2015-05-01-preview/generated/azure_mgmt_network'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_05_01_Preview/profile_client'
require_relative 'profiles/Profile_2015_06_15/profile_client'
require_relative 'profiles/Profile_2016_03_30/profile_client'
require_relative 'profiles/Profile_2016_06_01/profile_client'
require_relative 'profiles/Profile_2016_09_01/profile_client'
require_relative 'profiles/Profile_2016_12_01/profile_client'
require_relative 'profiles/Profile_2017_03_01/profile_client'
require_relative 'profiles/Profile_2017_03_30/profile_client'
require_relative 'profiles/Profile_2017_09_01/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
