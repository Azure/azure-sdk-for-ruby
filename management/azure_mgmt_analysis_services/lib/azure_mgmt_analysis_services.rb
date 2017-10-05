# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2016-05-16/generated/azure_mgmt_analysis_services'
require '2017-07-14/generated/azure_mgmt_analysis_services'

# Adding require for the profiles
require_relative 'profiles/Profile_2016_05_16/profile_client'
require_relative 'profiles/Profile_2017_07_14/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
