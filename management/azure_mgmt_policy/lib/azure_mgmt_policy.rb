# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-06-01-preview/generated/azure_mgmt_policy'
require '2016-12-01/generated/azure_mgmt_policy'
require '2016-04-01/generated/azure_mgmt_policy'
require '2015-10-01-preview/generated/azure_mgmt_policy'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_10_01_Preview/profile_client'
require_relative 'profiles/Profile_2016_04_01/profile_client'
require_relative 'profiles/Profile_2016_12_01/profile_client'
require_relative 'profiles/Profile_2017_06_01_Preview/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
