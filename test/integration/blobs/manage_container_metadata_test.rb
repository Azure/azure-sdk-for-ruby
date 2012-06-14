require "integration/test_helper"

describe "Managing the container's metadata" do
  after do
    ContainerNameHelper.clean
  end

  it "sets metadata on container creation (Azure changes the casing of metadata keys)" do
    Azure::Blobs.create_container(
      ContainerNameHelper.name,
      "UppercaseKey" => "U", "downcaseKey" => "D"
    )

    # FIXME: Change this once we have a way of finding a container by name.
    container = Azure::Blobs.containers.first

    container.metadata["Uppercasekey"].must_equal "U"
    container.metadata["Downcasekey"].must_equal "D"
  end

  it "gets metadata when listing containers" do
    Azure::Blobs.create_container(ContainerNameHelper.name, "Key" => "Value")

    # FIXME: Change this once we have a way of finding a container by name.
    container = Azure::Blobs.containers.first
    container.metadata["Key"].must_equal "Value"
  end

  it "force-loads the metadata when calling #metadata!" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name, "Key" => "Value")

    container.metadata.must_be_empty
    container.load_metadata!.wont_be_empty
    container.metadata.wont_be_empty
  end

  it "saves the metadata in the server if you modify the metadata hash" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name)
    container.metadata["Key"] = "Value"
    container.save_metadata!

    # FIXME: Change this once we have a way of finding a container by name.
    loaded_container = Azure::Blobs.containers.first
    loaded_container.metadata["Key"].must_equal "Value"
  end
end
