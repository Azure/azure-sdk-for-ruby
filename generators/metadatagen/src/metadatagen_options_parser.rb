# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'optparse'
require 'ostruct'

#
# Command line options parser for the generation
# of require files.
#
# Options
#    -h, --help : Displays help for the require files generator
#    -p, --plane : Data/Management Plane
#    -s, --sdk_path : Path to Azure Ruby SDK
#    -g, --gem_name: Name of the gem
#

class MetaDataGeneratorOptionsParser
  def self.parse(args)
    options = OpenStruct.new

    opt_parser = OptionParser.new do |opts|
      opts.banner = 'Usage: metadatagen.rb [options]'

      opts.on('-pPLANE', '--plane=PLANE', 'Data/Management Plane') do |plane|
        if (plane != 'data' && plane != 'management')
          raise OptionParser::InvalidOption.new('plane must be data/management')
        end
        options.plane = plane
      end

      opts.on('-sSDK_PATH', '--sdk_path=SDK_PATH', 'SDK Path') do |sdk_path|
        options.sdk_path = sdk_path
      end

      opts.on('-gGEM_NAME', '--gem_name=gGEM_NAME', 'Gem Name') do |gem_name|
        options.gem_name = gem_name
      end

      opts.on('-h', '--help', 'Prints this help') do
        puts opts
        exit
      end
    end

    opt_parser.parse!(args)
    options
  end

  #
  # Gets the parsed command line options.
  #
  def self.options(args)
    args << '-h' if args.empty?
    options = self.parse(args)
    mandatory_params = [:plane, :gem_name, :sdk_path]
    missing_params = mandatory_params.select{|param| options[param].nil?}
    raise OptionParser::MissingArgument.new(missing_params.join(', ')) unless missing_params.empty?
    options
  end
end
