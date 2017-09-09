##2017.09.11 ms_rest_azure version 0.9.0
* [Breaking Change] Managed Service Identity authentication to acquire token does not require `tenant_id`.[Issue #930](https://github.com/Azure/azure-sdk-for-ruby/issues/930) [PR #931](https://github.com/Azure/azure-sdk-for-ruby/pull/931)

##2017.08.28 ms_rest_azure version 0.8.2
* Enable Managed Service Identity authentication features into ms_rest_azure runtime for azure_mgmt_* sdks.[Issue #884](https://github.com/Azure/azure-sdk-for-ruby/issues/884) [PR #889](https://github.com/Azure/azure-sdk-for-ruby/pull/889)

##2017.07.10 ms_rest_azure version 0.8.1
* [Bug Fix] Fixed the issue with the polling status object to handle the response code and provisioning status correctly.[Issue #817](https://github.com/Azure/azure-sdk-for-ruby/issues/817) [PR #828](https://github.com/Azure/azure-sdk-for-ruby/pull/828)

##2017.06.30 ms_rest_azure version 0.8.0
* [Breaking Change] Changed the name of the azure environments from 'Azure' to 'AzureCloud' and 'AzureChina' to 'AzureChinaCloud'.[Issue #600](https://github.com/Azure/azure-sdk-for-ruby/issues/600) [PR #711](https://github.com/Azure/azure-sdk-for-ruby/pull/711)
* Added 'Accept' header with the value 'application/json'.[Issue #701](https://github.com/Azure/azure-sdk-for-ruby/issues/701) [PR #710](https://github.com/Azure/azure-sdk-for-ruby/pull/710)

##2017.02.06 ms_rest_azure version 0.7.0
* [Breaking Change] Correcting typo in `storage_endpoint_suffix` key for azure environments [Issue #603](https://github.com/Azure/azure-sdk-for-ruby/issues/603) [PR #604](https://github.com/Azure/azure-sdk-for-ruby/pull/604)
* [Breaking Change] Handling custom deserialization block in `MsRestAzure::AzureServiceClient.update_state_from_azure_async_operation_header` [PR #656](https://github.com/Azure/azure-sdk-for-ruby/pull/656)
* Adding `resource_group` property on MsRestAzure::Resource to be populated with Azure resource group name when available from `id` [Issue 340](https://github.com/Azure/azure-sdk-for-ruby/issues/340) [PR #620](https://github.com/Azure/azure-sdk-for-ruby/pull/620)
* Deriving `MsREstAzure::Resource` from `MsRestAzure::SubResource` to share `id` property [PR #663](https://github.com/Azure/azure-sdk-for-ruby/pull/663)

##2016.11.14 ms_rest_azure version 0.6.2
* Update to ms_rest v0.6.2 due to fix for missing default ca-cert for providing ssl options [#580](https://github.com/Azure/azure-sdk-for-ruby/issues/580)

##2016.11.11 ms_rest_azure version 0.6.1
* Adding telemetry extension point into AzureServiceClient [#543](https://github.com/Azure/azure-sdk-for-ruby/pull/543)
* Removing explicit json dependency [#523](https://github.com/Azure/azure-sdk-for-ruby/pull/523)

##2016.10.05 ms_rest_azure version 0.6.0
* Minimum supported Ruby version is 2.0.0 [#1463](https://github.com/Azure/autorest/pull/1463)
* Implemented generic request method for AzureServiceClient [#1447](https://github.com/Azure/autorest/pull/1447)
* Improved AzureOperationError class to expose error_message and error_code properties [#1450](https://github.com/Azure/autorest/pull/1450)

##2016.09.15 ms_rest_azure version 0.5.0
* Updating ms_rest dependency to version 0.5.0
* Adding known Azure Environments in ruby runtime for easy discovery
* Default Azure active directory url is updated from `https://login.windows.net/` to `https://login.microsoftonline.com/` (Breaking Change)
* Using bundled default ca-cert from ms_rest

##2016.08.10 ms_rest_azure version 0.4.0
* Adding & inheriting serialization class from ms_rest generic serializer

##2016.07.21 ms_rest_azure version 0.3.1
* [Bug fixes](https://github.com/Azure/autorest/commit/ede944a1fa30a7453aa30e6fa79154dc43393cdf)

##2016.07.14 ms_rest_azure version 0.3.0
* Embracing latest ms_rest version [0.3.0](https://rubygems.org/gems/ms_rest)

##2016.05.19 ms_rest_azure version 0.2.3
* Support patch for long running operations. See [#1011](https://github.com/Azure/autorest/pull/1011), [#1056](https://github.com/Azure/autorest/pull/1056)
