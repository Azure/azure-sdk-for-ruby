require "integration/test_helper"

describe "Get Blobs" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should get a blob" do
    create_block_blob(:filename => Fixtures["32px-fulls-black.jpg"].to_path)
    blob = Azure::Blobs.get_blob(@container, "myblob")

    blob.must_be :kind_of?, Azure::Blobs::Blob
    file_content = Base64.strict_encode64(Fixtures["32px-fulls-black.jpg"].read)
    Base64.strict_encode64(blob.content).must_equal file_content
  end

  it "should fetch blob properties" do
    blob = create_block_blob(:name => "myblob")
    blob = Azure::Blobs.get_blob(@container, "myblob")
    blob.properties["etag"].wont_be_nil
    blob.properties["content-length"].wont_be_nil
    blob.properties["content-type"].wont_be_nil
    blob.properties["last-modified"].wont_be_nil
    blob.properties["etag"].wont_be_nil
    blob.properties["x-ms-lease-status"].wont_be_nil
  end
end
