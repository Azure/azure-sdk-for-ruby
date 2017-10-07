# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # Details of the Process Server.
    #
    class ProcessServer

      include MsRestAzure

      # @return [String] The Process Server's friendly name.
      attr_accessor :friendly_name

      # @return [String] The Process Server Id.
      attr_accessor :id

      # @return [String] The IP address of the server.
      attr_accessor :ip_address

      # @return [String] The OS type of the server.
      attr_accessor :os_type

      # @return [String] The version of the scout component on the server.
      attr_accessor :agent_version

      # @return [DateTime] The last heartbeat received from the server.
      attr_accessor :last_heartbeat

      # @return [String] Version status
      attr_accessor :version_status

      # @return [Array<MobilityServiceUpdate>] The list of the mobility service
      # updates available on the Process Server.
      attr_accessor :mobility_service_updates

      # @return [String] The agent generated Id.
      attr_accessor :host_id

      # @return [String] The servers configured with this PS.
      attr_accessor :machine_count

      # @return [String] The number of replication pairs configured in this PS.
      attr_accessor :replication_pair_count

      # @return [String] The percentage of the system load.
      attr_accessor :system_load

      # @return [String] The system load status.
      attr_accessor :system_load_status

      # @return [String] The percentage of the CPU load.
      attr_accessor :cpu_load

      # @return [String] The CPU load status.
      attr_accessor :cpu_load_status

      # @return [Integer] The total memory.
      attr_accessor :total_memory_in_bytes

      # @return [Integer] The available memory.
      attr_accessor :available_memory_in_bytes

      # @return [String] The memory usage status.
      attr_accessor :memory_usage_status

      # @return [Integer] The total space.
      attr_accessor :total_space_in_bytes

      # @return [Integer] The available space.
      attr_accessor :available_space_in_bytes

      # @return [String] The space usage status.
      attr_accessor :space_usage_status

      # @return [String] The PS service status.
      attr_accessor :ps_service_status

      # @return [DateTime] The PS SSL cert expiry date.
      attr_accessor :ssl_cert_expiry_date

      # @return [Integer] CS SSL cert expiry date.
      attr_accessor :ssl_cert_expiry_remaining_days

      # @return [String] OS Version of the process server. Note: This will get
      # populated if user has CS version greater than 9.12.0.0.
      attr_accessor :os_version


      #
      # Mapper for ProcessServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProcessServer',
          type: {
            name: 'Composite',
            class_name: 'ProcessServer',
            model_properties: {
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              agent_version: {
                required: false,
                serialized_name: 'agentVersion',
                type: {
                  name: 'String'
                }
              },
              last_heartbeat: {
                required: false,
                serialized_name: 'lastHeartbeat',
                type: {
                  name: 'DateTime'
                }
              },
              version_status: {
                required: false,
                serialized_name: 'versionStatus',
                type: {
                  name: 'String'
                }
              },
              mobility_service_updates: {
                required: false,
                serialized_name: 'mobilityServiceUpdates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MobilityServiceUpdateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MobilityServiceUpdate'
                      }
                  }
                }
              },
              host_id: {
                required: false,
                serialized_name: 'hostId',
                type: {
                  name: 'String'
                }
              },
              machine_count: {
                required: false,
                serialized_name: 'machineCount',
                type: {
                  name: 'String'
                }
              },
              replication_pair_count: {
                required: false,
                serialized_name: 'replicationPairCount',
                type: {
                  name: 'String'
                }
              },
              system_load: {
                required: false,
                serialized_name: 'systemLoad',
                type: {
                  name: 'String'
                }
              },
              system_load_status: {
                required: false,
                serialized_name: 'systemLoadStatus',
                type: {
                  name: 'String'
                }
              },
              cpu_load: {
                required: false,
                serialized_name: 'cpuLoad',
                type: {
                  name: 'String'
                }
              },
              cpu_load_status: {
                required: false,
                serialized_name: 'cpuLoadStatus',
                type: {
                  name: 'String'
                }
              },
              total_memory_in_bytes: {
                required: false,
                serialized_name: 'totalMemoryInBytes',
                type: {
                  name: 'Number'
                }
              },
              available_memory_in_bytes: {
                required: false,
                serialized_name: 'availableMemoryInBytes',
                type: {
                  name: 'Number'
                }
              },
              memory_usage_status: {
                required: false,
                serialized_name: 'memoryUsageStatus',
                type: {
                  name: 'String'
                }
              },
              total_space_in_bytes: {
                required: false,
                serialized_name: 'totalSpaceInBytes',
                type: {
                  name: 'Number'
                }
              },
              available_space_in_bytes: {
                required: false,
                serialized_name: 'availableSpaceInBytes',
                type: {
                  name: 'Number'
                }
              },
              space_usage_status: {
                required: false,
                serialized_name: 'spaceUsageStatus',
                type: {
                  name: 'String'
                }
              },
              ps_service_status: {
                required: false,
                serialized_name: 'psServiceStatus',
                type: {
                  name: 'String'
                }
              },
              ssl_cert_expiry_date: {
                required: false,
                serialized_name: 'sslCertExpiryDate',
                type: {
                  name: 'DateTime'
                }
              },
              ssl_cert_expiry_remaining_days: {
                required: false,
                serialized_name: 'sslCertExpiryRemainingDays',
                type: {
                  name: 'Number'
                }
              },
              os_version: {
                required: false,
                serialized_name: 'osVersion',
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
