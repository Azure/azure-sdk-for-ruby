require "delegate"

module Azure
  module Core
    module Utils
      # Public: Helper class to decorate a numeric duration so it can be output
      # as an ISO8601-compliant Duration. (This class only implements a subset
      # of the ISO8601 standard, since it's what Microsoft appears to be using.)
      #
      # Examples
      #
      #   # Initialize an Interval from a Number, or use .try_convert to be
      #   # intelligent:
      #
      #   Interval.new(10)              #=> PT10S
      #   Interval.try_convert(10)      #=> PT10S
      #   Interval.try_convert("PT10S") #=> PT10S
      #   Interval.try_convert(nil)     #=> nil
      class Interval < SimpleDelegator

        # Public: Attempt to convert an object into an Interval.
        #
        # object - An object that might be converted into an Interval.
        #
        # Returns an Interval or nil.
        def self.try_convert(object)
          if object.respond_to?(:to_interval)
            object.to_interval
          elsif object.respond_to?(:to_int)
            new(object)
          elsif object.respond_to?(:to_str)
            parse(object)
          else
            nil
          end
        end

        # Public: Parse a String into an Interval.
        #
        # string - A String in the Interval format.
        #
        # Returns an Interval.
        def self.parse(string)
          re = /
                P (?<d>[\d]+D)?     # match days
                (?:
                 T (?<h>[\d]+H)?    # match hours
                   (?<m>[\d]+M)?    # match minutes
                   (?<s>[\d\.]+S)?  # match seconds
                )?
               /x

          match = re.match(string)

          return nil if match.nil?

          days    = match[:d].to_i
          hours   = match[:h].to_i
          minutes = match[:m].to_i
          seconds = match[:s].to_f

          new(seconds + minutes * 60 + hours * 3600 + days * 86400)
        end

        # Public: Return this amount of seconds formatted as an interval.
        #
        # Returns a String.
        def to_s
          days    = to_i / 86400
          hours   = (to_i % 86400) / 3600
          minutes = (to_i % 3600) / 60
          seconds = (self % 60)

          days = "%<d>s" % {
            d: days.zero? ? nil : "#{days}D"
          }

          time = "%<h>s%<m>s%<s>s" % {
            h: hours.zero?               ? nil : "#{hours}H",
            m: minutes.zero?             ? nil : "#{minutes}M",
            s: nonzero? && seconds.zero? ? nil : "#{seconds}S"
          }

          "P#{days}" + (time.empty? ? "" : "T#{time}")
        end
        alias_method :inspect, :to_s

        # Public: Convert this object into an interval.
        #
        # Returns self.
        def to_interval
          self
        end
      end
    end
  end
end
