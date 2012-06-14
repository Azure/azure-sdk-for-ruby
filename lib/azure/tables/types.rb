require "time"
require "date"
require "delegate"

module Azure
  module Tables
    module Types
      # Public: Get the type of an object.
      #
      # value - An Object.
      #
      # Returns a String.
      def self.type_of(value)
        case value
        when Float
          "Edm.Double"
        when Date, Time, DateTime
          "Edm.DateTime"
        when Integer
          value.abs < 2**31 ? "Edm.Int32" : "Edm.Int64"
        when TrueClass, FalseClass
          "Edm.Boolean"
        when GUID
          "Edm.Guid"
        else
          "Edm.String"
        end
      end

      # Public: Convert a raw value (as a String) into an object of the proper
      # type.
      #
      # value - A String serialization of an object.
      # type  - A String with the Edm datatype.
      #
      # Returns an Object.
      def self.cast(serialized, type)
        case type
        when "Edm.Double"
          Float(serialized)
        when "Edm.DateTime"
          Time.parse(serialized)
        when "Edm.Int32", "Edm.Int64"
          Integer(serialized)
        when "Edm.Boolean"
          /true/i === serialized
        else
          serialized.to_s
        end
      end
    end

    # Public: Wrapper around strings to represent GUIDs in the Azure Platform.
    #
    # Example
    #
    #   entity = Azure::Tables::Entity.new(
    #     "PartitionKey" => "part1",
    #     "RowKey"       => "row1",
    #     "Id"           => Azure::Tables::GUID.new("123456-123123123-123123")
    #   )
    class GUID < SimpleDelegator
    end
  end
end
