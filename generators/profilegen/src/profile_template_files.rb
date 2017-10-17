# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

#
# Module that stores various template files to be used
# in the generation of profile SDKs
#
module ProfileTemplateFiles
  module Rollup
    MODULE_TEMPLATE = 'templates/rollup/module_template.template'
    CLIENT_TEMPLATE = 'templates/rollup/client_template.template'
    MODULE_DEFINITION_TEMPLATE = 'templates/rollup/module_definition_template.template'
  end 

  module Individual
    MODULE_TEMPLATE = 'templates/individual/module_template.template'
    CLIENT_TEMPLATE = 'templates/individual/client_template.template'
    MODULE_DEFINITION_TEMPLATE = 'templates/individual/module_definition_template.template'
  end
end