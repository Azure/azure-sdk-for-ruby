# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Microsoft.VMwareCloudSimple
  module Models
    #
    # Virtual machine model
    #
    class VirtualMachine

      include MsRestAzure

      # @return [String]
      # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/virtualMachines/{virtualMachineName}
      attr_accessor :id

      # @return [String] Azure region
      attr_accessor :location

      # @return [String] {virtualMachineName}
      attr_accessor :name

      # @return [Plan] Virtual machine plan
      attr_accessor :plan

      # @return [Integer] The amount of memory
      attr_accessor :amount_of_ram

      # @return [Array<VirtualDiskController>] The list of Virtual Disks'
      # Controllers
      attr_accessor :controllers

      # @return [Array<VirtualDisk>] The list of Virtual Disks
      attr_accessor :disks

      # @return [String] The DNS name of Virtual Machine in VCenter
      attr_accessor :dnsname

      # @return [Boolean] Expose Guest OS or not
      attr_accessor :expose_to_guest_vm

      # @return [String] The path to virtual machine folder in VCenter
      attr_accessor :folder

      # @return [String] The name of Guest OS
      attr_accessor :guest_os

      # @return [GuestOSType] The Guest OS type. Possible values include:
      # 'linux', 'windows', 'other'
      attr_accessor :guest_ostype

      # @return [Array<VirtualNic>] The list of Virtual NICs
      attr_accessor :nics

      # @return [Integer] The number of CPU cores
      attr_accessor :number_of_cores

      # @return [String] Password for login
      attr_accessor :password

      # @return [String] Private Cloud Id
      attr_accessor :private_cloud_id

      # @return [String] The provisioning status of the resource
      attr_accessor :provisioning_state

      # @return [String] The public ip of Virtual Machine
      attr_accessor :public_ip

      # @return [ResourcePool] Virtual Machines Resource Pool
      attr_accessor :resource_pool

      # @return [VirtualMachineStatus] The status of Virtual machine. Possible
      # values include: 'running', 'suspended', 'poweredoff', 'updating',
      # 'deallocating', 'deleting'
      attr_accessor :status

      # @return [String] Virtual Machine Template Id
      attr_accessor :template_id

      # @return [String] Username for login
      attr_accessor :username

      # @return [Array<String>] The list of Virtual VSphere Networks
      attr_accessor :v_sphere_networks

      # @return [String] The internal id of Virtual Machine in VCenter
      attr_accessor :vm_id

      # @return [String] VMware tools version
      attr_accessor :vmwaretools

      # @return [Hash{String => String}] The list of tags
      attr_accessor :tags

      # @return [String] {resourceProviderNamespace}/{resourceType}
      attr_accessor :type


      #
      # Mapper for VirtualMachine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachine',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachine',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                constraints: {
                  Pattern: '^[-a-zA-Z0-9]+$'
                },
                type: {
                  name: 'String'
                }
              },
              plan: {
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'Plan'
                }
              },
              amount_of_ram: {
                required: true,
                serialized_name: 'properties.amountOfRam',
                type: {
                  name: 'Number'
                }
              },
              controllers: {
                required: false,
                read_only: true,
                serialized_name: 'properties.controllers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualDiskControllerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualDiskController'
                      }
                  }
                }
              },
              disks: {
                required: false,
                serialized_name: 'properties.disks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualDisk'
                      }
                  }
                }
              },
              dnsname: {
                required: false,
                read_only: true,
                serialized_name: 'properties.dnsname',
                type: {
                  name: 'String'
                }
              },
              expose_to_guest_vm: {
                required: false,
                serialized_name: 'properties.exposeToGuestVM',
                type: {
                  name: 'Boolean'
                }
              },
              folder: {
                required: false,
                read_only: true,
                serialized_name: 'properties.folder',
                type: {
                  name: 'String'
                }
              },
              guest_os: {
                required: true,
                serialized_name: 'properties.guestOS',
                type: {
                  name: 'String'
                }
              },
              guest_ostype: {
                required: true,
                serialized_name: 'properties.guestOSType',
                type: {
                  name: 'Enum',
                  module: 'GuestOSType'
                }
              },
              nics: {
                required: false,
                serialized_name: 'properties.nics',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualNicElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNic'
                      }
                  }
                }
              },
              number_of_cores: {
                required: true,
                serialized_name: 'properties.numberOfCores',
                type: {
                  name: 'Number'
                }
              },
              password: {
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              private_cloud_id: {
                required: true,
                serialized_name: 'properties.privateCloudId',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              public_ip: {
                required: false,
                read_only: true,
                serialized_name: 'properties.publicIP',
                type: {
                  name: 'String'
                }
              },
              resource_pool: {
                required: false,
                serialized_name: 'properties.resourcePool',
                type: {
                  name: 'Composite',
                  class_name: 'ResourcePool'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'VirtualMachineStatus'
                }
              },
              template_id: {
                required: false,
                serialized_name: 'properties.templateId',
                type: {
                  name: 'String'
                }
              },
              username: {
                required: false,
                serialized_name: 'properties.username',
                type: {
                  name: 'String'
                }
              },
              v_sphere_networks: {
                required: false,
                serialized_name: 'properties.vSphereNetworks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vm_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.vmId',
                type: {
                  name: 'String'
                }
              },
              vmwaretools: {
                required: false,
                read_only: true,
                serialized_name: 'properties.vmwaretools',
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
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
