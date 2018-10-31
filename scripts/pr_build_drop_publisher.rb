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

# Installation instructions
1. Download the Build Drop zip file: ```azure-sdk-for-ruby_pr#{pull_request_number}.tar.gz```.
2. Unzip the file using the following command: ```tar -xzf azure-sdk-for-ruby_pr#{pull_request_number}.tar.gz```.
3. In the Gemfile of your project, add reference to your gem. For example, if your gem is ```azure_mgmt_locks```, the reference would be: ```gem 'azure_mgmt_locks', '<VERSION_OF_GEM>', path: '<UNZIPPED_PATH>/management/azure_mgmt_locks/pkg' ```

**Note**: VERSION_OF_GEM can be found from the name of the gem file. For example, if the name of the gemfile is ```azure_mgmt_locks-0.17.1.gem```, the VERSION_OF_GEM will be ```0.17.1```.
"

gh_client = Octokit::Client.new(
    :access_token => github_access_token
)

gh_client.add_comment(
    "Azure/azure-sdk-for-ruby",
    pull_request_number,
    comment_body
)
