# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Hyper-V Replica Blue specific protection profile details.
    #
    class HyperVReplicaPolicyDetails < PolicyProviderSpecificDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "HyperVReplica2012"
      end

      attr_accessor :instanceType

      # @return [Integer] A value indicating the number of recovery points.
      attr_accessor :recovery_points

      # @return [Integer] A value indicating the application consistent
      # frequency.
      attr_accessor :application_consistent_snapshot_frequency_in_hours

      # @return [String] A value indicating whether compression has to be
      # enabled.
      attr_accessor :compression

      # @return [String] A value indicating whether IR is online.
      attr_accessor :initial_replication_method

      # @return [String] A value indicating the online IR start time.
      attr_accessor :online_replication_start_time

      # @return [String] A value indicating the offline IR import path.
      attr_accessor :offline_replication_import_path

      # @return [String] A value indicating the offline IR export path.
      attr_accessor :offline_replication_export_path

      # @return [Integer] A value indicating the recovery HTTPS port.
      attr_accessor :replication_port

      # @return [Integer] A value indicating the authentication type.
      attr_accessor :allowed_authentication_type

      # @return [String] A value indicating whether the VM has to be auto
      # deleted. Supported Values: String.Empty, None, OnRecoveryCloud
      attr_accessor :replica_deletion_option


      #
      # Mapper for HyperVReplicaPolicyDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HyperVReplica2012',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplicaPolicyDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_points: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPoints',
                type: {
                  name: 'Number'
                }
              },
              application_consistent_snapshot_frequency_in_hours: {
                client_side_validation: true,
                required: false,
                serialized_name: 'applicationConsistentSnapshotFrequencyInHours',
                type: {
                  name: 'Number'
                }
              },
              compression: {
                client_side_validation: true,
                required: false,
                serialized_name: 'compression',
                type: {
                  name: 'String'
                }
              },
              initial_replication_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initialReplicationMethod',
                type: {
                  name: 'String'
                }
              },
              online_replication_start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'onlineReplicationStartTime',
                type: {
                  name: 'String'
                }
              },
              offline_replication_import_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'offlineReplicationImportPath',
                type: {
                  name: 'String'
                }
              },
              offline_replication_export_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'offlineReplicationExportPath',
                type: {
                  name: 'String'
                }
              },
              replication_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicationPort',
                type: {
                  name: 'Number'
                }
              },
              allowed_authentication_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedAuthenticationType',
                type: {
                  name: 'Number'
                }
              },
              replica_deletion_option: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicaDeletionOption',
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
