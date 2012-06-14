require "integration/test_helper"

describe "Copy Blobs" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
    @container_2 = Azure::Blobs.create_container(ContainerNameHelper.name)

    @page_blob = Azure::Blobs.create_page_blob(@container, "myBlob", 2048)
    @block_blob = Azure::Blobs.create_block_blob(@container, "myBlob2", Fixtures["32px-fulls-black.jpg"].to_path)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should be able to copy a page blob" do
    result = Azure::Blobs.copy(@page_blob, @container_2, "myPageBlob", {"origin" => "copied"})
    result.must_be :kind_of?, Azure::Blobs::PageBlob
    result.metadata["origin"].must_equal "copied"
  end

  it "should be able to copy a block blob" do
    result = Azure::Blobs.copy(@block_blob, @container_2, "myBlockBlob", {"origin" => "copied"})
    result.must_be :kind_of?, Azure::Blobs::BlockBlob
    result.metadata["origin"].must_equal "copied"
  end

  it "should be able to copy a blob snapshot" do
    result = Azure::Blobs.copy(@block_blob.create_snapshot, @container_2, "myCopiedSnapshot", {"origin" => "copied"})
    result.must_be :kind_of?, Azure::Blobs::Blob
    result.metadata["origin"].must_equal "copied"
  end
end
