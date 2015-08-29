#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "delegate"

module Azure
  module ServiceBus
      # Public: Helper class to decorate a numeric duration so it can be output
      # as an ISO8601-compliant Duration. (This class only implements the subset
      # of the ISO8601 standard that the Azure REST API uses.)
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
          re = /P([\d\.\,]+Y)?([\d\.\,]+M)?([\d\.\,]+D)?(?:T([\d\.\,]+H)?([\d\.\,]+M)?([\d\.\,]+S)?)?/

          match = re.match(string)

          return nil if match.nil?

          #years   = match[1].to_f
          #months  = match[2].to_f         
          days    = match[3].to_f
          hours   = match[4].to_f
          minutes = match[5].to_f
          seconds = match[6].to_f 

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
            :d => days.zero? ? nil : "#{days}D"
          }

          time = "%<h>s%<m>s%<s>s" % {
            :h => hours.zero?               ? nil : "#{hours}H",
            :m => minutes.zero?             ? nil : "#{minutes}M",
            :s => nonzero? && seconds.zero? ? nil : "#{seconds}S"
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