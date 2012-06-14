require 'azure/service_bus/rules/rule'
require 'azure/service_bus/rules/service'
require 'nokogiri'

module Azure
  module ServiceBus
    module Rules

      # Public: Create a New Rule. Invalidates the Rule if the operation fails.
      #
      # subscription - An instance of Azure::ServiceBus::Subscriptions::Subscription.
      # name         - String representing the name of the new rule.
      # filter       - A Hash representing `filter` option.
      #
      #               Example:
      #
      #               {"SqlFilterExpression" => {
      #                 "SqlExpression" => "MyProperty='XYZ'"
      #               }}
      #
      #               Becomes:
      #
      #               <Filter i:type="SqlFilterExpression">
      #                 <SqlExpression>MyProperty='XYZ'</SqlExpression>
      #               </Filter>
      #
      # action       - A Hash representing `action` option.
      #
      #               Example:
      #
      #               {"SqlFilterAction" => {
      #                 "SqlExpression" => "set MyProperty2 = 'ABC'"
      #               }}
      #
      #               Becomes:
      #
      #               <Action i:type="SqlFilterAction">
      #                 <SqlExpression>set MyProperty2 = 'ABC'</SqlExpression>
      #               </Action>
      #
      # Returns An instance of Azure::ServiceBus::Rules::Rule.
      def self.create(subscription, name, filter=nil, action=nil, service=Services::Create.new)
        response = service.call(subscription.topic.name, subscription.name, name, filter, action)

        if response.success?
          document = Nokogiri::XML(response.body).remove_namespaces!
          Rule.from_document(document, subscription)
        else
          rule = Rule.new(name)
          rule.error = response.error
        end
      end

      # Public: Delete Rule.
      #
      # rule - An instance of Azure::ServiceBus::Rules::Rule.
      #
      # Returns boolean indicating success. Invalidate rule if operation fails.
      def self.delete(rule, service=Services::Delete.new)
        response = service.call(rule.subscription.topic.name, rule.subscription.name, rule.name)

        if response.success?
          rule.freeze
        else
          rule.error = response.error
        end

        response.success?
      end

      # Public: Get Rule.
      #
      # subscription - An instance of Subscription.
      # name         - String representing the name of the Rule.
      #
      # Returns an instance of Rule. Invalidated if operation fails.
      def self.get(subscription, name, service=Services::GetRule.new)
        response = service.call(subscription.topic.name, subscription.name, name)

        if response.success?
          document = Nokogiri::XML(response.body).remove_namespaces!
          Rule.from_document(document, subscription)
        else
          rule = Rule.new(name)
          rule.error = response.error
        end
      end

      # Public: List Rules in a given subscription.
      #
      # subscription - An instance of Subscription.
      #
      # Returns an Array of Rules.
      def self.all(subscription, service=Services::ListRules.new)
        response = service.call(subscription.topic.name, subscription.name)

        rules = []

        if response.success?
          document = Nokogiri::XML(response.body).remove_namespaces!
          (document / "entry").each do |node|
            rules << Rule.from_document(node, subscription)
          end
        end

        rules
      end
    end
  end
end
