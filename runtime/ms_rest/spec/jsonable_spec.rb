# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'rspec'
require 'ms_rest'

module MsRest

  module Models
    class Basic
      include JSONable

      def initialize
        @id = 123
        @name = 'hello world!'
        @color = 'blue'
      end

      attr_accessor :id, :name, :color

      def self.mapper
        {required: false, serialized_name: 'basic', type: { name: 'Composite', class_name: 'Basic', model_properties: {id: {required: false, serialized_name: 'id', type: {name: 'Number'}}, name: {required: false, serialized_name: 'name', type: {name: 'String'}}, color: {required: false, serialized_name: 'color', type: {name: 'String'}}}}}
      end
    end

    class ModifiedBasic
      include JSONable

      def initialize
        @identifier = 123
        @name = 'hello world!'
        @color = 'blue'
      end

      attr_accessor :identifier, :name, :color

      def self.mapper
        {required: false, serialized_name: 'basic', type: { name: 'Composite', class_name: 'ModifiedBasic', model_properties: {id: {required: false, serialized_name: 'id2', type: {name: 'Number'}}, name: {required: false, serialized_name: 'name', type: {name: 'String'}}, color: {required: false, serialized_name: 'color', type: {name: 'String'}}}}}
      end
    end
  end

  describe Models::Basic do
    let(:variables) { {'id' => 123, 'name' => 'hello world!', 'color' => 'blue'} }

    it 'should serialize a model' do
      expect(subject.to_json).to eq variables
    end

    it 'should deserialize a model' do
      subject.id = 2345
      new_subject = Models::Basic.new.from_json(subject.to_json)
      expect(new_subject.id).to eq subject.id
    end

    it 'should provide a to_s representation in JSON form with all of the model properties' do
      expect(subject.to_s).to match "#<MsRest::Models::Basic:(.+)> #{variables}"
    end

    it 'should serialize a model using custom mapper' do
      result = subject.to_json({mapper: MsRest::Models::ModifiedBasic.mapper})
      expect(result['id2']).to eq 123
    end

    it 'should serialize a model using custom object without mapper parameter' do
      bool_body = true
      current_module = Object.const_get('MsRest::Models')
      a_new_class = Class.new {
        include MsRest::JSONable
        def self.mapper
          {
              required: true,
              serialized_name: 'boolBody',
              type: {
                  name: 'Boolean'
              }
          }
        end
      }
      current_module.const_set('AnotherNewClass', a_new_class)
      obj = a_new_class.new
      request_content = obj.to_json({object: bool_body })
      expect(request_content).to be_truthy
    end

    it 'should serialize using a non composite model' do
      request_mapper = {
          required: true,
          serialized_name: 'boolBody',
          type: {
              name: 'Boolean'
          }
      }
      bool_body = true
      current_module = Object.const_get('MsRest::Models')
      a_new_class = Class.new { include MsRest::JSONable }
      current_module.const_set('ANewClass', a_new_class)
      request_content = a_new_class.new.to_json({mapper: request_mapper, object: bool_body })
      expect(request_content).to be_truthy
    end

  end
end
