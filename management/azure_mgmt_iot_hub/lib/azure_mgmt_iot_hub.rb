# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2016-02-03/generated/azure_mgmt_iot_hub'
require '2017-01-19/generated/azure_mgmt_iot_hub'
require '2017-07-01/generated/azure_mgmt_iot_hub'
# Adding require for the profiles
require 'profiles/Profile_2016_02_03/iothub_profile_2016_02_03_profile_client'
require 'profiles/Profile_2017_01_19/iothub_profile_2017_01_19_profile_client'
require 'profiles/Profile_2017_07_01/iothub_profile_2017_07_01_profile_client'
require 'profiles/Profile_Latest/iothub_profile_latest_profile_client'
