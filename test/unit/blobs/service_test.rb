require 'test_helper'
require 'azure/blobs/service'

describe "Blob Services" do
  describe "CreateBlockBlob" do
    it "should raise an error if the file is bigger than 64 Mb" do
      file_class = MiniTest::Mock.new
      file_class.stub(:size, 100000000)

      service = Azure::Blobs::Services::CreateBlockBlob.new("fake-access-key")

      proc {
        service.call("container_name", "blob_name", "filename", {}, file_class)
      }.must_raise ArgumentError, "File exceeded 64Mb limit."
    end
  end
end
