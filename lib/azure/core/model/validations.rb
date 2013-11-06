module Azure::Core::Model
  module Validations
    extend Azure::Core::Concern

    require_module Azure::Core::Validations

    has_attribute_type :required

    def valid?
      errors.clear
      run_validators
      errors.empty?
    end

    def run_validators
      missing_attributes = self.class.required_attributes_names.select do |attribute_name|
        attribute_name if send(attribute_name).nil?
      end
      errors << "You need to define #{missing_attributes.join(', ')} attributes" unless missing_attributes.empty?

      self.custom_validators.each do |validator|
        errors << validator.message unless &validator.block
      end
    end

    def errors
      @errors ||= []
    end

    module ClassMethods

      def validate(message, &block)
        custom_validators << block
      end

      def custom_validators
        @custom_validators ||= []
      end

    end
  end


end