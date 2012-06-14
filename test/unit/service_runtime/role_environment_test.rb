require 'azure/service_runtime/role_environment'
require 'eventmachine'
require 'minitest/autorun'
require 'em/minitest/spec'

describe Azure::ServiceRuntime::RoleEnvironment do
  include EM::MiniTest::Spec

  before do
    @data_path = "test/unit/service_runtime/data/"
    @runtime_endpoint = "#{@data_path}runtime.xml"
    @output_pipe = "#{@data_path}output.xml"
  end

  subject do
    Azure::ServiceRuntime::RoleEnvironment.endpoint = @runtime_endpoint
    Azure::ServiceRuntime::RoleEnvironment
  end

  it "is available" do
    assert subject.is_available?, "must be available"
  end

  describe ".deployment" do
    it "should retrieve the deployment data correctly" do
      deployment = subject.deployment

      assert_equal 130, deployment.id
      assert_equal "deployment16(130)", deployment.name
      assert_equal true, deployment.is_emulated?
    end
  end

  describe ".current_role_instance" do
    it "should retrieve the current role instance properties correctly" do
      role_instance = subject.current_role_instance

      assert_equal "deployment16(130).RubyRole.WorkerRole2_IN_0", role_instance.id
      assert_equal "WorkerRole2", role_instance.role_name
      assert_equal 0, role_instance.fault_domain
      assert_equal 0, role_instance.update_domain
    end

    it "should retrieve the endpoints correctly" do
      endpoints = subject.current_role_instance.endpoints

      assert_equal "HttpIn", endpoints["HttpIn"].name
      assert_equal "127.255.0.1", endpoints["HttpIn"].address
      assert_equal 9002, endpoints["HttpIn"].port
      assert_equal "tcp", endpoints["HttpIn"].protocol

      assert_equal "Internal2", endpoints["Internal2"].name
      assert_equal "127.255.0.1", endpoints["Internal2"].address
      assert_equal 9101, endpoints["Internal2"].port
      assert_equal "http", endpoints["Internal2"].protocol
    end

    it "should retrieve the local resources correctly" do
      local_resources = subject.current_role_instance.local_resources

      assert_equal "DiagnosticStore", local_resources["DiagnosticStore"].name
      assert_equal "C:\\Users\\Administrator\\AppData\\Local\\dftmp\\Resources\\7dbcfc02-ad16-40d3-a943-f407d20bd898\\directory\\DiagnosticStore\\", local_resources["DiagnosticStore"].path
      assert_equal 4096, local_resources["DiagnosticStore"].size

      assert_equal "ruby", local_resources["ruby"].name
      assert_equal "C:\\Users\\Administrator\\AppData\\Local\\dftmp\\Resources\\7dbcfc02-ad16-40d3-a943-f407d20bd898\\directory\\ruby\\", local_resources["ruby"].path
      assert_equal 1000, local_resources["ruby"].size
    end

    it "should retrieve the configuration settings correctly" do
      configuration_settings = subject.current_role_instance.configuration_settings

      assert_equal "8", configuration_settings["test"]
      assert_equal "string", configuration_settings["test2"]
    end
  end

  describe ".roles" do
    it "should retrieve information about the other roles correctly" do
      roles = subject.roles

      assert_equal "WorkerRole", roles["WorkerRole"].name
      assert_equal 1, roles["WorkerRole"].instances.size

      role_instance = roles["WorkerRole"].instances["deployment16(130).RubyRole.WorkerRole_IN_0"]

      assert_equal "deployment16(130).RubyRole.WorkerRole_IN_0", role_instance.id
      assert_equal 0, role_instance.fault_domain
      assert_equal 0, role_instance.update_domain
      assert_equal "WorkerRole", role_instance.role_name

      assert_equal({}, role_instance.configuration_settings)
      assert_equal({}, role_instance.local_resources)
      assert_equal 1, role_instance.endpoints.size

      endpoint = role_instance.endpoints["Internal"]

      assert_equal "Internal", endpoint.name
      assert_equal "127.255.0.0", endpoint.address
      assert_equal 9100, endpoint.port
      assert_equal "http", endpoint.protocol
    end
  end

  def assert_status(filename, status)
    request = Nokogiri::XML(File.read(filename))
    assert_equal 1, request.css('CurrentState').size
    assert_equal 1, request.css('CurrentState > StatusLease').size
    assert_equal subject.send(:client_id), request.css('CurrentState > StatusLease')[0]["ClientId"]
    acquire_node = request.css('CurrentState > StatusLease > Acquire')[0]

    assert_equal "1", acquire_node.css('Incarnation')[0].content
    assert_equal status, acquire_node.css('Status')[0].content
    assert_equal status, acquire_node.css('StatusDetail')[0].content
    assert_equal "9999-12-31T23:59:59.999Z", acquire_node.css('Expiration')[0].content
  end

  describe ".request_recycle" do
    after do
      File.delete @output_pipe
    end

    it "should perform a valid recycle request" do
      subject.request_recycle
      assert_status(@output_pipe, "Recycle")
    end
  end

  describe ".set_status" do
    after do
      File.delete @output_pipe
    end

    it "should perform a valid status change request to busy status" do
      subject.set_status :busy
      assert_status(@output_pipe, "Busy")
    end

    it "should perform a valid status change request to ready status" do
      subject.set_status :ready
      assert_status(@output_pipe, "Started")
    end
  end
end
