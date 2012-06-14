require "integration/test_helper"

describe "Creating a container" do
  after do
    ContainerNameHelper.clean
  end

  it "returns the container" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name)
    container.must_be_kind_of Azure::Blobs::Container
    assert container.valid?, "must be valid"
  end
end
