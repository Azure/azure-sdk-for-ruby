## 2016.11.14 - Azure Gems @version 0.7.7
* Fixing Relax mime-types gem pinning Issue [#482](https://github.com/Azure/azure-sdk-for-ruby/issues/482) PR [#518](https://github.com/Azure/azure-sdk-for-ruby/pull/518)
* Fixing Azure gem has hard dependency on JSON 1.8 and fails with newer ruby versions [#482](https://github.com/Azure/azure-sdk-for-ruby/issues/490) PR [#518](https://github.com/Azure/azure-sdk-for-ruby/pull/518)

## 2016.9.1 - Azure Gems @version 0.7.6
* Fixing Service Bus authorization with SAS [#425](https://github.com/Azure/azure-sdk-for-ruby/commit/09ab24e511889d41a1fef4755217baa595a279f5)
* Adding require for azure/core and autoload Auth::SharedAccessSigner [#443](https://github.com/Azure/azure-sdk-for-ruby/pull/443)
* Blacklist strict-transport-security, it crashes the JSON parser when receiving Service Bus messages [#432](https://github.com/Azure/azure-sdk-for-ruby/pull/432)
* Replace uuid gem with SecureRandom [#394](https://github.com/Azure/azure-sdk-for-ruby/commit/1d25e563c6c21aaa42cb77ce08bba1303656700b)

## 2016.5.2 - Azure Gems @version 0.7.5
* Require azure/core before extending serialization class with it [#383](https://github.com/Azure/azure-sdk-for-ruby/pull/383)

## 2016.4.18 - Azure Gems @version 0.7.4
* Signing key must be provided (ArgumentError) [#367](https://github.com/Azure/azure-sdk-for-ruby/issues/367)
* Can not upload file with spaces [#360](https://github.com/Azure/azure-sdk-for-ruby/issues/360)
* Updating gem to consume 'azure-core' [gem](https://rubygems.org/gems/azure-core), [Git repo](https://github.com/Azure/azure-ruby-asm-core) 

## 2016.4.12 - Azure Gems @version 0.7.3
* Support for VCR recorded test enabled
* Following Issues were addressed [April Release Closed Issues](https://github.com/Azure/azure-sdk-for-ruby/issues?q=milestone%3A%22April+Release%22+is%3Aclosed)

## 2016.03.11 Azure::ARM Gems @version 0.2.1
* fix the require for module_definition via [#327](https://github.com/Azure/azure-sdk-for-ruby/issues/327)

## 2016.03.11 Azure::ARM Gems @version 0.2.0
* azure_mgmt_compute version 0.2.0
  * http://www.rubydoc.info/gems/azure_mgmt_compute
  * added scale sets
  * warn on vm_size unknown
* azure_mgmt_network version 0.2.0
  * added express route
  * added route tables
  * breaking change: public_ip_addresses became public_ipaddresses
* azure_mgmt_resource version 0.2.0
  * added policy_assignments and policy_definitions
  * updated to the latest api_version (2015-11-01)
* azure_mgmt_storage version 0.2.0
  * update to the latest api_version (2015-06-15)
* azure_mgmt_cdn version 0.2.0
  * [Azure CDN management SDK](https://azure.microsoft.com/en-us/services/cdn/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_cdn
* azure_mgmt_authorization version 0.2.0
  * [Azure Role Based Authorization management SDK](https://azure.microsoft.com/en-us/documentation/articles/role-based-access-control-configure/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_authorization
* azure_mgmt_features version 0.2.0
  * [Azure Feature Exposure Control management SDK](https://msdn.microsoft.com/en-us/library/azure/mt592690.aspx)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_features
* azure_mgmt_graph version 0.2.0
  * [Azure Active Directory Graph SDK](https://msdn.microsoft.com/en-us/library/azure/hh974476.aspx)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_graph
* azure_mgmt_locks version 0.2.0
  * [Azure Resource Management Locks SDK](https://msdn.microsoft.com/en-us/library/azure/mt204563.aspx)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_locks
* azure_mgmt_notification_hubs
  * [Azure Notification Hubs Management SDK](https://azure.microsoft.com/en-us/documentation/services/notification-hubs/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_notification_hubs
* azure_mgmt_redis version 0.2.0
  * [Azure Redis Management SDK](https://azure.microsoft.com/en-us/services/cache/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_redis
* azure_mgmt_scheduler version 0.2.0
  * [Azure Scheduler Management SDK](https://azure.microsoft.com/en-us/services/scheduler/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_scheduler
* azure_mgmt_search version 0.2.0
  * [Azure Search Management SDK](https://azure.microsoft.com/en-us/services/search/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_search
* azure_mgmt_sql version 0.2.0
  * [Azure SQL Management SDK](https://azure.microsoft.com/en-us/services/sql-database/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_sql
* azure_mgmt_subscriptions version 0.2.0
  * [Azure Subscriptions Management SDK](https://azure.microsoft.com/en-us/services/sql-database/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_subscriptions
* azure_mgmt_web version 0.2.0
  * [Azure WebApp Managment SDK](https://azure.microsoft.com/en-us/services/app-service/web/)
  * initial release: http://www.rubydoc.info/gems/azure_mgmt_web

## 2015.8.28 - Azure version 0.7.1
* Documentation updates to the readme
* Content encoding adapted for Blobs in the case of IO or String
* Make sure that auto_generated certificate is uploaded with add_role for Cloud Services
* Fix issue of autoloading VirtualMachineDiskManagementService

## 2015.05.06 - Azure version 0.7.0.pre
* Upgraded ASM versioning to 2014-06-01
* Added the ability to use personal vm images not just gallery images
* Namespaced all of the things so there is no leakage
* Added proper support for .pfx
* Added bin to transform .publishsettings files to .pfx files
* Added support for Azure.config.management_certificate as string
* Added ms-blob-content-disposition support, bump blob `x-ms-version` header to `2013-08-15`
* Fixed KeepAlive and timeout for blobs
* VM sizes are available -- we just warn if they are not in our list
* Support for nokogiri on windows
* Ability to delete a staging deployment of a cloud service
* Peek_lock fixed for service bus
* Support for creating shared access signatures


## 2014.05.06 - Azure version 0.6.4
* Upgraded Service Management Versioning to 2014-04-01
* Created separate API for add role
* Logical Unit Number(lun) is optional argument in API add_data_disk
* Cloud service should delete only if there are no other VMs/Deployments in the cloud service
* Added more sizes(Basic_A0, Basic_A1, Basic_A2, Basic_A3, Basic_A4) options for Virtual Machine and Cloud Service.

## 2014.03.28 - Azure version 0.6.3
* Added get_cloud_service_properties method, which returns all cloud service properties (embed-detail=true), including info about all VMs
* Added winrm_http_port and winrm_https_port to get_virtual_machine method to allow the users to configure custom ports for winrm-http and winrm-https
* Checks if any ports are in use before adding a role in the existing cloud service
* Auto generate public port for add role.
* Fix issue https://github.com/Azure/azure-sdk-for-ruby/issues/130

## 2014.03.15 - Azure version 0.6.2
* Restart Virtual Machine
* Add disk to Virtual Machine
* Add/Update Virtual Machine endpoints
* Delete Virtual Machine endpoint

## 2014.02.18 - Azure version 0.6.1
* Fixed http redirection error
* Add a new role to existing deployment
* Add support for including VMs in availability sets

## 2013.12.02 - Azure version 0.6.0
* Add the following service management API
  * Virtual Machine
  * Virtual Machine Image
  * Virtual Network
  * Cloud Service
  * Storage
  * Sql Database
  * Location and Affinity Group

## 2013.04.25 - Azure version 0.5.0
* First release
* Ruby 1.9.3 and 2.0 support
* Storage support: Blob, Table and Queue
* Service Bus support: Queue, Topic/Subscription
