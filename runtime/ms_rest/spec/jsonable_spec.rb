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
  end
end
