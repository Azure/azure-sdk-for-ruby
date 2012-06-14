require "integration/test_helper"

describe "Clear Page Range" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to clear a range of bytes" do
    stream = "Hello World!" + (" " * (1024 - 12))

    Azure::Blobs.update_page_range(@blob, 0, 1023, stream).must_equal true
    Azure::Blobs.clear_page_range(@blob, 0, 1023).must_equal true
  end
end
