# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # ARM internal error class for providing additional debug data.
    #
    class ARMInnerError

      include MsRestAzure

      # @return [String] Gets complete stack trace of the exception.
      attr_accessor :trace

      # @return [String] Gets exception source.
      attr_accessor :source

      # @return [MethodCallStatus] Gets data related to method which threw the
      # exception.
      attr_accessor :method_status

      # @return [String] Gets cloud Id in exception.
      attr_accessor :cloud_id

      # @return [String] Gets hyperV host ID.
      attr_accessor :h_vhost_id

      # @return [String] Gets hyperV cluster Id.
      attr_accessor :h_vcluster_id

      # @return [String] Gets network Id.
      attr_accessor :network_id

      # @return [String] Gets Vm Id.
      attr_accessor :vm_id

      # @return [String] Gets Fabric Id.
      attr_accessor :fabric_id

      # @return [String] Gets Live Id of the caller.
      attr_accessor :live_id

      # @return [String] Gets container Id of the caller.
      attr_accessor :container_id

      # @return [String] Gets resource id used in the call.
      attr_accessor :resource_id

      # @return [String] Gets caller resource name.
      attr_accessor :resource_name

      # @return [String] Gets subscription Id.
      attr_accessor :subscription_id

      # @return [String] Gets serialized SRS log context.
      attr_accessor :serialized_srslog_context


      #
      # Mapper for ARMInnerError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ARMInnerError',
          type: {
            name: 'Composite',
            class_name: 'ARMInnerError',
            model_properties: {
              trace: {
                required: false,
                serialized_name: 'trace',
                type: {
                  name: 'String'
                }
              },
              source: {
                required: false,
                serialized_name: 'source',
                type: {
                  name: 'String'
                }
              },
              method_status: {
                required: false,
                serialized_name: 'methodStatus',
                type: {
                  name: 'Composite',
                  class_name: 'MethodCallStatus'
                }
              },
              cloud_id: {
                required: false,
                serialized_name: 'cloudId',
                type: {
                  name: 'String'
                }
              },
              h_vhost_id: {
                required: false,
                serialized_name: 'hVHostId',
                type: {
                  name: 'String'
                }
              },
              h_vcluster_id: {
                required: false,
                serialized_name: 'hVClusterId',
                type: {
                  name: 'String'
                }
              },
              network_id: {
                required: false,
                serialized_name: 'networkId',
                type: {
                  name: 'String'
                }
              },
              vm_id: {
                required: false,
                serialized_name: 'vmId',
                type: {
                  name: 'String'
                }
              },
              fabric_id: {
                required: false,
                serialized_name: 'fabricId',
                type: {
                  name: 'String'
                }
              },
              live_id: {
                required: false,
                serialized_name: 'liveId',
                type: {
                  name: 'String'
                }
              },
              container_id: {
                required: false,
                serialized_name: 'containerId',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              resource_name: {
                required: false,
                serialized_name: 'resourceName',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              serialized_srslog_context: {
                required: false,
                serialized_name: 'serializedSRSLogContext',
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
