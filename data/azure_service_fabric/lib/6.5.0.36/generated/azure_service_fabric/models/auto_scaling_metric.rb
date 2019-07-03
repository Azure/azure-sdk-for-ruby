# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes the metric that is used for triggering auto scaling operation.
    # Derived classes will describe resources or metrics.
    #
    class AutoScalingMetric

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Resource"] = "AutoScalingResourceMetric"

      def initialize
        @kind = "AutoScalingMetric"
      end

      attr_accessor :kind


      #
      # Mapper for AutoScalingMetric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoScalingMetric',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'kind',
            uber_parent: 'AutoScalingMetric',
            class_name: 'AutoScalingMetric',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
