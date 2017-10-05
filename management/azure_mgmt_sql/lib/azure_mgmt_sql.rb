# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2014-04-01/generated/azure_mgmt_sql'
require '2015-05-01-preview/generated/azure_mgmt_sql'
require '2017-03-01-preview/generated/azure_mgmt_sql'
# Adding require for the profiles
require_relative 'profiles/Profile_2014_04_01/profile_client'
require_relative 'profiles/Profile_2015_05_01_Preview/profile_client'
require_relative 'profiles/Profile_2017_03_01_Preview/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
