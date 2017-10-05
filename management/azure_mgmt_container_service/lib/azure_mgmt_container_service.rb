# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-01-31/generated/azure_mgmt_container_service'
require '2016-09-30/generated/azure_mgmt_container_service'
require '2016-03-30/generated/azure_mgmt_container_service'
# Adding require for the profiles
require_relative 'profiles/Profile_2016_03_30/profile_client'
require_relative 'profiles/Profile_2016_09_30/profile_client'
require_relative 'profiles/Profile_2017_01_31/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
