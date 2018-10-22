# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRestAzure
  #
  # Class which represents keeps aux data about Azure invalid response.
  #
  class CloudErrorData

    # @return [String] the error code parsed from the body of the http error response.
    attr_accessor :code

    # @return [String] the error message parsed from the body of the http error response.
    attr_accessor :message

    # @return [String] the error target parsed from the body of the http error response.
    attr_accessor :target

    # @return [Array<TypedErrorInfo>] the list of additional error info parsed from the body of the http error response.
    attr_accessor :additionalInfo

    #
    # Deserializes given hash into CloudErrorData object.
    # @param object [Hash] object to deserialize.
    #
    # @return [CloudErrorData] deserialized object.
    def self.deserialize_object(object)
      return if object.nil?
      output_object = CloudErrorData.new

      output_object.code = object['code']

      output_object.message = object['message']

      output_object.target = object['target']

      unless object['additionalInfo'].nil?
        output_object.additionalInfo = []
        object['additionalInfo'].each do |info|
          output_object.additionalInfo << MsRestAzure::TypedErrorInfo.deserialize_object(info)
        end
      end

      output_object
    end
  end
end
