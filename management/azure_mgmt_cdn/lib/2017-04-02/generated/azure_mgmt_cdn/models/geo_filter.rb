# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  module Models
    #
    # Rules defining user's geo access within a CDN endpoint.
    #
    class GeoFilter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Relative path applicable to geo filter. (e.g.
      # '/mypictures', '/mypicture/kitty.jpg', and etc.)
      attr_accessor :relative_path

      # @return [GeoFilterActions] Action of the geo filter, i.e. allow or
      # block access. Possible values include: 'Block', 'Allow'
      attr_accessor :action

      # @return [Array<String>] Two letter country codes defining user country
      # access in a geo filter, e.g. AU, MX, US.
      attr_accessor :country_codes


      #
      # Mapper for GeoFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GeoFilter',
          type: {
            name: 'Composite',
            class_name: 'GeoFilter',
            model_properties: {
              relative_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'relativePath',
                type: {
                  name: 'String'
                }
              },
              action: {
                client_side_validation: true,
                required: true,
                serialized_name: 'action',
                type: {
                  name: 'Enum',
                  module: 'GeoFilterActions'
                }
              },
              country_codes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'countryCodes',
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
