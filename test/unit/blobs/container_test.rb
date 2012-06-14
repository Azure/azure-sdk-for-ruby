require "test_helper"
require "azure/blobs/container"

describe Azure::Blobs::Container do
  describe ".from_node" do
    let :node do
      Nokogiri::XML(Fixtures[:all_containers]) % "Container"
    end

    subject do
      Azure::Blobs::Container.from_node(node)
    end

    it "gets the name out of the node" do
      subject.name.must_equal "container-name"
    end

    it "gets the url out of the node" do
      subject.url.must_equal URI("http://myaccount.blob.core.windows.net/container-name")
    end

    it "gets the properties out of the node" do
      subject.properties["Last-Modified"].must_equal "date/time-value"
      subject.properties["Etag"].must_equal "etag"
    end

    it "gets the metadata out of the node" do
      subject.metadata["metadata-name"].must_equal "value"
    end
  end

  let :service do
    MiniTest::Mock.new
  end

  let :container do
    Azure::Blobs::Container.new(
      "name",
      Azure::Blobs::URI.container("name"),
      service
    )
  end

  describe "#delete" do
    it "delegates to the service's #delete_container implementation" do
      service.expect(:delete_container, true, [container])
      container.delete
      service.verify
    end
  end

  describe "#load_metadata!" do
    it "delegates to the service's #load_container_metadata implementation" do
      service.expect(:load_container_metadata, {}, [container])
      container.load_metadata!
      service.verify
    end
  end

  describe "#save_metadata!" do
    it "delegates to the service's #save_container_metadata implementation" do
      service.expect(:save_container_metadata, {}, [container])
      container.save_metadata!
      service.verify
    end
  end
end
