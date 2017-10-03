# encoding: utf-8
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
#    -o, --output_dir : Output directory to store the generated profile SDK
#    -d, --dir_metadata : File that contains metadata info about RPs
#    -p, --profile : Input file contains the profile generation info about RPs, versions, etc.
#

class ProfileGeneratorOptionsParser
  def self.parse(args)
    options = OpenStruct.new

    opt_parser = OptionParser.new do |opts|
      opts.banner = 'Usage: profile_generator_client.rb [options]'

      #opts.on('-oOUTPUT_DIR', '--output_dir=OUTPUT_DIR', 'Output directory to generate the profiles') do |base_dir|
      #  options.base_dir = base_dir
      #end

      opts.on('-dDIR_METADATA', '--dir_metadata=DIR_METADATA', 'File containing directory metadata') do |dir_metadata|
        options.dir_metadata = dir_metadata
      end

      opts.on('-pPROFILE', '--profile=PROFILE', 'File containing profile') do |profile|
        options.profile = profile
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
    mandatory_params = [:dir_metadata, :profile]
    missing_params = mandatory_params.select{|param| options[param].nil?}
    raise OptionParser::MissingArgument.new(missing_params.join(', ')) unless missing_params.empty?
    options
  end
end
