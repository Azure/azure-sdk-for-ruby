# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2016-06-01/generated/azure_mgmt_recovery_services_backup'
require '2016-08-10/generated/azure_mgmt_recovery_services_backup'
require '2016-12-01/generated/azure_mgmt_recovery_services_backup'
require '2017-07-01/generated/azure_mgmt_recovery_services_backup'
# Adding require for the profiles
require_relative 'profiles/Profile_2016_06_01/profile_client'
require_relative 'profiles/Profile_2016_08_10/profile_client'
require_relative 'profiles/Profile_2016_12_01/profile_client'
require_relative 'profiles/Profile_2017_07_01/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
