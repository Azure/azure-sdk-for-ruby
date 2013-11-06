module Azure::Core
  class Resource
    include Azure::Core::Model::Attributes
    include Azure::Core::Model::Validations
    include Azure::Core::Xml::Convertertable
  end
end
