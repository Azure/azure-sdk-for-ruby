#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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

require 'ipaddr'

if RUBY_VERSION.to_f < 2.0
  begin
    require 'Win32/Console/ANSI' if RUBY_PLATFORM =~ /win32|mingw32/
  rescue LoadError
    puts 'WARNING: Output will look weird on Windows unless'\
         ' you install the "win32console" gem.'
  end
end

module Azure
  module Error
    # Azure Error
    class Error <  Azure::Core::Error
      attr_reader :description
      attr_reader :status_code
      attr_reader :type

      def initialize(type, status, description)
        @type = type
        @status_code = status
        @description = description
        super("#{type} (#{status_code}): #{description}")
      end
    end
  end

  module Core
    module Utility
      def random_string(str = 'azure', no_of_char = 5)
        str + (0...no_of_char).map { ('a'..'z').to_a[rand(26)] }.join
      end

      def xml_content(xml, key, default = '')
        content = default
        node = xml.at_css(key)
        content = node.text if node
        content
      end

      def locate_file(name)
        if File.exist? name
          name
        elsif File.exist?(File.join(ENV['HOME'], name))
          File.join(ENV['HOME'], name)
        else
          Azure::Loggerx.error_with_exit "Unable to find #{name} file  "
        end
      end

      def export_der(cert, key, pass = nil, name = nil)
        pkcs12 = OpenSSL::PKCS12.create(pass, name, key, cert)
        Base64.encode64(pkcs12.to_der)
      rescue Exception => e
        puts e.message
        abort
      end

      def export_fingerprint(certificate)
        Digest::SHA1.hexdigest(certificate.to_der)
      end

      def enable_winrm?(winrm_transport)
        (!winrm_transport.nil? && (winrm_transport.select { |x| x.downcase == 'http' || x.downcase == 'https' }.size > 0))
      end

      def get_certificate(private_key_file)
        rsa = OpenSSL::PKey.read File.read(private_key_file)
        cert = OpenSSL::X509::Certificate.new
        cert.version = 2
        cert.serial = 0
        name = OpenSSL::X509::Name.new([['CN', 'Azure Management Certificate']])
        cert.subject = cert.issuer = name
        cert.not_before = Time.now
        cert.not_after = cert.not_before + (60*60*24*365)
        cert.public_key = rsa.public_key
        cert.sign(rsa, OpenSSL::Digest::SHA1.new)
        cert
      end

      def initialize_external_logger(logger)
        Loggerx.initialize_external_logger(logger)
      end
    end

    # Logger
    module Logger
      class << self
        attr_accessor :logger

        def info(msg)
          if logger.nil?
            puts msg.bold.white
          else
            logger.info(msg)
          end
        end

        def error_with_exit(msg)
          if logger.nil?
            puts msg.bold.red
          else
            logger.error(msg)
          end

          raise msg.bold.red
        end

        def warn(msg)
          if logger.nil?
            puts msg.yellow
          else
            logger.warn(msg)
          end

          msg
        end

        def error(msg)
          if logger.nil?
            puts msg.bold.red
          else
            logger.error(msg)
          end

          msg
        end

        def exception_message(msg)
          if logger.nil?
            puts msg.bold.red
          else
            logger.warn(msg)
          end

          raise msg.bold.red
        end

        def success(msg)
          msg_with_new_line = msg + "\n"
          if logger.nil?
            print msg_with_new_line.green
          else
            logger.info(msg)
          end
        end

        def initialize_external_logger(logger)
          @logger = logger
        end
      end
    end
  end
end

class String
  { reset:  0,
    bold:  1,
    dark:  2,
    underline:  4,
    blink:  5,
    orange:  6,
    negative:  7,
    black: 30,
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    white: 37,
  }.each do |key, value|
    define_method key do
      "\e[#{value}m" + self + "\e[0m"
    end
  end
end

# Code validate private/public IP acceptable ranges.
class IPAddr
  PRIVATE_RANGES = [
    IPAddr.new('10.0.0.0/8'),
    IPAddr.new('172.16.0.0/12'),
    IPAddr.new('192.168.0.0/16')
  ]

  def private?
    return false unless self.ipv4?
    PRIVATE_RANGES.each do |ipr|
      return true if ipr.include?(self)
    end
    false
  end

  def public?
    !private?
  end

  class << self
    def validate_ip_and_prefix(ip, cidr)
      if cidr.to_s.empty?
        raise "Cidr is missing for IP '#{ip}'."
      elsif valid?(ip)
        raise "Ip address '#{ip}' is invalid."
      elsif !IPAddr.new(ip).private?
        raise "Ip Address #{ip} must be private."
      end
    end

    def validate_address_space(ip)
      if ip.split('/').size != 2
        raise "Cidr is invalid for IP #{ip}."
      elsif valid?(ip)
        raise "Address space '#{ip}' is invalid."
      end
    end

    def address_prefix(ip, cidr)
      ip + '/' + cidr.to_s
    end

    def valid?(ip)
      (IPAddr.new(ip) rescue nil).nil?
    end
  end
end

Azure::Loggerx = Azure::Core::Logger
