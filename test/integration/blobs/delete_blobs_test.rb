require "integration/test_helper"

describe "Delete Blobs" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should delete a blob without snapshots" do
    blob = create_block_blob
    blob.delete.must_equal true
  end

  it "should delete a blob with snapshots" do
    blob = create_block_blob
    snapshot = Azure::Blobs.create_snapshot(blob)
    Azure::Blobs.delete_blob(blob, true).must_equal true
    blob = Azure::Blobs.get_blob(@container, blob.name)
    blob.error.wont_be_nil
  end
end

