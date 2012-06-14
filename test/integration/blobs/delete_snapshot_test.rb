require "integration/test_helper"

describe "Delete Snapshots" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to delete a snapshot" do
    snapshot = Azure::Blobs.create_snapshot(@blob)
    Azure::Blobs.delete_snapshot(snapshot).must_equal true
  end
end
