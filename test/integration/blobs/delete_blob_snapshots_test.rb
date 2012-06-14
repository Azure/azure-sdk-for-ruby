require "integration/test_helper"

describe "Delete Blob Snapshots" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to delete only the snapshots belonging to this blob" do
    snapshot = Azure::Blobs.create_snapshot(@blob)
    Azure::Blobs.delete_blob_snapshots(@blob).must_equal true
    blob = Azure::Blobs.get_blob(@container, @blob.name)
    blob.error.must_be_nil
  end
end
