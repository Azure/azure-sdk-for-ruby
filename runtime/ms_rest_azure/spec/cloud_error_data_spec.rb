# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'rspec'
require 'ms_rest_azure'

module MsRestAzure

  describe CloudErrorData do
    it 'should deserialize CloudErrorData correctly' do
      response_json = {
          'code' => 'the code',
          'message' => 'the message'
      }

      data = CloudErrorData.deserialize_object(response_json)

      expect(data.code).to eq('the code')
      expect(data.message).to eq('the message')
    end

    it 'should deserialize CloudErrorData with additionalInfo correctly' do
      response_json = {
          'code' => 'the code',
          'message' => 'the message',
          'target' => 'the target',
          'additionalInfo' => [
              {
                  'type' => 'someErrorType',
                  'info' => {
                      'someProperty' => 'some value'
                  }
              }
          ]
      }

      data = CloudErrorData.deserialize_object(response_json)

      expect(data.code).to eq('the code')
      expect(data.message).to eq('the message')
      expect(data.target).to eq('the target')
      expect(data.additionalInfo[0].type).to eq('someErrorType')
      expect(data.additionalInfo[0].info['someProperty']).to eq('some value')
    end
  end

end
