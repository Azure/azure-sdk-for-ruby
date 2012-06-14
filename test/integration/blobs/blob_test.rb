require "integration/test_helper"

describe Azure::Blobs::Blob do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  it "uploads a file in blocks of 1024 bytes from string filename" do
    blob = create_block_blob(:filename => nil, :container => @container, :metadata => {:meta => "data"})
    filename = File.expand_path("./test/fixtures/32px-fulls-black.jpg")
    blob.update(filename, "image/jpeg", 1024).must_equal true
  end

  it "uploads a file in blocks of 1024 bytes from an io stream" do
    blob = create_block_blob(:filename => nil, :container => @container, :metadata => {:meta => "data"})
    filename = File.expand_path("./test/fixtures/32px-fulls-black.jpg")
    file = File.open(filename)
    blob.update(file, "image/jpeg", 1024).must_equal true
    file.close
  end

  describe "Page Blobs" do
    it "should update a range of pages" do
      stream = "Hello World!" + (" " * (1024 - 12))
      blob = Azure::Blobs.create_page_blob(@container, "myBlob")
      blob.update_range(0, 1023, stream).must_equal true
    end

    it "should be able to clear a page range" do
      stream = "Hello World!" + (" " * (1024 - 12))
      blob = Azure::Blobs.create_page_blob(@container, "myBlob")
      blob.update_range(0, 1023, stream).must_equal true
      blob.clear_range(0, 1023).must_equal true
    end

    it "should retrive page range list" do
      stream = "Hello World!" + (" " * (1024 - 12))
      blob = Azure::Blobs.create_page_blob(@container, "myBlob")
      blob.update_range(0, 1023, stream).must_equal true
      blob.get_range.must_equal [0..1023]
    end
  end

  it "should be able to create a snapshot from a blob" do
    filename = File.expand_path("./test/fixtures/32px-fulls-black.jpg")
    blob = Azure::Blobs.create_block_blob(@container, "myBlob", filename)
    snapshot = blob.create_snapshot
    snapshot.must_be :kind_of?, Azure::Blobs::Snapshot
  end

  it "should be able to delete blob snapshots" do
    filename = File.expand_path("./test/fixtures/32px-fulls-black.jpg")
    blob = Azure::Blobs.create_block_blob(@container, "myBlob", filename)
    snapshot = blob.create_snapshot
    snapshot.delete.must_equal true
  end
end
