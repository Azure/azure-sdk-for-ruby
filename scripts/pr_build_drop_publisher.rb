# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'octokit'

github_access_token = ARGV[0]
pull_request_number = ARGV[1]
build_number        = ARGV[2]

comment_body = "
# Ruby Build Drop - Direct download
The Gem file (zipped version) could be downloaded [here](https://azuresdkci.westus2.cloudapp.azure.com/job/RubylangSDK_BuildDrop/#{build_number}/Azure/processDownloadRequest/azure-sdk-for-ruby/pullrequests/#{pull_request_number}/azure-sdk-for-ruby_pr#{pull_request_number}.tar.gz).
"

gh_client = Octokit::Client.new(
    :access_token => github_access_token
)

gh_client.add_comment(
  "Azure/azure-sdk-for-ruby",
  pull_request_number,
  comment_body
)
