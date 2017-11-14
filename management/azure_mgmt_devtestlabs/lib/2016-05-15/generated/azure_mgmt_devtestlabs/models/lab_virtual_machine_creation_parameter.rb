# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Properties for creating a virtual machine.
    #
    class LabVirtualMachineCreationParameter

      include MsRestAzure

      include MsRest::JSONable
      # @return [BulkCreationParameters] The number of virtual machine
      # instances to create.
      attr_accessor :bulk_creation_parameters

      # @return [String] The notes of the virtual machine.
      attr_accessor :notes

      # @return [String] The object identifier of the owner of the virtual
      # machine.
      attr_accessor :owner_object_id

      # @return [String] The user principal name of the virtual machine owner.
      attr_accessor :owner_user_principal_name

      # @return [String] The object identifier of the creator of the virtual
      # machine.
      attr_accessor :created_by_user_id

      # @return [String] The email address of creator of the virtual machine.
      attr_accessor :created_by_user

      # @return [DateTime] The creation date of the virtual machine.
      attr_accessor :created_date

      # @return [String] The custom image identifier of the virtual machine.
      attr_accessor :custom_image_id

      # @return [String] The OS type of the virtual machine.
      attr_accessor :os_type

      # @return [String] The size of the virtual machine.
      attr_accessor :size

      # @return [String] The user name of the virtual machine.
      attr_accessor :user_name

      # @return [String] The password of the virtual machine administrator.
      attr_accessor :password

      # @return [String] The SSH key of the virtual machine administrator.
      attr_accessor :ssh_key

      # @return [Boolean] Indicates whether this virtual machine uses an SSH
      # key for authentication.
      attr_accessor :is_authentication_with_ssh_key

      # @return [String] The fully-qualified domain name of the virtual
      # machine.
      attr_accessor :fqdn

      # @return [String] The lab subnet name of the virtual machine.
      attr_accessor :lab_subnet_name

      # @return [String] The lab virtual network identifier of the virtual
      # machine.
      attr_accessor :lab_virtual_network_id

      # @return [Boolean] Indicates whether the virtual machine is to be
      # created without a public IP address.
      attr_accessor :disallow_public_ip_address

      # @return [Array<ArtifactInstallProperties>] The artifacts to be
      # installed on the virtual machine.
      attr_accessor :artifacts

      # @return [ArtifactDeploymentStatusProperties] The artifact deployment
      # status for the virtual machine.
      attr_accessor :artifact_deployment_status

      # @return [GalleryImageReference] The Microsoft Azure Marketplace image
      # reference of the virtual machine.
      attr_accessor :gallery_image_reference

      # @return [ComputeVmProperties] The compute virtual machine properties.
      attr_accessor :compute_vm

      # @return [NetworkInterfaceProperties] The network interface properties.
      attr_accessor :network_interface

      # @return [ApplicableSchedule] The applicable schedule for the virtual
      # machine.
      attr_accessor :applicable_schedule

      # @return [DateTime] The expiration date for VM.
      attr_accessor :expiration_date

      # @return [Boolean] Indicates whether another user can take ownership of
      # the virtual machine
      attr_accessor :allow_claim

      # @return [String] Storage type to use for virtual machine (i.e.
      # Standard, Premium).
      attr_accessor :storage_type

      # @return [VirtualMachineCreationSource] Tells source of creation of lab
      # virtual machine. Output property only. Possible values include:
      # 'FromCustomImage', 'FromGalleryImage'
      attr_accessor :virtual_machine_creation_source

      # @return [String] The resource ID of the environment that contains this
      # virtual machine, if any.
      attr_accessor :environment_id

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier

      # @return [String] The name of the virtual machine or environment
      attr_accessor :name

      # @return [String] The location of the new virtual machine or environment
      attr_accessor :location

      # @return [Hash{String => String}] The tags of the resource.
      attr_accessor :tags


      #
      # Mapper for LabVirtualMachineCreationParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LabVirtualMachineCreationParameter',
          type: {
            name: 'Composite',
            class_name: 'LabVirtualMachineCreationParameter',
            model_properties: {
              bulk_creation_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bulkCreationParameters',
                type: {
                  name: 'Composite',
                  class_name: 'BulkCreationParameters'
                }
              },
              notes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.notes',
                type: {
                  name: 'String'
                }
              },
              owner_object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ownerObjectId',
                type: {
                  name: 'String'
                }
              },
              owner_user_principal_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ownerUserPrincipalName',
                type: {
                  name: 'String'
                }
              },
              created_by_user_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdByUserId',
                type: {
                  name: 'String'
                }
              },
              created_by_user: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdByUser',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              custom_image_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customImageId',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'String'
                }
              },
              size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.size',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              ssh_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sshKey',
                type: {
                  name: 'String'
                }
              },
              is_authentication_with_ssh_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isAuthenticationWithSshKey',
                type: {
                  name: 'Boolean'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fqdn',
                type: {
                  name: 'String'
                }
              },
              lab_subnet_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.labSubnetName',
                type: {
                  name: 'String'
                }
              },
              lab_virtual_network_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.labVirtualNetworkId',
                type: {
                  name: 'String'
                }
              },
              disallow_public_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disallowPublicIpAddress',
                type: {
                  name: 'Boolean'
                }
              },
              artifacts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.artifacts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArtifactInstallPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ArtifactInstallProperties'
                      }
                  }
                }
              },
              artifact_deployment_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.artifactDeploymentStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ArtifactDeploymentStatusProperties'
                }
              },
              gallery_image_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.galleryImageReference',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryImageReference'
                }
              },
              compute_vm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.computeVm',
                type: {
                  name: 'Composite',
                  class_name: 'ComputeVmProperties'
                }
              },
              network_interface: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkInterface',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkInterfaceProperties'
                }
              },
              applicable_schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicableSchedule',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicableSchedule'
                }
              },
              expiration_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expirationDate',
                type: {
                  name: 'DateTime'
                }
              },
              allow_claim: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowClaim',
                type: {
                  name: 'Boolean'
                }
              },
              storage_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageType',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_creation_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualMachineCreationSource',
                type: {
                  name: 'String'
                }
              },
              environment_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.environmentId',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
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
              }
            }
          }
        }
      end
    end
  end
end
