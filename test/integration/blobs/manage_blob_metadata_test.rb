require "integration/test_helper"

describe "Managing the blob's metadata" do
  let :container do
    Azure::Blobs.create_container(ContainerNameHelper.name)
  end

  after do
    ContainerNameHelper.clean
  end

  it "can set the metadata on blob creation (but changes key casing)" do
    blob = Azure::Blobs.create_block_blob(
      container,
      "myblob.jpg",
      Fixtures["32px-fulls-black.jpg"].to_path,
      "Key" => "Value"
    )

    blob.metadata.clear
    blob.load_metadata!
    blob.metadata["key"].must_equal "Value"
  end

  it "gets the metadata when listing blobs" do
    create_block_blob(:container => container, :metadata => {"Key" => "Value"})

    blob = Azure::Blobs.blobs(container).first
    blob.metadata["Key"].must_equal "Value"
  end

  it "force-loads the metadata when calling #load_metadata!" do
    blob = create_block_blob(:container => container, :metadata => {"name" => "Xara"})
    blob.metadata["name"] = "NotXara" # change the metadata locally
    blob.load_metadata! # it gets replaced by the metadata on the server

    blob.metadata["name"].must_equal "Xara"
  end

  it "can update the metadata on the server after you modify the hash" do
    blob = create_block_blob(:container => container)
    blob.metadata.update("name" => "Manu")

    result = blob.save_metadata!
    result.must_equal true

    blob.metadata["name"] = "NotManu"
    metadata = blob.load_metadata!
    blob.metadata["name"].must_equal "Manu"
  end
end
