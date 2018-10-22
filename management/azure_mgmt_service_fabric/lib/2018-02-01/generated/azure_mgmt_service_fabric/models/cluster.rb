# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2018_02_01
  module Models
    #
    # The cluster resource
    #
    #
    class Cluster < Resource

      include MsRestAzure

      # @return [Array<Enum>] The list of add-on features to enable in the
      # cluster.
      attr_accessor :add_on_features

      # @return [Array<ClusterVersionDetails>] The Service Fabric runtime
      # versions available for this cluster.
      attr_accessor :available_cluster_versions

      # @return [AzureActiveDirectory] The AAD authentication settings of the
      # cluster.
      attr_accessor :azure_active_directory

      # @return [CertificateDescription] The certificate to use for securing
      # the cluster. The certificate provided will be used for node to node
      # security within the cluster, SSL certificate for cluster management
      # endpoint and default admin client.
      attr_accessor :certificate

      # @return [ServerCertificateCommonNames] Describes a list of server
      # certificates referenced by common name that are used to secure the
      # cluster.
      attr_accessor :certificate_common_names

      # @return [Array<ClientCertificateCommonName>] The list of client
      # certificates referenced by common name that are allowed to manage the
      # cluster.
      attr_accessor :client_certificate_common_names

      # @return [Array<ClientCertificateThumbprint>] The list of client
      # certificates referenced by thumbprint that are allowed to manage the
      # cluster.
      attr_accessor :client_certificate_thumbprints

      # @return [String] The Service Fabric runtime version of the cluster.
      # This property can only by set the user when **upgradeMode** is set to
      # 'Manual'. To get list of available Service Fabric versions for new
      # clusters use [ClusterVersion API](./ClusterVersion.md). To get the list
      # of available version for existing clusters use
      # **availableClusterVersions**.
      attr_accessor :cluster_code_version

      # @return [String] The Azure Resource Provider endpoint. A system service
      # in the cluster connects to this  endpoint.
      attr_accessor :cluster_endpoint

      # @return [String] A service generated unique identifier for the cluster
      # resource.
      attr_accessor :cluster_id

      # @return [Enum] The current state of the cluster.
      #
      # - WaitingForNodes - Indicates that the cluster resource is created and
      # the resource provider is waiting for Service Fabric VM extension to
      # boot up and report to it.
      # - Deploying - Indicates that the Service Fabric runtime is being
      # installed on the VMs. Cluster resource will be in this state until the
      # cluster boots up and system services are up.
      # - BaselineUpgrade - Indicates that the cluster is upgrading to
      # establishes the cluster version. This upgrade is automatically
      # initiated when the cluster boots up for the first time.
      # - UpdatingUserConfiguration - Indicates that the cluster is being
      # upgraded with the user provided configuration.
      # - UpdatingUserCertificate - Indicates that the cluster is being
      # upgraded with the user provided certificate.
      # - UpdatingInfrastructure - Indicates that the cluster is being upgraded
      # with the latest Service Fabric runtime version. This happens only when
      # the **upgradeMode** is set to 'Automatic'.
      # - EnforcingClusterVersion - Indicates that cluster is on a different
      # version than expected and the cluster is being upgraded to the expected
      # version.
      # - UpgradeServiceUnreachable - Indicates that the system service in the
      # cluster is no longer polling the Resource Provider. Clusters in this
      # state cannot be managed by the Resource Provider.
      # - AutoScale - Indicates that the ReliabilityLevel of the cluster is
      # being adjusted.
      # - Ready - Indicates that the cluster is in a stable state.
      # . Possible values include: 'WaitingForNodes', 'Deploying',
      # 'BaselineUpgrade', 'UpdatingUserConfiguration',
      # 'UpdatingUserCertificate', 'UpdatingInfrastructure',
      # 'EnforcingClusterVersion', 'UpgradeServiceUnreachable', 'AutoScale',
      # 'Ready'
      attr_accessor :cluster_state

      # @return [DiagnosticsStorageAccountConfig] The storage account
      # information for storing Service Fabric diagnostic logs.
      attr_accessor :diagnostics_storage_account_config

      # @return [Array<SettingsSectionDescription>] The list of custom fabric
      # settings to configure the cluster.
      attr_accessor :fabric_settings

      # @return [String] The http management endpoint of the cluster.
      attr_accessor :management_endpoint

      # @return [Array<NodeTypeDescription>] The list of node types in the
      # cluster.
      attr_accessor :node_types

      # @return [ProvisioningState] The provisioning state of the cluster
      # resource. Possible values include: 'Updating', 'Succeeded', 'Failed',
      # 'Canceled'
      attr_accessor :provisioning_state

      # @return [Enum] The reliability level sets the replica set size of
      # system services. Learn about
      # [ReliabilityLevel](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cluster-capacity).
      #
      # - None - Run the System services with a target replica set count of 1.
      # This should only be used for test clusters.
      # - Bronze - Run the System services with a target replica set count of
      # 3. This should only be used for test clusters.
      # - Silver - Run the System services with a target replica set count of
      # 5.
      # - Gold - Run the System services with a target replica set count of 7.
      # - Platinum - Run the System services with a target replica set count of
      # 9.
      # . Possible values include: 'None', 'Bronze', 'Silver', 'Gold',
      # 'Platinum'
      attr_accessor :reliability_level

      # @return [CertificateDescription] The server certificate used by reverse
      # proxy.
      attr_accessor :reverse_proxy_certificate

      # @return [ServerCertificateCommonNames] Describes a list of server
      # certificates referenced by common name that are used to secure the
      # cluster.
      attr_accessor :reverse_proxy_certificate_common_names

      # @return [ClusterUpgradePolicy] The policy to use when upgrading the
      # cluster.
      attr_accessor :upgrade_description

      # @return [Enum] The upgrade mode of the cluster when new Service Fabric
      # runtime version is available.
      #
      # - Automatic - The cluster will be automatically upgraded to the latest
      # Service Fabric runtime version as soon as it is available.
      # - Manual - The cluster will not be automatically upgraded to the latest
      # Service Fabric runtime version. The cluster is upgraded by setting the
      # **clusterCodeVersion** property in the cluster resource.
      # . Possible values include: 'Automatic', 'Manual'
      attr_accessor :upgrade_mode

      # @return [String] The VM image VMSS has been configured with. Generic
      # names such as Windows or Linux can be used.
      attr_accessor :vm_image


      #
      # Mapper for Cluster class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Cluster',
          type: {
            name: 'Composite',
            class_name: 'Cluster',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              add_on_features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.addOnFeatures',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'enumElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              available_cluster_versions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.availableClusterVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClusterVersionDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClusterVersionDetails'
                      }
                  }
                }
              },
              azure_active_directory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureActiveDirectory',
                type: {
                  name: 'Composite',
                  class_name: 'AzureActiveDirectory'
                }
              },
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.certificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateDescription'
                }
              },
              certificate_common_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.certificateCommonNames',
                type: {
                  name: 'Composite',
                  class_name: 'ServerCertificateCommonNames'
                }
              },
              client_certificate_common_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientCertificateCommonNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientCertificateCommonNameElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientCertificateCommonName'
                      }
                  }
                }
              },
              client_certificate_thumbprints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientCertificateThumbprints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientCertificateThumbprintElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientCertificateThumbprint'
                      }
                  }
                }
              },
              cluster_code_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clusterCodeVersion',
                type: {
                  name: 'String'
                }
              },
              cluster_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.clusterEndpoint',
                type: {
                  name: 'String'
                }
              },
              cluster_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.clusterId',
                type: {
                  name: 'String'
                }
              },
              cluster_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.clusterState',
                type: {
                  name: 'String'
                }
              },
              diagnostics_storage_account_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.diagnosticsStorageAccountConfig',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsStorageAccountConfig'
                }
              },
              fabric_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fabricSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SettingsSectionDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SettingsSectionDescription'
                      }
                  }
                }
              },
              management_endpoint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.managementEndpoint',
                type: {
                  name: 'String'
                }
              },
              node_types: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.nodeTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeTypeDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeTypeDescription'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              reliability_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reliabilityLevel',
                type: {
                  name: 'String'
                }
              },
              reverse_proxy_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reverseProxyCertificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateDescription'
                }
              },
              reverse_proxy_certificate_common_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reverseProxyCertificateCommonNames',
                type: {
                  name: 'Composite',
                  class_name: 'ServerCertificateCommonNames'
                }
              },
              upgrade_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradeDescription',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterUpgradePolicy'
                }
              },
              upgrade_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradeMode',
                type: {
                  name: 'String'
                }
              },
              vm_image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vmImage',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
