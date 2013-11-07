module Azure::Core
  module Concern

    def append_features(base)
      return false if base < self
      super
      base.extend const_get("ClassMethods") if const_defined?("ClassMethods")
      base.class_eval(&@included_block) if instance_variable_defined?("@included_block")
    end

    def included(base = nil, &block)
      if base.nil?
        @included_block = block
      else
        self.needed_modules.each { |m| inculde m unless base.kind_of? m }
        super
      end
    end

    def needed_modules
      @needed_modules ||= []
    end

    def needs_module(m)
      needed_modules << m
    end

  end
end
