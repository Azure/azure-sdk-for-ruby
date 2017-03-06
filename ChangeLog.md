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