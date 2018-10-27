# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'

class Definition
  #
  # Method to get renderer
  #
  # @param template for which the renderer will be created
  #
  def get_renderer(template)
    renderer = ERB.new(template, 0, '-%>')
    renderer.result(get_binding)
  end

  #
  # get_binding method used for rendering the erb template
  #
  def get_binding
    binding
  end
end
