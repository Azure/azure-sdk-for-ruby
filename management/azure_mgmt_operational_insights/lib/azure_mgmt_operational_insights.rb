# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2015-11-01-preview/generated/azure_mgmt_operational_insights'
require '2015-03-20/generated/azure_mgmt_operational_insights'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_03_20/profile_client'
require_relative 'profiles/Profile_2015_11_01_Preview/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
