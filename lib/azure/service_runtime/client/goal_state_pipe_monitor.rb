require 'eventmachine'

module Azure
  module ServiceRuntime
    class GoalStatePipeMonitor < EM::Connection

      # Public: Initializes a new monitor.
      #
      # callback - a lambda to invoke when a new message arraives
      def initialize(new_message_callback)
        @new_message_callback = new_message_callback
      end

      def notify_readable
        state_message = GoalStateProtocol.read_message(@io)
        @new_message_callback.call(state_message)
      end
    end

  end
end
