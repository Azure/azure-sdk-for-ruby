# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2015-04-01/generated/azure_mgmt_monitor'
require '2016-03-01/generated/azure_mgmt_monitor'
require '2016-09-01/generated/azure_mgmt_monitor'
require '2017-04-01/generated/azure_mgmt_monitor'
require '2017-05-01-preview/generated/azure_mgmt_monitor'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_04_01/profile_client'
require_relative 'profiles/Profile_2016_03_01/profile_client'
require_relative 'profiles/Profile_2016_09_01/profile_client'
require_relative 'profiles/Profile_2017_04_01/profile_client'
require_relative 'profiles/Profile_2017_05_01_Preview/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
