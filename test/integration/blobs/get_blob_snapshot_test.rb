require "integration/test_helper"

describe "Get Blob Snapshot" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to fetch a snapshot from a blob snapshot id" do
    snapshot = Azure::Blobs.create_snapshot(@blob)
    snapshot = Azure::Blobs.get_snapshot(@container, @blob.name, snapshot.id)
    snapshot.must_be :kind_of?, Azure::Blobs::Snapshot
  end
end
