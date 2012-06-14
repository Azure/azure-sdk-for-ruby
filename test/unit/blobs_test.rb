require "test_helper"
require "azure/blobs"

describe Azure::Blobs do
  let :service do
    MiniTest::Mock.new
  end

  describe ".containers" do
    let :successful_response do
      double(success?: true, body: Fixtures[:all_containers])
    end

    it "returns a list of Containers on a successful call" do
      service.stub(:call, successful_response)

      containers = Azure::Blobs.containers(service)
      containers.must_include Azure::Blobs::Container.new("container-name")
    end
  end

  describe ".create_container" do
    let :successful_response do
      double(success?: true)
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    it "returns a valid container when successful" do
      service.stub(:call, successful_response)

      container = Azure::Blobs.create_container("mycontainer", {}, Azure::Blobs::Container::PRIVATE, service)
      container.name.must_equal "mycontainer"
      assert container.valid?
    end

    it "returns an invalid container when failed" do
      service.stub(:call, failed_response)

      container = Azure::Blobs.create_container("mycontainer", {}, Azure::Blobs::Container::PRIVATE, service)
      container.name.must_be_nil
      refute container.valid?
      container.error.must_equal failed_response.error
    end
  end

  describe ".delete_container" do
    let :successful_response do
      double(success?: true)
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    let :container do
      Azure::Blobs::Container.new("mycontainer")
    end

    it "returns true when successful and freezes the container" do
      service.stub(:call, successful_response)

      result = Azure::Blobs.delete_container(container, service)
      result.must_equal true
      assert container.frozen?
    end

    it "returns false when failed" do
      service.stub(:call, failed_response)

      result = Azure::Blobs.delete_container(container, service)
      result.must_equal false
      container.error.must_equal failed_response.error
      refute container.frozen?
      refute container.valid?
    end
  end

  describe ".load_container_metadata" do
    let :successful_response do
      double(success?: true, headers: headers)
    end

    let :failed_response do
      double(success?: false, headers: headers, error: Object.new)
    end

    let :headers do
      { "x-ms-meta-Name"    => "FooBar",
        "x-ms-meta-Version" => "1.0",
        "ETag"              => "Blah" }
    end

    let :container do
      Azure::Blobs::Container.new("mycontainer")
    end

    it "returns the subset of response headers that start with x-ms-meta- when successful" do
      service.stub(:call, successful_response)

      metadata = Azure::Blobs.load_container_metadata(container, service)
      metadata["Name"].must_equal "FooBar"
      metadata["Version"].must_equal "1.0"
      metadata.size.must_equal 2
    end

    it "updates the container's metadata if successful" do
      service.stub(:call, successful_response)

      Azure::Blobs.load_container_metadata(container, service)
      container.metadata.must_equal("Name" => "FooBar", "Version" => "1.0")
    end

    it "invalidates the container on failure" do
      service.stub(:call, failed_response)

      metadata = Azure::Blobs.load_container_metadata(container, service)
      metadata.must_equal({})
      container.metadata.wont_equal headers
      container.error.must_equal failed_response.error
      refute container.valid?
    end
  end

  describe ".save_container_metadata" do
    let :successful_response do
      double(success?: true)
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    let :container do
      Azure::Blobs::Container.new("mycontainer")
    end

    it "returns true when successful" do
      service.stub(:call, successful_response)

      result = Azure::Blobs.save_container_metadata(container, service)
      result.must_equal true
    end

    it "invalidates the container and returns false on failure" do
      service.stub(:call, failed_response)

      result = Azure::Blobs.save_container_metadata(container, service)
      result.must_equal false
      container.error.must_equal failed_response.error
      refute container.valid?
    end
  end
end
