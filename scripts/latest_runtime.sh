#!/bin/sh
echo "gem 'ms_rest', path: 'runtime/ms_rest'" >> Gemfile
echo "gem 'ms_rest_azure', path: 'runtime/ms_rest_azure'" >> Gemfile
cat Gemfile
