require "integration/test_helper"

describe "Managing the blob's properties" do
  before do
    @container = Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  it "should set blob properties" do
    # FIXME: Why do this if we're not checking for any property getting set?
    blob = create_block_blob(:container => @container)
    result = blob.save_properties!
    result.must_equal true
  end

  it "force-loads the properties" do
    blob = create_block_blob(:container => @container)
    blob.properties.clear
    blob.load_properties!
    blob.properties["etag"].wont_be_nil
  end
end
