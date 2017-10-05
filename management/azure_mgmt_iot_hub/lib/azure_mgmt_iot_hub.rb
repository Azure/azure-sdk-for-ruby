# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2016-02-03/generated/azure_mgmt_iot_hub'
require '2017-01-19/generated/azure_mgmt_iot_hub'
require '2017-07-01/generated/azure_mgmt_iot_hub'
# Adding require for the profiles
require_relative 'profiles/Profile_2016_02_03/profile_client'
require_relative 'profiles/Profile_2017_01_19/profile_client'
require_relative 'profiles/Profile_2017_07_01/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
