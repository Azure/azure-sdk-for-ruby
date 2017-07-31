# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # MSDeploy log
    #
    class MSDeployLog

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<MSDeployLogEntry>] List of log entry messages
      attr_accessor :entries


      #
      # Mapper for MSDeployLog class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MSDeployLog',
          type: {
            name: 'Composite',
            class_name: 'MSDeployLog',
            model_properties: {
              entries: {
                required: false,
                read_only: true,
                serialized_name: 'entries',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MSDeployLogEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MSDeployLogEntry'
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
