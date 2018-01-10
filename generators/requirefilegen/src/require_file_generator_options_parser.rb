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
#    -m, --mode : Mode for which the require files are to be generated.
#                 ['rollup', 'individual']
#    -s, --sdk_path : Path to Azure Ruby SDK
#    -g, --gem_name : Name of the gem
#

class RequireFileGeneratorOptionsParser
  def self.parse(args)
    options = OpenStruct.new

    opt_parser = OptionParser.new do |opts|
      opts.banner = 'Usage: require_file_generator.rb [options]'

      opts.on('-mMODE', '--mode=MODE', 'Mode for which the require files are to be generated') do |mode|
        if (mode != 'rollup' && mode != 'individual')
          raise OptionParser::InvalidOption.new("mode can be only 'rollup'/'individual'")
        end
        options.mode = mode
      end

      opts.on('-sSDK_PATH', '--sdk_path=SDK_PATH', 'SDK Path') do |sdk_path|
        options.sdk_path = sdk_path
      end

      opts.on('-gGEM_NAME', '--gem_name=GEM_NAME', 'Gem Name') do |gem_name|
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
    mandatory_params = [:mode, :sdk_path, :gem_name]
    missing_params = mandatory_params.select{|param| options[param].nil?}
    raise OptionParser::MissingArgument.new(missing_params.join(', ')) unless missing_params.empty?
    options
  end
end
