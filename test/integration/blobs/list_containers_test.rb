require "integration/test_helper"

describe "Listing containers" do
  after do
    ContainerNameHelper.clean
  end

  it "returns an empty list if there are no containers" do
    all_containers = Azure::Blobs.containers
    all_containers.must_be_empty
  end

  it "returns a list of containers if one or more exist" do
    container_1 = Azure::Blobs.create_container(ContainerNameHelper.name)
    container_2 = Azure::Blobs.create_container(ContainerNameHelper.name)

    all_containers = Azure::Blobs.containers
    all_containers.must_include(container_1)
    all_containers.must_include(container_2)
  end

  it "loads the properties of each container" do
    Azure::Blobs.create_container(ContainerNameHelper.name)
    container = Azure::Blobs.containers.first

    container.properties.wont_be_empty
  end
end
