require "integration/test_helper"

describe "Deleting a container" do
  after do
    ContainerNameHelper.clean
  end

  it "should return false if the container cannot be deleted" do
    container = Azure::Blobs::Container.new(ContainerNameHelper.name)
    response = container.delete

    response.must_equal false
    refute container.valid?
    refute container.frozen?
  end

  it "should return true if the container can be deleted" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name)
    response = container.delete

    response.must_equal true
    assert container.frozen?
  end
end
