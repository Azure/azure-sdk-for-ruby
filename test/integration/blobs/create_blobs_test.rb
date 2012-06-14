require "integration/test_helper"

describe "Creating a Blob" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  describe "Block Blobs" do
    it "creates a small block blob" do
      blob = create_block_blob
      blob.must_be :kind_of?, Azure::Blobs::BlockBlob
    end

    it "putting a block in a blob" do
      blob = create_block_blob(:filename => nil)

      filename = File.expand_path("./test/fixtures/32px-fulls-black.jpg")
      blockid = Base64.strict_encode64("#{blob.name}#{Time.now.to_f}")

      res = Azure::Blobs.put_block(blob, File.open(filename) {|f| f.read}, blockid)

      res.must_equal true
    end

    it "list exitent blobs" do
      create_block_blob

      res = Azure::Blobs.blobs(@container)

      res.must_be :kind_of?, Array
      res.size.must_equal 1
      res.first.properties["BlobType"].must_equal "BlockBlob"
    end

    it "creates a blob with metadata" do
      blob = create_block_blob(:metadata => {"name" => "John"})
      blob.metadata["name"].must_equal "John"
    end
  end

  describe "Page Blobs" do
    it "creates a page block blob" do
      blob = create_page_blob(@container)
      blob.must_be :kind_of?, Azure::Blobs::PageBlob
    end
  end
end
