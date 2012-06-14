require "test_helper"
require "azure/blobs/shared_access_signature"

describe Azure::Blobs::SharedAccessSignature do
  let :signer do
    signer = MiniTest::Mock.new
    signer.stub(:sign, "SignedString==")
    signer
  end

  let :from do
    double(iso8601: "from")
  end

  let :to do
    double(iso8601: "to")
  end

  let :resource do
    resource = MiniTest::Mock.new
    resource.stub(:resource_type, "c")
    resource.stub(:url, URI("http://example.org/path"))
    resource
  end

  def build(permissions, from, to, id=nil)
    Azure::Blobs::SharedAccessSignature.new(
      permissions, from, to, id, "account_name", signer
    )
  end

  it "generates the URI based on the resource's URI" do
    sas = build("r", from, to)

    uri   = sas.url(resource)
    query = sas.query_params(resource)

    uri.host.must_equal resource.url.host
    uri.query.must_equal ::URI.encode_www_form(query)
  end

  it "includes the specified permission string, start, and expiry date" do
    params = build("r", from, to).query_params(resource)

    params["sp"].must_equal "r"
    params["st"].must_equal "from"
    params["se"].must_equal "to"
  end

  it "includes the signedidentifier only if an identifier was provided" do
    params = build("r", from, to).query_params(resource)
    refute params.key?("si")

    params = build("r", from, to, "id").query_params(resource)
    params["si"].must_equal "id"
  end

  it "signs the provided parameters" do
    signer.expect(:sign, "SignedString==", ["r\nfrom\nto\n/account_name/path\nid"])

    params = build("r", from, to, "id").query_params(resource)
    params["sig"].must_equal "SignedString=="

    signer.verify
  end
end
