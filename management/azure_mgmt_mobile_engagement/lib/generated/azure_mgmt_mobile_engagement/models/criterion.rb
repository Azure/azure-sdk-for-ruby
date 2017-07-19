# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class Criterion

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["carrier-name"] = "CarrierNameCriterion"
      @@discriminatorMap["carrier-country"] = "CarrierCountryCriterion"
      @@discriminatorMap["firmware-version"] = "FirmwareVersionCriterion"
      @@discriminatorMap["device-manufacturer"] = "DeviceManufacturerCriterion"
      @@discriminatorMap["device-model"] = "DeviceModelCriterion"
      @@discriminatorMap["application-version"] = "ApplicationVersionCriterion"
      @@discriminatorMap["network-type"] = "NetworkTypeCriterion"
      @@discriminatorMap["language"] = "LanguageCriterion"
      @@discriminatorMap["screen-size"] = "ScreenSizeCriterion"
      @@discriminatorMap["location"] = "LocationCriterion"
      @@discriminatorMap["geo-fencing"] = "GeoFencingCriterion"
      @@discriminatorMap["announcement-feedback"] = "AnnouncementFeedbackCriterion"
      @@discriminatorMap["poll-feedback"] = "PollFeedbackCriterion"
      @@discriminatorMap["poll-answer-feedback"] = "PollAnswerFeedbackCriterion"
      @@discriminatorMap["datapush-feedback"] = "DatapushFeedbackCriterion"
      @@discriminatorMap["segment"] = "SegmentCriterion"
      @@discriminatorMap["string-tag"] = "StringTagCriterion"
      @@discriminatorMap["date-tag"] = "DateTagCriterion"
      @@discriminatorMap["integer-tag"] = "IntegerTagCriterion"
      @@discriminatorMap["boolean-tag"] = "BooleanTagCriterion"

      def initialize
        @type = "Criterion"
      end

      attr_accessor :type


      #
      # Mapper for Criterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Criterion',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'Criterion',
            class_name: 'Criterion',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
