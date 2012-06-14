require "integration/test_helper"

describe "Managing a container's permissions" do
  after do
    ContainerNameHelper.clean
  end

  it "can grant temporary anonymous access to a blob via shared access signstures" do
    container = Azure::Blobs.create_container(ContainerNameHelper.name)
    blob = create_block_blob(:container => container)

    url = blob.shared_access_signature("r", 10 * 60) # read permissions, 10 minutes

    response = Net::HTTP.get_response(url)
    response.code.must_equal "200"
  end
end
