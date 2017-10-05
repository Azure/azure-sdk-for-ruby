# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-04-02/generated/azure_mgmt_cdn'
require '2016-10-02/generated/azure_mgmt_cdn'
require '2015-06-01/generated/azure_mgmt_cdn'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_06_01/profile_client'
require_relative 'profiles/Profile_2016_10_02/profile_client'
require_relative 'profiles/Profile_2017_04_02/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
