module Azure
  module ServiceRuntime
    class Role
      attr_accessor :name, :instances

      def initialize(node)
        self.name = node["name"]
        self.instances = node.css('Instances > Instance').inject({}) do |hash, instance_xml| 
          role_instance = RoleInstance.new(instance_xml)
          role_instance.role_name = self.name
          hash[role_instance.id] = role_instance
          hash
        end
      end
    end
  end
end
