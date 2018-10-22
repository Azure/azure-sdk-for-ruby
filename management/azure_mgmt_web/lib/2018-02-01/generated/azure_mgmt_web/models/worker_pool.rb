# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Worker pool of an App Service Environment.
    #
    class WorkerPool

      include MsRestAzure

      # @return [Integer] Worker size ID for referencing this worker pool.
      attr_accessor :worker_size_id

      # @return [ComputeModeOptions] Shared or dedicated app hosting. Possible
      # values include: 'Shared', 'Dedicated', 'Dynamic'
      attr_accessor :compute_mode

      # @return [String] VM size of the worker pool instances.
      attr_accessor :worker_size

      # @return [Integer] Number of instances in the worker pool.
      attr_accessor :worker_count

      # @return [Array<String>] Names of all instances in the worker pool (read
      # only).
      attr_accessor :instance_names


      #
      # Mapper for WorkerPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkerPool',
          type: {
            name: 'Composite',
            class_name: 'WorkerPool',
            model_properties: {
              worker_size_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workerSizeId',
                type: {
                  name: 'Number'
                }
              },
              compute_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'computeMode',
                type: {
                  name: 'Enum',
                  module: 'ComputeModeOptions'
                }
              },
              worker_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workerSize',
                type: {
                  name: 'String'
                }
              },
              worker_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workerCount',
                type: {
                  name: 'Number'
                }
              },
              instance_names: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'instanceNames',
                type: {
                  name: 'Sequence',
                  element: {
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
