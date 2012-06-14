require 'nokogiri'
require 'thread'
require 'uuid'
require 'eventmachine'
require 'azure/service_runtime/client/goal_state_protocol'
require 'azure/service_runtime/client/goal_state_pipe_monitor'

module Azure
  module ServiceRuntime
    class RuntimeClient

      # Public: Defines the client id that is used when communicating with the runtime.
      def client_id
        @client_id = defined?(@client_id) ? @client_id : UUID.new.generate
      end

      def incarnation
        @gs_incarnation
      end

      # Public: Initializes a new instance of the client, and reads the initial state synchronously.
      # It also starts monitoring the pipe to receive status updates and automatically refresh the state
      # and call the appropiate events.
      def initialize(endpoint)
        return unless @is_available = File.exists?(endpoint)

        @gs_incarnation = 0

        @changed_event = []
        @changing_event = []
        @stopping_event = []

        goal_state_np = nil
        File.open(endpoint, 0) do |runtime_np|
          runtime_xml = Nokogiri::XML(runtime_np.read)
          # read the initial state
          File.open(runtime_xml.css('RuntimeServerEndpoint')[0]['path']) do |goalstate_np|
            state_message = GoalStateProtocol.read_message(goalstate_np)
            set_goal_state(state_message)
          end
          # open again to receive status changes
          goal_state_np = File.open(runtime_xml.css('RuntimeServerEndpoint')[0]['path'])
        end # close the runtime named pipe only

        # start watching the pipe for changes
        gspm = EM.watch goal_state_np, GoalStatePipeMonitor, ->(msg){ set_goal_state(msg) }
        gspm.notify_readable = true
      end

      def is_available?
        @is_available
      end

      def write(&block)
        File.open(@gs_current_state_endpoint, "w") do |pipe|
          block.call(pipe)
        end

        nil
      end

      def write_status(new_status)
        write do |pipe|
          builder = Nokogiri::XML::Builder.new do |xml|
            xml.CurrentState {
              xml.StatusLease(:ClientId => self.client_id) {
                xml.Acquire {
                  xml.Incarnation self.incarnation
                  xml.Status new_status
                  xml.StatusDetail new_status
                  xml.Expiration "9999-12-31T23:59:59.999Z"
                }
              }
            }
          end
          pipe.write(builder.to_xml)
        end
      end

      def read(&block)
        raise StandardError, "State not available" unless @gs_xml
        block.call(@gs_xml)

        nil
      end

      def on_changed(&block)
        @changed_event << block
      end

      def on_changing(&block)
        @changing_event << block
      end

      def on_stopping(&block)
        @stopping_event << block
      end

      def set_goal_state(new_goal_state)
        new_goal_state_xml = Nokogiri::XML(new_goal_state)
        new_incarnation = new_goal_state_xml.css('Incarnation').size > 0 ? new_goal_state_xml.css('Incarnation')[0].content.to_i : 0
        new_status = new_goal_state_xml.css('ExpectedState').size > 0 ? new_goal_state_xml.css('ExpectedState')[0].content : nil

        case new_status
        when 'Stopped'
          @gs_xml = nil
          @stopping_event.each {|block| block.call }
          write_status('Stopped')

        when 'Started'
          return if @gs_incarnation >= new_incarnation

          @gs_incarnation = new_incarnation
          @gs_expected_state = new_status
          @gs_current_state_endpoint ||= new_goal_state_xml.css('CurrentStateEndpoint').size > 0 ? new_goal_state_xml.css('CurrentStateEndpoint')[0].content : nil

          if new_goal_state_xml.css('RoleEnvironmentPath').size > 0
            File.open(new_goal_state_xml.css('RoleEnvironmentPath')[0].content) do |role_environment_file|
              current_xml = @gs_xml ? Nokogiri::XML(@gs_xml) : nil
              goal_xml = Nokogiri::XML(role_environment_file.read)

              @changing_event.each {|block| block.call(current_xml, goal_xml) }
              @gs_xml = goal_xml
              @changed_event.each {|block| block.call(current_xml, goal_xml) }
            end
          else
            @gs_xml = nil
            @stopping_event.each {|block| block.call }
          end
        end
      end

    end
  end
end
