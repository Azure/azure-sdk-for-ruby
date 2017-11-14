# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The schedule property associated with the entity.
    #
    class ScheduleAssociationProperty

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets or sets the name of the schedule.
      attr_accessor :name


      #
      # Mapper for ScheduleAssociationProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScheduleAssociationProperty',
          type: {
            name: 'Composite',
            class_name: 'ScheduleAssociationProperty',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
