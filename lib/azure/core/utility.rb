if RUBY_VERSION.to_f < 2.0
  begin
    require 'Win32/Console/ANSI' if RUBY_PLATFORM =~ /win32|mingw32/
  rescue LoadError
    puts 'WARNING: Output will look weird on Windows unless you install the "win32console" gem.'
  end
end

module Azure
  module Core
    module Utility

      def random_string(str='azure',no_of_char=5)
        str+(0...no_of_char).map{ ('a'..'z').to_a[rand(26)] }.join
      end

      def xml_content(xml, key, default='')
        content = default
        node = xml.at_css(key)
        if node
          content = node.text
        end
        content
      end

      def locate_file(name)
        if File.exist? name
          name
        elsif File.exist?(File.join(ENV['HOME'], name))
          File.join(ENV['HOME'], name)
        else
          Loggerx.error_with_exit "Unable to find #{name} file  "
        end
      end

      def export_der(cert, key, pass=nil, name=nil)
        begin
          pkcs12 = OpenSSL::PKCS12.create(pass, name, key, cert)
          Base64.encode64(pkcs12.to_der)
        rescue Exception => e
          puts e.message
          abort
        end
      end

      def export_fingerprint(certificate)
        Digest::SHA1.hexdigest(certificate.to_der)
      end

      def enable_winrm?(winrm_transport)
        (!winrm_transport.nil? && (winrm_transport.select{|x| x.downcase == 'http' or x.downcase == 'https'}.size > 0))
      end

    end

    module Logger
      class << self
        def info(msg)
          puts msg.bold.white
        end

        def error_with_exit(msg)
          puts  msg.bold.red
          raise RuntimeError, msg.bold.red
        end

        def warn(msg)
          puts msg.yellow
          msg
        end

        def error(msg)
          puts msg.bold.red
          msg
        end

        def exception_message(msg)
          print msg.bold.red
          raise RuntimeError, msg.bold.red
        end

        def success(msg)
          msg_with_new_line = msg+"\n"
          print msg_with_new_line.green
        end
      end
    end

  end
end

class String
  { :reset          =>  0,
    :bold           =>  1,
    :dark           =>  2,
    :underline      =>  4,
    :blink          =>  5,
    :orange         =>  6,
    :negative       =>  7,
    :black          => 30,
    :red            => 31,
    :green          => 32,
    :yellow         => 33,
    :blue           => 34,
    :magenta        => 35,
    :cyan           => 36,
    :white          => 37,
  }.each do |key, value|
    define_method key do
      "\e[#{value}m" + self + "\e[0m"
    end
  end

end