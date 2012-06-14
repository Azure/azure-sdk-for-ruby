require "integration/test_helper"

describe "Get Page Range" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
    stream = "Hello World!" + (" " * (1024 - 12))
    Azure::Blobs.update_page_range(@blob, 0, 1023, stream).must_equal true
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to get a range of bytes" do
    result = Azure::Blobs.get_page_range(@blob)
    result.must_be :kind_of?, Array
  end
end
