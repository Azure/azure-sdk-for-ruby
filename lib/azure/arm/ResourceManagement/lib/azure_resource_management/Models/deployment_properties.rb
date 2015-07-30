# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Resources
  module Models
    #
    # Deployment properties.
    #
    class DeploymentProperties
      # @return Gets or sets the template content. Use only one of Template or
      # TemplateLink.
      attr_accessor :template

      # @return [TemplateLink] Gets or sets the URI referencing the template.
      # Use only one of Template or TemplateLink.
      attr_accessor :template_link

      # @return Deployment parameters. Use only one of Parameters or
      # ParametersLink.
      attr_accessor :parameters

      # @return [ParametersLink] Gets or sets the URI referencing the
      # parameters. Use only one of Parameters or ParametersLink.
      attr_accessor :parameters_link

      # @return Gets or sets the deployment mode. Possible values for this
      # property include: 'Incremental'
      attr_accessor :mode

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @template_link.validate unless @template_link.nil?
        @parameters_link.validate unless @parameters_link.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.template
        output_object['template'] = serialized_property unless serialized_property.nil?

        serialized_property = object.template_link
        if (serialized_property)
          serialized_property = Azure::ARM::Resources::Models::TemplateLink.serialize_object(serialized_property)
        end
        output_object['templateLink'] = serialized_property unless serialized_property.nil?

        serialized_property = object.parameters
        output_object['parameters'] = serialized_property unless serialized_property.nil?

        serialized_property = object.parameters_link
        if (serialized_property)
          serialized_property = Azure::ARM::Resources::Models::ParametersLink.serialize_object(serialized_property)
        end
        output_object['parametersLink'] = serialized_property unless serialized_property.nil?

        serialized_property = object.mode
        output_object['mode'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [DeploymentProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = DeploymentProperties.new

        deserialized_property = object['template']
        output_object.template = deserialized_property

        deserialized_property = object['templateLink']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Resources::Models::TemplateLink.deserialize_object(deserialized_property)
        end
        output_object.template_link = deserialized_property

        deserialized_property = object['parameters']
        output_object.parameters = deserialized_property

        deserialized_property = object['parametersLink']
        if (deserialized_property)
          deserialized_property = Azure::ARM::Resources::Models::ParametersLink.deserialize_object(deserialized_property)
        end
        output_object.parameters_link = deserialized_property

        deserialized_property = object['mode']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !Azure::ARM::Resources::Models::DeploymentMode.constants.any? { |e| Azure::ARM::Resources::Models::DeploymentMode.const_get(e) == deserialized_property })
        output_object.mode = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
