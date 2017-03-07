# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Application logs to file system configuration.
    #
    class FileSystemApplicationLogsConfig

      include MsRestAzure

      # @return [LogLevel] Log level. Possible values include: 'Off',
      # 'Verbose', 'Information', 'Warning', 'Error'. Default value: 'Off' .
      attr_accessor :level


      #
      # Mapper for FileSystemApplicationLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FileSystemApplicationLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'FileSystemApplicationLogsConfig',
            model_properties: {
              level: {
                required: false,
                serialized_name: 'level',
                default_value: 'Off',
                type: {
                  name: 'Enum',
                  module: 'LogLevel'
                }
              }
            }
          }
        }
      end
    end
  end
end
