require "test_helper"
require "azure/error"

describe Azure::HTTPError do
  let :http_response do
    double(body: Fixtures[:error], code: 409)
  end

  subject do
    Azure::HTTPError.new(http_response)
  end

  it "is an Azure::Error" do
    subject.must_be_kind_of Azure::Error
  end

  it "lets us see the errors'status code" do
    subject.code.must_equal 409
  end

  it "lets us see the error's type" do
    subject.type.must_equal "TableAlreadyExists"
  end

  it "lets us see the error's description" do
    subject.description.must_equal "The table specified already exists."
  end

  it "generates an error message that wraps both the type and description" do
    subject.message.must_equal "TableAlreadyExists (409): The table specified already exists."
  end

  it "sets the type to unknown if the response body is not an XML" do
    http_response.body = "\r\nInvalid request\r\n"

    subject.type.must_equal "Unknown"
    subject.description.must_equal "Invalid request"
  end
end
