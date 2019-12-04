# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about the service name.
    #
    class ServiceNameInfo

      include MsRestAzure

      # @return [String] The identity of the service. This ID is an encoded
      # representation of the service name. This is used in the REST APIs to
      # identify the service resource.
      # Starting in version 6.0, hierarchical names are delimited with the "\~"
      # character. For example, if the service name is
      # "fabric:/myapp/app1/svc1",
      # the service identity would be "myapp~app1\~svc1" in 6.0+ and
      # "myapp/app1/svc1" in previous versions.
      attr_accessor :id

      # @return [String] The full name of the service with 'fabric:' URI
      # scheme.
      attr_accessor :name


      #
      # Mapper for ServiceNameInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceNameInfo',
          type: {
            name: 'Composite',
            class_name: 'ServiceNameInfo',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
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
