# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeStore::FileSystem
  module Models
    #
    # Data Lake Store filesystem exception based on the WebHDFS definition for
    # RemoteExceptions.
    #
    class AdlsRemoteException

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["IllegalArgumentException"] = "AdlsIllegalArgumentException"
      @@discriminatorMap["UnsupportedOperationException"] = "AdlsUnsupportedOperationException"
      @@discriminatorMap["SecurityException"] = "AdlsSecurityException"
      @@discriminatorMap["IOException"] = "AdlsIOException"
      @@discriminatorMap["FileNotFoundException"] = "AdlsFileNotFoundException"
      @@discriminatorMap["FileAlreadyExistsException"] = "AdlsFileAlreadyExistsException"
      @@discriminatorMap["BadOffsetException"] = "AdlsBadOffsetException"
      @@discriminatorMap["RuntimeException"] = "AdlsRuntimeException"
      @@discriminatorMap["AccessControlException"] = "AdlsAccessControlException"

      def initialize
        @exception = "AdlsRemoteException"
      end

      attr_accessor :exception

      # @return [String] the full class package name for the exception thrown,
      # such as 'java.lang.IllegalArgumentException'.
      attr_accessor :java_class_name

      # @return [String] the message associated with the exception that was
      # thrown, such as 'Invalid value for webhdfs parameter
      # "permission":...'.
      attr_accessor :message

      # @return [String] Polymorhpic Discriminator
      attr_accessor :exception


      #
      # Mapper for AdlsRemoteException class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AdlsRemoteException',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'exception',
            uber_parent: 'AdlsRemoteException',
            class_name: 'AdlsRemoteException',
            model_properties: {
              java_class_name: {
                required: false,
                read_only: true,
                serialized_name: 'javaClassName',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              exception: {
                required: true,
                serialized_name: 'exception',
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
