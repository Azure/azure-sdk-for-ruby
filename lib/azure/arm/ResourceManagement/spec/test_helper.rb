#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------

require 'azure_resource_management'
require 'ms_rest_azure'

include MsRestAzure
include AzureResourceManagement

ResourceGroup = 'RubySDKTest'

AccessToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6Ik1uQ19WWmNBVGZNNXBPWWlKSE1iYTlnb0VLWSIsImtpZCI6Ik1uQ19WWmNBVGZNNXBPWWlKSE1iYTlnb0VLWSJ9.eyJhdWQiOiJodHRwczovL21hbmFnZW1lbnQuY29yZS53aW5kb3dzLm5ldC8iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC83MmY5ODhiZi04NmYxLTQxYWYtOTFhYi0yZDdjZDAxMWRiNDcvIiwiaWF0IjoxNDM3NDk1ODQ4LCJuYmYiOjE0Mzc0OTU4NDgsImV4cCI6MTQzNzQ5OTc0OCwidmVyIjoiMS4wIiwidGlkIjoiNzJmOTg4YmYtODZmMS00MWFmLTkxYWItMmQ3Y2QwMTFkYjQ3Iiwib2lkIjoiNzdjMWI0NTgtZGFhYS00OWUxLWFlZWYtNmRkNWI1ODU2OTk5IiwiZW1haWwiOiJkbWl0cnkuYmFya2Fsb3ZAYWt2ZWxvbi5jb20iLCJwdWlkIjoiMTAwMzdGRkU5MTY3NTQ0RCIsImlkcCI6ImxpdmUuY29tIiwiYWx0c2VjaWQiOiIxOmxpdmUuY29tOjAwMDNCRkZEQ0UzMjlENUYiLCJzdWIiOiJGZnoyV1VUNTM2XzFiaHJzT2kzOTd5WGhvX0dzUF84ZWZmWXFnTW1DSU9VIiwiZ2l2ZW5fbmFtZSI6IkRtaXRyaXkiLCJmYW1pbHlfbmFtZSI6IkJhcmthbG92IiwibmFtZSI6ImRtaXRyeS5iYXJrYWxvdkBha3ZlbG9uLmNvbSIsImFtciI6WyJwd2QiXSwidW5pcXVlX25hbWUiOiJsaXZlLmNvbSNkbWl0cnkuYmFya2Fsb3ZAYWt2ZWxvbi5jb20iLCJhcHBpZCI6IjA0YjA3Nzk1LThkZGItNDYxYS1iYmVlLTAyZjllMWJmN2I0NiIsImFwcGlkYWNyIjoiMCIsInNjcCI6InVzZXJfaW1wZXJzb25hdGlvbiIsImFjciI6IjEifQ.TsLLUJ-Bs3ElDc_qyddyiQi0NXPrhcUdqrls0u5_Lxz-JWDk0gZalB2z_h6tTvM-lZj0F-VIZZE9i1TOzxV8gebVWDaaCTMt1J_XgoAYcoPMILrJpSoIOsKiMh3yAVLvKrBh0AVK6kfQZ4iBfhBVJ-OwkNT_Df7OHTrw5kA0D05I8kc1rTQS51yjaq4H7Rg18cT3EHahzp0ynTjCZqUz6f14TJNvcuKde_e-h2BWqWR7ecULLQ_cdgVyccIT138o63aZVzbSde3XsMLkp2QYofWgPkIst7A6ivTxnuHrfE-8dR28aZ8YLg9KeMOVLYJ_j_7_UISqwoiFJbmc4p93mw'
SubscriptionId = '02286c5c-1f73-4bd4-82b7-761b50edfa78'

token_credential = TokenCloudCredentials.new(SubscriptionId, AccessToken)
Client = ResourceManagementClient.new(token_credential)
Client.subscription_id = SubscriptionId
