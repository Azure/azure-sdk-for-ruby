# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-05-01/generated/azure_mgmt_batch'
require '2015-12-01/generated/azure_mgmt_batch'
# Adding require for the profiles
require 'profiles/Profile_2015_12_01/batch_profile_2015_12_01_profile_client'
require 'profiles/Profile_2017_05_01/batch_profile_2017_05_01_profile_client'
require 'profiles/Profile_Latest/batch_profile_latest_profile_client'
