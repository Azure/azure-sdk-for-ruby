require "integration/test_helper"

describe "Manage Blob Leases" do

  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @blob = Azure::Blobs.create_block_blob(@container, "myBlob", nil)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to acquire a lease" do
    Azure::Blobs.lease(@blob, :acquire)
    @blob.error.must_be_nil
    @blob.lease_id.wont_be_nil
  end

  it "should fail trying to acquire a lease in a blob with an active lease" do
    Azure::Blobs.lease(@blob, :acquire)
    Azure::Blobs.lease(@blob, :acquire)
    @blob.error.wont_be_nil
  end

  it "should be able to renew a lease" do
    Azure::Blobs.lease(@blob, :acquire)
    Azure::Blobs.lease(@blob, :renew)
    @blob.error.must_be_nil
  end

  it "should be able to release a lease" do
    Azure::Blobs.lease(@blob, :acquire)
    Azure::Blobs.lease(@blob, :release)
    Azure::Blobs.lease(@blob, :acquire)
    @blob.error.must_be_nil
  end

  it "should be able to break a lease" do
    Azure::Blobs.lease(@blob, :acquire)
    Azure::Blobs.lease(@blob, :break)
    Azure::Blobs.lease(@blob, :acquire)
    @blob.error.wont_be_nil
  end
end
