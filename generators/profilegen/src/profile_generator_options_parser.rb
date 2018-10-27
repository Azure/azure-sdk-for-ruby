# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'optparse'
require 'ostruct'

#
# Command line options parser for the generation
# of profile SDKs.
#
# Options
#    -h, --help : Displays help for the profile generator
#    -d, --dir_metadata : File that contains metadata info about RPs
#    -p, --profile : Input file contains the profile generation info about RPs, versions, etc.
#    -m, --mode : Mode can be 'rollup'/ 'management'
#    -k, --key : Key of the Profile
#    -s, --sdk_path : Path to Azure Ruby SDK
#

class ProfileGeneratorOptionsParser
  def self.parse(args)
    options = OpenStruct.new

    opt_parser = OptionParser.new do |opts|
      opts.banner = 'Usage: profile_generator_client.rb [options]'

      opts.on('-dDIR_METADATA', '--dir_metadata=DIR_METADATA', 'File containing directory metadata') do |dir_metadata|
        options.dir_metadata = dir_metadata
      end

      opts.on('-pPROFILE', '--profile=PROFILE', 'File containing profile') do |profile|
        options.profile = profile
      end

      opts.on('-mMODE', '--mode=MODE', 'Mode') do |mode|
        options.mode = mode
      end

      opts.on('-kKEY', '--key=KEY', 'Key') do |key|
        options.key = key
      end

      opts.on('-sSDK_PATH', '--sdk_path=SDK_PATH', 'SDK Path') do |sdk_path|
        options.sdk_path = sdk_path
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
    options = parse(args)
    mandatory_params = %i[dir_metadata profile mode key sdk_path]
    missing_params = mandatory_params.select { |param| options[param].nil? }
    raise OptionParser::MissingArgument, missing_params.join(', ') unless missing_params.empty?

    options
  end
end
