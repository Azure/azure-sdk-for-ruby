# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Scheduler::Mgmt::V2016_03_01
  module Models
    #
    # Model object.
    #
    #
    class JobCollectionQuota

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Gets or set the maximum job count.
      attr_accessor :max_job_count

      # @return [Integer] Gets or sets the maximum job occurrence.
      attr_accessor :max_job_occurrence

      # @return [JobMaxRecurrence] Gets or set the maximum recurrence.
      attr_accessor :max_recurrence


      #
      # Mapper for JobCollectionQuota class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobCollectionQuota',
          type: {
            name: 'Composite',
            class_name: 'JobCollectionQuota',
            model_properties: {
              max_job_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxJobCount',
                type: {
                  name: 'Number'
                }
              },
              max_job_occurrence: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxJobOccurrence',
                type: {
                  name: 'Number'
                }
              },
              max_recurrence: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxRecurrence',
                type: {
                  name: 'Composite',
                  class_name: 'JobMaxRecurrence'
                }
              }
            }
          }
        }
      end
    end
  end
end
