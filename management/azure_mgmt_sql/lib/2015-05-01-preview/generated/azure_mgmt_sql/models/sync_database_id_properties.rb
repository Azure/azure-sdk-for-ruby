# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2015_05_01_preview
  module Models
    #
    # Properties of the sync database id.
    #
    class SyncDatabaseIdProperties

      include MsRestAzure

      # @return [String] ARM resource id of sync database.
      attr_accessor :id


      #
      # Mapper for SyncDatabaseIdProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncDatabaseIdProperties',
          type: {
            name: 'Composite',
            class_name: 'SyncDatabaseIdProperties',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
