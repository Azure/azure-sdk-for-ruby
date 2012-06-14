require "integration/test_helper"
require "azure/core/utils/storage_service_properties"

describe "Manage Blob Service Properties" do
  it "should be able to set blob service properties" do

    properties = {
      "Logging" => {
        "Version" => "1.0",
        "Delete" => "true",
        "Read" => "true",
        "Write" => "true",
        "RetentionPolicy" => {
          "Enabled" => true,
          "Days" => 7
        }
      },
      "Metrics"=> {
        "Version" => "1.0",
        "Enabled" => "true",
        "IncludeAPIs" => "false",
        "RetentionPolicy" => {
          "Enabled" => true,
          "Days" => 7
        }
      }
    }

    Azure::Blobs.set_service_properties(properties).must_equal true
  end

  it "should be able to get blob service properties" do
    response = Azure::Blobs.get_service_properties
    response.must_be :kind_of?, Hash
    response["Metrics"].must_be :kind_of?, Hash
    response["Metrics"]["Version"].must_equal "1.0"
  end
end
