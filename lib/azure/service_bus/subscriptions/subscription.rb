require "azure/error"
require "azure/service_bus/subscriptions"
require "azure/service_bus/rules"
require "azure/core/utils/interval"

module Azure
  module ServiceBus
    module Subscriptions
      # Public: A Subscription to a Topic.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/hh780763
      class Subscription
        include Azure::ErrorHandler

        # Public: Get the String name of this subscription.
        attr :name

        # Public: Get/Set the Topic of this subscription.
        attr_accessor :topic

        # Public: Whether the subscription requires a session. This is always
        # false since session-aware subscriptions are not allowed through the
        # REST API.
        attr_reader   :requires_session

        # Public: Whether to put messages in the dead-letter queue after its
        # TTL expires. Can be true|false.
        attr_accessor :keep_expired

        # Public: Whether to put messages in the dead-letter queue when the
        # message causes an exception during a subscription's filter
        # evaluation. Can be true|false.
        attr_accessor :keep_on_errors

        # Public: Initialize a Subscription from an Error.
        #
        # error - An Azure::Error.
        #
        # Returns an invalid Subscription.
        def self.from_error(error)
          new(nil) { |sub| sub.error = error }
        end

        # Public: Initialize the Subscription.
        #
        # name    - A String with the subscription's name.
        # service - Backend service to delegate remote calls (optional).
        def initialize(name, service=Azure::ServiceBus::Subscriptions)
          @name = name
          @requires_session = false
          @default_ttl = nil
          @lock_duration = nil
          @service = service
          yield self if block_given?
        end

        # Public: Set the time to live of a message in the subscription.
        #
        # interval - An Interval, or anything that can be converted into one.
        #
        # Returns an Interval or nil.
        def default_ttl=(interval)
          @default_ttl = Core::Utils::Interval.try_convert(interval)
        end

        # Public: Get the time to live of a message in the subscription in
        # seconds.
        #
        # Returns an Interval or nil.
        def default_ttl
          Core::Utils::Interval.try_convert(@default_ttl)
        end

        # Public: Duration of the lock in seconds.
        #
        # Returns an Interval or nil.
        def lock_duration
          Core::Utils::Interval.try_convert(@lock_duration)
        end

        # Public: Set the duration of the lock in seconds. Can go from 0
        # (unlocked) to 5 minutes.
        #
        # interval - An Interval, or anything that can be converted into one.
        #
        # Returns an Interval or nil.
        def lock_duration=(interval)
          @lock_duration = Core::Utils::Interval.try_convert(interval)
        end

        # Public: Two subscriptions are the same if they belong to the same
        # topic and have the same name.
        #
        # other - A Subscription.
        #
        # Returns true|false.
        def ==(other)
          !topic.nil? && topic == other.topic && name == other.name
        end

        # Public: Delete the subscription from the remote service. If the
        # operation is successful, this subscription is frozen. If not, it's
        # invalidated.
        #
        # Returns true|false to indicate success.
        def delete
          @service.delete(self)
        end

        # Public: Creates a new Rule for this Subscription.
        #
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
        # Returns an instance of ServiceBus::Rules::Rule.
        def create_rule(name, filter=nil, action=nil, service=Azure::ServiceBus::Rules)
          service.create(self, name, filter, action)
        end

        # Public: Get a list of Rules for this Subscription.
        #
        # Returns an Array of Rules.
        def get_rules(service=Azure::ServiceBus::Rules)
          service.all(self)
        end

        # Public: Get a Rule by name.
        #
        # name - String representing the name of the Rule.
        #
        # Returns an instance of Rules::Rule.
        def get_rule(name, service=Azure::ServiceBus::Rules)
          service.get(self, name)
        end
      end
    end
  end
end
