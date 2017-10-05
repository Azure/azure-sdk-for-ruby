# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2016-09-01/generated/azure_mgmt_web'
require '2016-08-01/generated/azure_mgmt_web'
require '2016-03-01/generated/azure_mgmt_web'
require '2015-08-01/generated/azure_mgmt_web'
require '2015-04-01/generated/azure_mgmt_web'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_04_01/profile_client'
require_relative 'profiles/Profile_2015_08_01/profile_client'
require_relative 'profiles/Profile_2016_03_01/profile_client'
require_relative 'profiles/Profile_2016_08_01/profile_client'
require_relative 'profiles/Profile_2016_09_01/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
