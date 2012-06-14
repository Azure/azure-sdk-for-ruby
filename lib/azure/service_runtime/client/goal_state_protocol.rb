module Azure
  module ServiceRuntime
    class GoalStateProtocol

      def self.read_message(channel)
        message_header = ""
        while ("\n" != char = channel.readchar)
          message_header << char
        end
        size = message_header.to_i(16)
        message = channel.read(size)

        message
      end

    end
  end
end
