require "azure/service_bus/rules/uri"
require "nokogiri"

module Azure
  module ServiceBus
    module Rules
      class Service < Core::Service
        def initialize(signer=Azure::ServiceBus::Auth::Wrap.new)
          super(signer, Azure::ServiceBus::Auth::Authorizer.new)
        end
      end

      module Services
        # Public: Create Rule.
        #
        # topic_name        - String representing the name of the Topic.
        # subscription_name - String representing the name of the Subscription.
        # rule_name         - String representing the name of the Rule.
        # filter            - A Hash representing `filter` option. (optional)
        #
        #                       Example:
        #
        #                       {"SqlFilterExpression" => {
        #                         "SqlExpression" => "MyProperty='XYZ'"
        #                       }}
        #
        #                       Becomes:
        #
        #                       <Filter i:type="SqlFilterExpression">
        #                         <SqlExpression>MyProperty='XYZ'</SqlExpression>
        #                       </Filter>
        #
        # action            - A Hash representing `action` option. (optional)
        #
        #                     Example:
        #
        #                     {"SqlFilterAction" => {
        #                       "SqlExpression" => "set MyProperty2 = 'ABC'"
        #                     }}
        #
        #                     Becomes:
        #
        #                     <Action i:type="SqlFilterAction">
        #                       <SqlExpression>set MyProperty2 = 'ABC'</SqlExpression>
        #                     </Action>  - String representing the name of the new Rule.
        class Create < Service
          def call(topic_name, subscription_name, rule_name, filter=nil, action=nil)
            uri = URI.rule(topic_name, subscription_name, rule_name)

            doc = Nokogiri::XML::Builder.new do |xml|
              xml.entry(:xmlns => 'http://www.w3.org/2005/Atom') {
                xml.content(:type => 'application/xml') {
                  xml.RuleDescription('xmlns' => 'http://schemas.microsoft.com/netservices/2010/10/servicebus/connect',
                                      'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance') do |rule|

                    # FIXME: Abstract this two.
                    unless filter.nil?
                      rule.Filter("i:type" => filter.keys.first) do |filter_node|
                        filter[filter.keys.first].each do |k,v|
                          filter_node.send(k, v)
                        end
                      end
                    end

                    unless action.nil?
                      rule.Action("i:type" => action.keys.first) do |action_node|
                        action[action.keys.first].each do |k,v|
                          action_node.send(k, v)
                        end
                      end
                    end
                  end
                }
              }
            end

            super(:put, uri, doc.to_xml) do |request|
              request.headers["Content-Type"] = "application/atom+xml;type=entry;charset=utf-8"
              request.headers.delete("Content-MD5")
            end
          end
        end

        # Delete a Rule.
        #
        # topic_name        - String representing the name of the Topic.
        # subscription_name - String representing the name of the Subscription.
        # rule_name         - String representing the name of the Rule.
        class Delete < Service
          def call(topic_name, subscription_name, rule_name)
            uri = URI.rule(topic_name, subscription_name, rule_name)
            super(:delete, uri)
          end
        end

        # Get a Rule.
        #
        # topic_name        - String representing the name of the Topic.
        # subscription_name - String representing the name of the Subscription.
        # rule_name         - String representing the name of the Rule.
        class GetRule < Service
          def call(topic_name, subscription_name, rule_name)
            uri = URI.rule(topic_name, subscription_name, rule_name)
            super(:get, uri)
          end
        end

        # List Rules.
        #
        # topic_name        - String representing the name of the Topic.
        # subscription_name - String representing the name of the Subscription.
        class ListRules < Service
          def call(topic_name, subscription_name)
            uri = URI.collection(topic_name, subscription_name)
            super(:get, uri)
          end
        end
      end
    end
  end
end

