require "test_helper"
require "azure/core/utils/interval"

describe Azure::Core::Utils::Interval do
  let :described_class do
    Azure::Core::Utils::Interval
  end

  describe ".parse" do
    def self.assert_parses(interval_string, seconds)
      it "parses #{interval_string.inspect} into #{seconds.inspect}s" do
        described_class.parse(interval_string).must_equal seconds
      end
    end

    assert_parses "P1D",    86400
    assert_parses "P1DT0S", 86400
    assert_parses "PT1H",   3600
    assert_parses "PT1M",   60
    assert_parses "PT1S",   1

    assert_parses "PT0.12S", 0.12

    assert_parses "P1DT1H1M1S",      90061
    assert_parses "P8DT3H24M15.12S", 703455.12
  end

  describe ".try_convert" do
    it "creates an Interval out of a number" do
      result = described_class.try_convert(10.5)
      result.class.must_equal described_class
      result.must_equal 10.5
    end

    it "creates an Interval out of a properly formatted string" do
      result = described_class.try_convert("PT1H")
      result.class.must_equal described_class
      result.must_equal 3600
    end

    it "returns nil if passed a malformed string" do
      result = described_class.try_convert("WAT?")
      result.must_be_nil
    end

    it "returns nil if passed nil" do
      result = described_class.try_convert(nil)
      result.must_be_nil
    end
  end

  describe "#to_s" do
    def self.assert_converts(seconds, interval_string)
      it "converts #{seconds.inspect}s into #{interval_string.inspect}" do
        described_class.new(seconds).to_s.must_equal interval_string
      end
    end

    assert_converts 86400, "P1D"
    assert_converts 3600,  "PT1H"
    assert_converts 60,    "PT1M"
    assert_converts 1,     "PT1S"
    assert_converts 0,     "PT0S"

    assert_converts 0.12, "PT0.12S"

    assert_converts 90061,    "P1DT1H1M1S"
    assert_converts 703455.5, "P8DT3H24M15.5S"
  end
end
