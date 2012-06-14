require "integration/test_helper"

describe "Create Blob Snapshots" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to get a range of bytes" do
    result = Azure::Blobs.create_snapshot(@blob)
    result.must_be :kind_of?, Azure::Blobs::Snapshot
  end
end
