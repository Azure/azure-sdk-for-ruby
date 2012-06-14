require 'test_helper'
require 'azure/core/utils/storage_service_properties'

describe Azure::Core::Utils::StorageServiceProperties do
  it "convert an option hash to a service properties xml" do

    options = {
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

    xml = Azure::Core::Utils::StorageServiceProperties.hash_to_xml(options)

    (xml / "Logging" / "Version").text.must_equal "1.0"
    (xml / "Logging" / "Delete").text.must_equal "true"
    (xml / "Metrics" / "IncludeAPIs").text.must_equal "false"
    (xml / "Metrics" / "RetentionPolicy" / "Enabled").text.must_equal "true"
    (xml / "Metrics" / "RetentionPolicy" / "Days").text.must_equal "7"
  end

  it "should be able to convert from an xml document string to a hash" do
    xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>
      <StorageServiceProperties>
          <Logging>
              <Version>version-number</Version>
              <Delete>true</Delete>
              <Read>true</Read>
              <Write>true</Write>
              <RetentionPolicy>
                  <Enabled>true</Enabled>
                  <Days>number-of-days</Days>
              </RetentionPolicy>
          </Logging>
          <Metrics>
              <Version>version-number</Version>
              <Enabled>true</Enabled>
              <IncludeAPIs>true</IncludeAPIs>
              <RetentionPolicy>
                  <Enabled>true</Enabled>
                  <Days>number-of-days</Days>
              </RetentionPolicy>
          </Metrics>
          <DefaultServiceVersion>default-service-version-string</DefaultServiceVersion>
      </StorageServiceProperties>"

    hash = Azure::Core::Utils::StorageServiceProperties.xml_string_to_hash(xml)
    hash["Logging"]["Read"].must_equal "true"
  end
end
