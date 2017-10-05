# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-03-30/generated/azure_mgmt_compute'
require '2016-04-30-preview/generated/azure_mgmt_compute'
require '2016-03-30/generated/azure_mgmt_compute'
require '2015-06-15/generated/azure_mgmt_compute'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_06_15/profile_client'
require_relative 'profiles/Profile_2016_03_30/profile_client'
require_relative 'profiles/Profile_2016_04_30_Preview/profile_client'
require_relative 'profiles/Profile_2017_03_30/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
