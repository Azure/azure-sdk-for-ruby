# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Process Thread Information.
    #
    class ProcessThreadInfo < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] ARM Identifier for deployment.
      attr_accessor :process_thread_info_id

      # @return [String] HRef URI.
      attr_accessor :href

      # @return [String] Process URI.
      attr_accessor :process

      # @return [String] Start address.
      attr_accessor :start_address

      # @return [Integer] Current thread priority.
      attr_accessor :current_priority

      # @return [String] Thread priority level.
      attr_accessor :priority_level

      # @return [Integer] Base priority.
      attr_accessor :base_priority

      # @return [DateTime] Start time.
      attr_accessor :start_time

      # @return [String] Total processor time.
      attr_accessor :total_processor_time

      # @return [String] User processor time.
      attr_accessor :user_processor_time

      # @return [String] Priviledged processor time.
      attr_accessor :priviledged_processor_time

      # @return [String] Thread state.
      attr_accessor :state

      # @return [String] Wait reason.
      attr_accessor :wait_reason


      #
      # Mapper for ProcessThreadInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProcessThreadInfo',
          type: {
            name: 'Composite',
            class_name: 'ProcessThreadInfo',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              process_thread_info_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.id',
                type: {
                  name: 'Number'
                }
              },
              href: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.href',
                type: {
                  name: 'String'
                }
              },
              process: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.process',
                type: {
                  name: 'String'
                }
              },
              start_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startAddress',
                type: {
                  name: 'String'
                }
              },
              current_priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.currentPriority',
                type: {
                  name: 'Number'
                }
              },
              priority_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priorityLevel',
                type: {
                  name: 'String'
                }
              },
              base_priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.basePriority',
                type: {
                  name: 'Number'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              total_processor_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.totalProcessorTime',
                type: {
                  name: 'String'
                }
              },
              user_processor_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userProcessorTime',
                type: {
                  name: 'String'
                }
              },
              priviledged_processor_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priviledgedProcessorTime',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              wait_reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.waitReason',
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
