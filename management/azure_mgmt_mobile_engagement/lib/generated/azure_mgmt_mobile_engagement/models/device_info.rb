# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class DeviceInfo

      include MsRestAzure

      # @return [String] Phone model.
      attr_accessor :phone_model

      # @return [String] Phone manufacturer
      attr_accessor :phone_manufacturer

      # @return [String] Firmware version.
      attr_accessor :firmware_version

      # @return [String] Firmware name.
      attr_accessor :firmware_name

      # @return [Integer] Android API level.
      attr_accessor :android_apilevel

      # @return [String] Carrier country.
      attr_accessor :carrier_country

      # @return [String] Locale code.
      attr_accessor :locale

      # @return [String] Carrier name.
      attr_accessor :carrier_name

      # @return [String] Network type.
      attr_accessor :network_type

      # @return [String] Network sub-type.
      attr_accessor :network_subtype

      # @return [String] Application version name.
      attr_accessor :application_version_name

      # @return [Integer] Application version code.
      attr_accessor :application_version_code

      # @return [Integer] The offset in minutes from UTC for the device time
      # zone, including daylight savings time.
      attr_accessor :time_zone_offset

      # @return [String] SDK version.
      attr_accessor :service_version


      #
      # Mapper for DeviceInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceInfo',
          type: {
            name: 'Composite',
            class_name: 'DeviceInfo',
            model_properties: {
              phone_model: {
                required: false,
                serialized_name: 'phoneModel',
                type: {
                  name: 'String'
                }
              },
              phone_manufacturer: {
                required: false,
                serialized_name: 'phoneManufacturer',
                type: {
                  name: 'String'
                }
              },
              firmware_version: {
                required: false,
                serialized_name: 'firmwareVersion',
                type: {
                  name: 'String'
                }
              },
              firmware_name: {
                required: false,
                serialized_name: 'firmwareName',
                type: {
                  name: 'String'
                }
              },
              android_apilevel: {
                required: false,
                serialized_name: 'androidAPILevel',
                type: {
                  name: 'Number'
                }
              },
              carrier_country: {
                required: false,
                serialized_name: 'carrierCountry',
                type: {
                  name: 'String'
                }
              },
              locale: {
                required: false,
                serialized_name: 'locale',
                type: {
                  name: 'String'
                }
              },
              carrier_name: {
                required: false,
                serialized_name: 'carrierName',
                type: {
                  name: 'String'
                }
              },
              network_type: {
                required: false,
                serialized_name: 'networkType',
                type: {
                  name: 'String'
                }
              },
              network_subtype: {
                required: false,
                serialized_name: 'networkSubtype',
                type: {
                  name: 'String'
                }
              },
              application_version_name: {
                required: false,
                serialized_name: 'applicationVersionName',
                type: {
                  name: 'String'
                }
              },
              application_version_code: {
                required: false,
                serialized_name: 'applicationVersionCode',
                type: {
                  name: 'Number'
                }
              },
              time_zone_offset: {
                required: false,
                serialized_name: 'timeZoneOffset',
                type: {
                  name: 'Number'
                }
              },
              service_version: {
                required: false,
                serialized_name: 'serviceVersion',
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
