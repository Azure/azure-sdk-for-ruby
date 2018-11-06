# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents a database replication link.
    #
    class ReplicationLink < ProxyResource

      include MsRestAzure

      # @return [String] Location of the server that contains this firewall
      # rule.
      attr_accessor :location

      # @return [Boolean] Legacy value indicating whether termination is
      # allowed.  Currently always returns true.
      attr_accessor :is_termination_allowed

      # @return [String] Replication mode of this replication link.
      attr_accessor :replication_mode

      # @return [String] The name of the server hosting the partner database.
      attr_accessor :partner_server

      # @return [String] The name of the partner database.
      attr_accessor :partner_database

      # @return [String] The Azure Region of the partner database.
      attr_accessor :partner_location

      # @return [ReplicationRole] The role of the database in the replication
      # link. Possible values include: 'Primary', 'Secondary',
      # 'NonReadableSecondary', 'Source', 'Copy'
      attr_accessor :role

      # @return [ReplicationRole] The role of the partner database in the
      # replication link. Possible values include: 'Primary', 'Secondary',
      # 'NonReadableSecondary', 'Source', 'Copy'
      attr_accessor :partner_role

      # @return [DateTime] The start time for the replication link.
      attr_accessor :start_time

      # @return [Integer] The percentage of seeding complete for the
      # replication link.
      attr_accessor :percent_complete

      # @return [ReplicationState] The replication state for the replication
      # link. Possible values include: 'PENDING', 'SEEDING', 'CATCH_UP',
      # 'SUSPENDED'
      attr_accessor :replication_state


      #
      # Mapper for ReplicationLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReplicationLink',
          type: {
            name: 'Composite',
            class_name: 'ReplicationLink',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              is_termination_allowed: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isTerminationAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              replication_mode: {
                required: false,
                read_only: true,
                serialized_name: 'properties.replicationMode',
                type: {
                  name: 'String'
                }
              },
              partner_server: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerServer',
                type: {
                  name: 'String'
                }
              },
              partner_database: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerDatabase',
                type: {
                  name: 'String'
                }
              },
              partner_location: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerLocation',
                type: {
                  name: 'String'
                }
              },
              role: {
                required: false,
                read_only: true,
                serialized_name: 'properties.role',
                type: {
                  name: 'Enum',
                  module: 'ReplicationRole'
                }
              },
              partner_role: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerRole',
                type: {
                  name: 'Enum',
                  module: 'ReplicationRole'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              percent_complete: {
                required: false,
                read_only: true,
                serialized_name: 'properties.percentComplete',
                type: {
                  name: 'Number'
                }
              },
              replication_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.replicationState',
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
