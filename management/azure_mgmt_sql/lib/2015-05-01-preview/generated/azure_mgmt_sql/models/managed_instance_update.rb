# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # An update request for an Azure SQL Database managed instance.
    #
    class ManagedInstanceUpdate

      include MsRestAzure

      # @return [Sku] Managed instance sku
      attr_accessor :sku

      # @return [String] The fully qualified domain name of the managed
      # instance.
      attr_accessor :fully_qualified_domain_name

      # @return [String] Administrator username for the managed instance. Can
      # only be specified when the managed instance is being created (and is
      # required for creation).
      attr_accessor :administrator_login

      # @return [String] The administrator login password (required for managed
      # instance creation).
      attr_accessor :administrator_login_password

      # @return [String] Subnet resource ID for the managed instance.
      attr_accessor :subnet_id

      # @return [String] The state of the managed instance.
      attr_accessor :state

      # @return [String] The license type. Possible values are
      # 'LicenseIncluded' and 'BasePrice'.
      attr_accessor :license_type

      # @return [Integer] The number of VCores.
      attr_accessor :v_cores

      # @return [Integer] The maximum storage size in GB.
      attr_accessor :storage_size_in_gb

      # @return [String] Collation of the managed instance.
      attr_accessor :collation

      # @return [String] The Dns Zone taht the managed instance is in.
      attr_accessor :dns_zone

      # @return [String] The resource id of another managed instance whose DNS
      # zone this managed instance will share after creation.
      attr_accessor :dns_zone_partner

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags


      #
      # Mapper for ManagedInstanceUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagedInstanceUpdate',
          type: {
            name: 'Composite',
            class_name: 'ManagedInstanceUpdate',
            model_properties: {
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              fully_qualified_domain_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.fullyQualifiedDomainName',
                type: {
                  name: 'String'
                }
              },
              administrator_login: {
                required: false,
                serialized_name: 'properties.administratorLogin',
                type: {
                  name: 'String'
                }
              },
              administrator_login_password: {
                required: false,
                serialized_name: 'properties.administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              subnet_id: {
                required: false,
                serialized_name: 'properties.subnetId',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              license_type: {
                required: false,
                serialized_name: 'properties.licenseType',
                type: {
                  name: 'String'
                }
              },
              v_cores: {
                required: false,
                serialized_name: 'properties.vCores',
                type: {
                  name: 'Number'
                }
              },
              storage_size_in_gb: {
                required: false,
                serialized_name: 'properties.storageSizeInGB',
                type: {
                  name: 'Number'
                }
              },
              collation: {
                required: false,
                serialized_name: 'properties.collation',
                type: {
                  name: 'String'
                }
              },
              dns_zone: {
                required: false,
                read_only: true,
                serialized_name: 'properties.dnsZone',
                type: {
                  name: 'String'
                }
              },
              dns_zone_partner: {
                required: false,
                serialized_name: 'properties.dnsZonePartner',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
