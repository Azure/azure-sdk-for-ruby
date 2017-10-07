# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # The response model for the undoedit runbook operation.
    #
    class RunbookDraftUndoEditResult

      include MsRestAzure

      # @return [HttpStatusCode] Possible values include: 'Continue',
      # 'SwitchingProtocols', 'OK', 'Created', 'Accepted',
      # 'NonAuthoritativeInformation', 'NoContent', 'ResetContent',
      # 'PartialContent', 'MultipleChoices', 'Ambiguous', 'MovedPermanently',
      # 'Moved', 'Found', 'Redirect', 'SeeOther', 'RedirectMethod',
      # 'NotModified', 'UseProxy', 'Unused', 'TemporaryRedirect',
      # 'RedirectKeepVerb', 'BadRequest', 'Unauthorized', 'PaymentRequired',
      # 'Forbidden', 'NotFound', 'MethodNotAllowed', 'NotAcceptable',
      # 'ProxyAuthenticationRequired', 'RequestTimeout', 'Conflict', 'Gone',
      # 'LengthRequired', 'PreconditionFailed', 'RequestEntityTooLarge',
      # 'RequestUriTooLong', 'UnsupportedMediaType',
      # 'RequestedRangeNotSatisfiable', 'ExpectationFailed', 'UpgradeRequired',
      # 'InternalServerError', 'NotImplemented', 'BadGateway',
      # 'ServiceUnavailable', 'GatewayTimeout', 'HttpVersionNotSupported'
      attr_accessor :status_code

      # @return [String]
      attr_accessor :request_id


      #
      # Mapper for RunbookDraftUndoEditResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunbookDraftUndoEditResult',
          type: {
            name: 'Composite',
            class_name: 'RunbookDraftUndoEditResult',
            model_properties: {
              status_code: {
                required: false,
                serialized_name: 'statusCode',
                type: {
                  name: 'Enum',
                  module: 'HttpStatusCode'
                }
              },
              request_id: {
                required: false,
                serialized_name: 'requestId',
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
