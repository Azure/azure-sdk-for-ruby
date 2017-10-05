# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2015-08-01/generated/azure_mgmt_event_hub'
require '2017-04-01/generated/azure_mgmt_event_hub'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_08_01/profile_client'
require_relative 'profiles/Profile_2017_04_01/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
