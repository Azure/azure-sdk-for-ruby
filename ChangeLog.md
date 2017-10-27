## 2017.10.30 - Azure ARM version 0.15.1

* Regened all azure_mgmt_* sdks using [Autorest.2.0.4168](https://www.npmjs.com/package/autorest)(core) and [Autorest.Ruby.3.0.20](https://www.npmjs.com/package/@microsoft.azure/autorest.ruby) for release of ARM version 0.15.1
* Fixed the [Issue #1092](https://github.com/Azure/azure-sdk-for-ruby/issues/1092) of passing tenant id, client id, client secret etc. Refer [PR #1090](https://github.com/Azure/azure-sdk-for-ruby/pull/1090) for further details.
* Moved Azure::ARM::Configurable to Azure::Common::Configurable and Azure::ARM::Default to Azure::Common::Default.Refer [PR #1090](https://github.com/Azure/azure-sdk-for-ruby/pull/1090) for further details.

## 2017.10.17 - Azure ARM version 0.15.0

* Each gem include multiple api-versions (namespace example: "Azure::Compute::Mgmt::V2017_03_30").
* Profiles are introduced:
  - There are 2 profiles defined for 'azure-sdk': "Azure::Profiles::Latest" and "Azure::Profiles::V2017_03_09".
  - Each gem has minimally a "latest" profile defined, example: "Azure::Compute::Profiles::Latest::Mgmt"
* All gems are regenerated with @microsoft.azure/autorest.ruby@3.0.20 and  @microsoft.azure/autorest-core@2.0.4147
* Included changes to Azure specs up to [7aa3a5247895ba34d6cfec73e036bb66dc907d20](https://github.com/Azure/azure-rest-api-specs/tree/7aa3a5247895ba34d6cfec73e036bb66dc907d20/specification)


## 2017.10.09 - Azure ARM version 0.14.0

* Regened all azure_mgmt_* sdks using [Autorest.2.0.4147](https://www.npmjs.com/package/autorest)(core) and [Autorest.Ruby.2.0.17](https://www.npmjs.com/package/@microsoft.azure/autorest.ruby) for release of ARM version 0.14.0
* Added new gems:
  - [azure_mgmt_automation](https://rubygems.org/gems/azure_mgmt_automation)
  - [azure_mgmt_billing](https://rubygems.org/gems/azure_mgmt_billing)
  - [azure_mgmt_consumption](https://rubygems.org/gems/azure_mgmt_consumption)
  - [azure_mgmt_container_instance](https://rubygems.org/gems/azure_mgmt_container_instance)
  - [azure_mgmt_customer_insights](https://rubygems.org/gems/azure_mgmt_customer_insights)
  - [azure_mgmt_event_grid](https://rubygems.org/gems/azure_mgmt_event_grid)
  - [azure_mgmt_links](https://rubygems.org/gems/azure_mgmt_links)
  - [azure_mgmt_managed_applications](https://rubygems.org/gems/azure_mgmt_managed_applications)
  - [azure_mgmt_marketplace_ordering](https://rubygems.org/gems/azure_mgmt_marketplace_ordering)
  - [azure_mgmt_operational_insights](https://rubygems.org/gems/azure_mgmt_operational_insights)
  - [azure_mgmt_recovery_services_site_recovery](https://rubygems.org/gems/azure_mgmt_recovery_services_site_recovery)
  - [azure_mgmt_relay](https://rubygems.org/gems/azure_mgmt_relay)
  - [azure_mgmt_resources_management](https://rubygems.org/gems/azure_mgmt_resources_management)
  - [azure_mgmt_service_fabric](https://rubygems.org/gems/azure_mgmt_service_fabric)
  - [azure_mgmt_stor_simple8000_series](https://rubygems.org/gems/azure_mgmt_stor_simple8000_series)

## 2017.09.28 - Azure Container Registry version 0.13.0
* Released [azure_mgmt_container_registry](https://rubygems.org/gems/azure_mgmt_container_registry) version 0.13.0. Refer [PR# 1007](https://github.com/Azure/azure-sdk-for-ruby/pull/1007) and latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/65a45deed027ed8e428b18e7a6da8ea83bc68f21/specification/containerregistry/resource-manager/readme.md) for further details.

## 2017.09.27 - Azure ARM version 0.13.0

* Regened all azure_mgmt_* sdks using [Autorest.2.0.4144](https://www.npmjs.com/package/autorest)(core) and [Autorest.Ruby.2.0.15](https://www.npmjs.com/package/@microsoft.azure/autorest.ruby) for release of ARM version 0.13.0
* Updated [azure_mgmt_cognitive_services](https://rubygems.org/gems/azure_mgmt_cognitive_services) operations Update, Delete, GetProperties, ListKeys, RegenerateKey & ListSkus from CognitiveServiceAccounts group to Accounts group. Refer [PR #989](https://github.com/Azure/azure-sdk-for-ruby/pull/989) and [PR #1707](https://github.com/Azure/azure-rest-api-specs/pull/1707) for further details.
* Updated [azure_mgmt_compute](https://rubygems.org/gems/azure_mgmt_compute) with Availabilty zones, Vmss rolling upgrade, Vmss patch and Vm instance view APIs. Refer [PR #999](https://github.com/Azure/azure-sdk-for-ruby/pull/999) and latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/0c2a12b50d8598f68d6715b507f7dd53e163407e/specification/compute/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_event_hub](https://rubygems.org/gems/azure_mgmt_event_hub) with new APIs related to disaster recovery. Refer [PR #1000](https://github.com/Azure/azure-sdk-for-ruby/pull/1000) and latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/acdca6054048e17353095a02989e4567f699b05f/specification/eventhub/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_graph](https://rubygems.org/gems/azure_mgmt_graph) models User, UserUpdateParameters, UserCreateParameters with new attributes. Refer [PR #992](https://github.com/Azure/azure-sdk-for-ruby/pull/992) and latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/143dbb7c39a63afbb81740f89407a2e4d2f55d0e/specification/graphrbac/data-plane/readme.md) for further details.
* Updated [azure_mgmt_media_services](https://rubygems.org/gems/azure_mgmt_media_services) model CheckNameAvailabilityOutput, the serialized names: NameAvailable, Reason & Message have been changed to nameAvailable, reason & message respectively. Refer [PR #974](https://github.com/Azure/azure-sdk-for-ruby/pull/974) and latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/b88ba52c9becb9ad2f7f83d8da6610119327dfc3/specification/mediaservices/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_monitor](https://rubygems.org/gems/azure_mgmt_monitor):
  * ServiceDiagnosticSettingsOperations has been changed to DiagnosticSettingsOperations
  * ServiceDiagnosticSettingsResource has been changed to DiagnosticSettingsResource
  * ServiceDiagnosticSettingsResourcePatch has been removed. Refer [PR #979](https://github.com/Azure/azure-sdk-for-ruby/pull/979) and latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/97e69db426af23a0cdfde5e5df748565ff1070b8/specification/monitor/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_network](https://rubygems.org/gems/azure_mgmt_network) to latest API version 2017-09-01 and includes Availability zone feature. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/1a88e3f49b78c6ec74f9174115e5233cb6fe20c4/specification/network/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_service_bus](https://rubygems.org/gems/azure_mgmt_service_bus) with new APIs related to disaster recovery. Refer [PR #1001](https://github.com/Azure/azure-sdk-for-ruby/pull/1001) and latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/072a4331fe088b4ca0d72534ba89078c87ce1000/specification/servicebus/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_storage](https://rubygems.org/gems/azure_mgmt_storage) operation SKU to Sku. Refer [PR #965](https://github.com/Azure/azure-sdk-for-ruby/pull/965) and latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/87c3a2d9559462a39543c7d630b936c521fafbca/specification/storage/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_traffic_manager](https://rubygems.org/gems/azure_mgmt_traffic_manager) with new features related to RealUserMetricsKey and HeatMap.Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/4e092c07e412fb2007ef5cfe4daaaf8a75d95729/specification/trafficmanager/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_web](https://rubygems.org/gems/azure_mgmt_web) with several new changes. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/5a2e2ed0fe36ca88c6abd339523b23a6280240e6/specification/web/resource-manager/readme.md) for further details.
* Updated [azure_sdk](https://rubygems.org/gems/azure_sdk) dependency with [azure-storage](https://rubygems.org/gems/azure-storage) version 0.13.0.preview.

## 2017.09.11 - Azure ARM version 0.12.0

* Regened all azure_mgmt_* sdks using [AutoRest 1.9.3](https://www.npmjs.com/package/@microsoft.azure/autorest.ruby) for release of ARM version 0.12.0
* Updated all azure_mgmt_* sdks to use [ms_rest_azure version 0.9.0](https://rubygems.org/gems/ms_rest_azure/versions/0.9.0) to include MSI based authentication
* **Skipped** generation of `azure_mgmt_traffic_manager` due to https://github.com/Azure/autorest.ruby/pull/7
* **Skipped** generation of `azure_mgmt_web` due to https://github.com/Azure/azure-sdk-for-ruby/issues/957

## 2017.07.19 - Azure ARM version 0.11.0

* Regened all azure_mgmt_* sdks using [AutoRest.1.2.2.0](https://github.com/Azure/autorest/tree/v1.2.2) for release of ARM version 0.11.0
* Updated [azure_mgmt_analysis_services](https://rubygems.org/gems/azure_mgmt_analysis_services) 
  * Replaced configuration object with uri string 
  * Added new endpoint to read skus and removed hard coded sku values.Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/analysisservices/resource-manager/readme.md)
* Updated [azure_mgmt_batch] (https://rubygems.org/gems/azure_mgmt_batch) to latest API version 2017-05-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/batch/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_cognitive_services](https://rubygems.org/gems/azure_mgmt_cognitive_services) to latest API version 2017-04-18. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/cognitiveservices/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_compute](https://rubygems.org/gems/azure_mgmt_compute) to latest API version 2017-03-30. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/compute/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_devtestlabs](https://rubygems.org/gems/azure_mgmt_devtestlabs) with new properties for virtual machine creation, introduced new resource models, removed existing resource models. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/devtestlabs/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_event_hub](https://rubygems.org/gems/azure_mgmt_event_hub) to latest API version 2017-04-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/eventhub/resource-manager/readme.md) for further details.
* Replaced [azure_mgmt_insights](https://rubygems.org/gems/azure_mgmt_insights) with new gem [azure_mgmt_monitor](https://rubygems.org/gems/azure_mgmt_monitor)
* Updated [azure_mgmt_iot_hub](https://rubygems.org/gems/azure_mgmt_iot_hub) to latest API version 2017-01-19.  Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/iothub/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_key_vault](https://rubygems.org/gems/azure_mgmt_key_vault) to latest API version 2016-10-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/keyvault/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_logic](https://rubygems.org/gems/azure_mgmt_logic) that several model names have been modified. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/logic/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_machine_learning](https://rubygems.org/gems/azure_mgmt_machine_learning) to latest API version 2017-01-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/machinelearning/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_network](https://rubygems.org/gems/azure_mgmt_network) to latest API version 2017-06-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/network/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_notification_hubs](https://rubygems.org/gems/azure_mgmt_notification_hubs) to latest API version 2017-04-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/notificationhubs/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_recovery_services](https://rubygems.org/gems/azure_mgmt_recovery_services) to latest API version 2016-12-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/recoveryservices/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_redis](https://rubygems.org/gems/azure_mgmt_redis) to latest API version 2017-02-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/redis/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_resources](https://rubygems.org/gems/azure_mgmt_resources) to latest API version 2017-05-10. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/resources/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_service_bus](https://rubygems.org/gems/azure_mgmt_service_bus) to latest API version 2017-04-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/servicebus/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_sql](https://rubygems.org/gems/azure_mgmt_sql). Removed blob auditing policies, threat detection policies, etc. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/sql/resource-manager/readme.md) for full list of changes.
* Updated [azure_mgmt_storage](https://rubygems.org/gems/azure_mgmt_storage) to latest API version 2017-06-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/storage/resource-manager/readme.md) for further details.
* Released [azure_mgmt_stream_analytics](https://rubygems.org/gems/azure_mgmt_stream_analytics) gem.
* Updated [azure_mgmt_subscriptions](https://rubygems.org/gems/azure_mgmt_subscriptions) and removed tenant id from the subscriptions model. Refer [PR #1147](https://github.com/Azure/azure-rest-api-specs/pull/1147) for further details.
* Updated [azure_mgmt_traffic_manager](https://rubygems.org/gems/azure_mgmt_traffic_manager) to latest API version 2017-05-01. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/trafficmanager/resource-manager/readme.md) for further details.
* Updated [azure_mgmt_web](/azure_mgmt_web) and renamed several models and properties, updated webapps API to latest version and modified operation IDs. Refer latest [specification](https://github.com/Azure/azure-rest-api-specs/blob/current/specification/web/resource-manager/readme.md) for further details.


## 2017.03.06 - Azure ARM version 0.10.0

All issues associated with this milestone can be found using this [filter](https://github.com/Azure/azure-sdk-for-ruby/issues?utf8=%E2%9C%93&q=milestone%3Av0.10.0-arm%20).

* Regened all azure_mgmt_* sdks using AutoRest.1.0.1-20170301-2300-nightly for release of ARM version 0.10.0
* Updated [azure_mgmt_network](https://rubygems.org/gems/azure_mgmt_network) with (Network Watchers API)(https://github.com/Azure/azure-rest-api-specs/blob/master/arm-network/2016-09-01/swagger/networkWatcher.json)
* Updated [azure_mgmt_batch](https://rubygems.org/gems/azure_mgmt_batch) to latest API version [2017-01-01](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-batch/2017-01-01/swagger/BatchManagement.json) and changed error object from ErrorBody to CloudError.
* Updated [azure_mgmt_cdn](https://rubygems.org/gems/azure_mgmt_cdn) by adding pageable to [CDN Edgenode List](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-cdn/2016-10-02/swagger/cdn.json) and added new release of enable/disable CDN.
* Updated [azure_mgmt_commerce](https://rubygems.org/gems/azure_mgmt_commerce). Updated [MeterInfo and Offerterms](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-commerce/2015-06-01-preview/swagger/commerce.json)
* Updated [azure_mgmt_event_hub](https://rubygems.org/gems/azure_mgmt_event_hub) with new [properties](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-eventhub/2015-08-01/swagger/EventHub.json)
* Updated [azure_mgmt_service_bus](https://rubygems.org/gems/azure_mgmt_service_bus) with new [properties](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-servicebus/2015-08-01/swagger/servicebus.json)
* Updated [azure_mgmt_sql](https://rubygems.org/gems/azure_mgmt_sql) with new $filter param to [list databases](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-sql/2014-04-01/swagger/sql.core.json)
* Updated [azure_mgm_web](https://rubygems.org/gems/azure_mgmt_web). Removed the publishingcredentials API and re-added the publishingUsers API.
* Updated [azure_mgmt_insights](https://rubygems.org/gems/azure_mgmt_insights). Generated package to monitor.
* Updated [azure_mgmt_redis](https://rubygems.org/gems/azure_mgmt_redis) with new responses.
* Bug fixes and updated swagger specs

## 2017.02.07 - Azure ARM version 0.9.0

All issues associated with this milestone can be found using this [filter](https://github.com/Azure/azure-sdk-for-ruby/issues?utf8=%E2%9C%93&q=milestone%3Av0.9.0-arm).

* Regened all azure_mgmt_* sdks using [AutoRest.1.0.0-Nightly20170202](https://www.myget.org/feed/autorest/package/nuget/AutoRest/1.0.0-Nightly20170202) for release of ARM version 0.9.0
* Updated gemspec of all azure_mgmt_* sdks to use [ms_rest_azure](https://rubygems.org/gems/ms_rest_azure) version [~>0.7.0](https://rubygems.org/gems/ms_rest_azure/versions/0.7.0)
* Updated [azure_mgmt_policy](https://rubygems.org/gems/azure_mgmt_policy) to latest API version [2016-12-01](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-resources/policy/2016-12-01/swagger/policy.json)
* Updated [azure_mgmt_storage](https://rubygems.org/gems/azure_mgmt_storage) to latest API version [2016-12-01](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-storage/2016-12-01/swagger/storage.json)
* Updated [azure-sdk](https://rubygems.org/gems/azure_sdk) to use azure_mgmt_* sdks version 0.9.0
* Updated [azure_sdk](https://rubygems.org/gems/azure_sdk) to latest [azure-storage](https://rubygems.org/gems/azure-storage) version [0.11.5.preview](https://rubygems.org/gems/azure-storage/versions/0.11.5.preview)
* Bug fixes and updated swagger specs

## 2016.11.16 - Azure ARM version 0.8.0

All issues associated with this milestone can be found using this [filter](https://github.com/Azure/azure-sdk-for-ruby/issues?utf8=%E2%9C%93&q=milestone%3Av0.8.0-arm).

* Regened all azure_mgmt_* sdks using [AutoRest.1.0.0-Nightly20161114](https://www.myget.org/feed/autorest/package/nuget/AutoRest/1.0.0-Nightly20161114) for release of ARM version 0.8.0
* Updated gemspec of all azure_mgmt_* sdks to use [ms_rest_azure](https://rubygems.org/gems/ms_rest_azure) version [~>0.6.2](https://rubygems.org/gems/ms_rest_azure/versions/0.6.2) for telemetry
* Updated [azure_mgmt_datalake_analytics](https://rubygems.org/gems/azure_mgmt_datalake_analytics) to latest API version [2016-11-01](https://github.com/Azure/azure-rest-api-specs/commits/master/arm-datalake-analytics/account/2016-11-01/swagger/account.json)
* Updated [azure_mgmt_datalake_store](https://rubygems.org/gems/azure_mgmt_datalake_store) to latest API version [2016-11-01](https://github.com/Azure/azure-rest-api-specs/blob/master/arm-datalake-store/account/2016-11-01/swagger/account.json)
* Updated [azure_sdk](https://rubygems.org/gems/azure_sdk) to latest [azure-storage](https://rubygems.org/gems/azure-storage) version [0.11.3.preview](https://rubygems.org/gems/azure-storage/versions/0.11.3.preview)
* Bug fixes and updated swagger specs

## 2016.10.13 - Azure ARM version 0.7.0
* Regenerated ARM sdk with Autorest [autorest 0.17.0-nightly20161012](https://www.myget.org/feed/autorest/package/nuget/AutoRest/0.17.0-Nightly20161012)
* Bug fixes and updated swagger specs

## 2016.09.15 - Azure ARM version 0.6.0
* Regenerated ARM sdk with Autorest [autorest.0.17.0](https://github.com/Azure/autorest/commit/0968b9c70382d3d50709fe5fc6cccd22491c2c4c)
* Releasing new azure_sdk top level gem 
* Bug fixes and updated swagger specs

## 2016.08.10 - Azure ARM version 0.5.0
* Regenerated ARM sdk with Autorest [autorest.0.17.0](https://github.com/Azure/autorest/commit/1953ece83181dbee16e715bb0d506c803d4b8452)
* Releasing azure_mgmt_iot_hub & azure_mgmt_mobile_engagement sdk

## 2016.07.21 - Azure ARM version 0.4.0
* Regenerated ARM sdk with Autorest [autorest.0.17.0](https://github.com/Azure/autorest/commit/b54f66a4f6ddbe5d733b2e995ed29dac696c135e) along with new available swagger spec from [azure-rest-api-specs](https://github.com/Azure/azure-rest-api-specs)
* Releasing following new azure_mgmt_* gems
    * azure_mgmt_batch
    * azure_mgmt_cognitive_services
    * azure_mgmt_commerce
    * azure_mgmt_datalake_analytics
    * azure_mgmt_datalake_store
    * azure_mgmt_devtestlabs
    * azure_mgmt_dns
    * azure_mgmt_key_vault
    * azure_mgmt_logic
    * azure_mgmt_machine_learning
    * azure_mgmt_media_services
    * azure_mgmt_policy
    * azure_mgmt_powerbi_embedded
    * azure_mgmt_server_management
    * azure_mgmt_traffic_manager

## 2016.05.23 - Azure ARM version 0.3.1
* Regenerated ARM sdk with Autorest [autorest.0.17.0-Nightly20160519](https://www.myget.org/feed/autorest/package/nuget/autorest/0.17.0-Nightly20160522)
* Updating gemspec files to use the correct [homepage](https://github.com/Azure/azure-sdk-ruby) for each gem

## 2016.05.23 - Azure ARM version 0.3.0
* Regenerated ARM sdk with Autorest [autorest.0.17.0-Nightly20160519](https://www.myget.org/feed/autorest/package/nuget/autorest/0.17.0-Nightly20160522)
* Regenerated ARM sdk for newest published swagger specs from azure-rest-api-specs
    * azure_mgmt_cdn 2015-06-01 -> 2016-04-02
    * azure_mgmt_compute 2015-06-15 -> 2016-03-30
    * azure_mgmt_network 2015-06-15 -> 2016-03-30
    * azure_mgmt_resources 2015-11-01 -> 2016-02-01
    * azure_mgmt_scheduler 2016-01-01 -> 2016-03-01
    * azure_mgtm_storage 2015-06-15 -> 2016-01-01
* Updated tests to match new sdk
* Updated autorest location to point to environmental variable
* Updated min version of ms_rest_azure gem to 0.2.3
* Updated version of gems to 0.3.0 due to following breaking change:
    * introduced sync and async versions of operations

## 2016.05.05 - Azure ARM version 0.2.1
* Initializing repo after split from azure-sdk-for-ruby