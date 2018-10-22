# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # An Azure SQL managed instance.
    #
    class ManagedInstance < TrackedResource

      include MsRestAzure

      # @return [ResourceIdentity] The Azure Active Directory identity of the
      # managed instance.
      attr_accessor :identity

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


      #
      # Mapper for ManagedInstance class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedInstance',
          type: {
            name: 'Composite',
            class_name: 'ManagedInstance',
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceIdentity'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              fully_qualified_domain_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.fullyQualifiedDomainName',
                type: {
                  name: 'String'
                }
              },
              administrator_login: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.administratorLogin',
                type: {
                  name: 'String'
                }
              },
              administrator_login_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              subnet_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnetId',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              license_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.licenseType',
                type: {
                  name: 'String'
                }
              },
              v_cores: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vCores',
                type: {
                  name: 'Number'
                }
              },
              storage_size_in_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageSizeInGB',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
