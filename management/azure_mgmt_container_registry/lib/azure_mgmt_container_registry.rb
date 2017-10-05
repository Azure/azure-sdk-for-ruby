# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2016-06-27-preview/generated/azure_mgmt_container_registry'
require '2017-03-01/generated/azure_mgmt_container_registry'
require '2017-06-01-preview/generated/azure_mgmt_container_registry'
require '2017-10-01/generated/azure_mgmt_container_registry'
# Adding require for the profiles
require_relative 'profiles/Profile_2016_06_27_Preview/profile_client'
require_relative 'profiles/Profile_2017_03_01/profile_client'
require_relative 'profiles/Profile_2017_06_01_Preview/profile_client'
require_relative 'profiles/Profile_2017_10_01/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
