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
require "azure/virtual_machine/serialization"

module Azure::VirtualMachine
    
  class ImageService < BaseManagementService

    # Public: Gets a list of virtual machine images from the server
    #
    # Returns an array of Azure::VirtualMachine::Image objects
    def list_virtual_machine_images
      response = get("/services/images")
      Serialization.virtual_machine_images_from_xml(response)
    end

    # Public: Creates an image based on the supplied configuration.
    #
    # ==== Attributes
    #
    # * +options+    - Hash. Parameters for image creation.
    #
    #  ==== Required Parameters
    #
    # Accepted key/value pairs are:
    # * +:label+        - String.  Specifies the friendly name of the image.
    # * +:media_link+   - String.  Specifies the location of the blob in Windows Azure storage.
    # * +:name+         - String.  Specifies a name that is used to identify the image when creating virtual machines.
    # * +:os_type+      - String.  The operating system type of the OS image. Possible values are: Linux, Windows.
    #
    #  ==== Optional Parameters
    #
    # Accepted key/value pairs are:
    # * +:eula+                  - String.  Specifies the End User License Agreement associated with the image. 
    # * +:description+           - String.  Specifies the description of the OS image.
    # * +:image_family+          - String.  Specifies a value that can be used to group OS images.
    # * +:published_date+        - String.  Specifies the date when the OS image was added to the image repository.
    # * +:is_premium+            - Boolean. Indicates if the image contains software or associated services that 
    #                                       will incur charges above the core price for the virtual machine.
    # * +:show_in_gui+           - Boolean. Specifies whether the image should appear in the image gallery.
    # * +:privacy_uri+           - String.  Specifies the SSH port number.
    # * +:icon_uri+              - String.  Specifies the size of the virtual machine instance.  
    # * +:recommended_vm_size+   - Integer. Specifies the size to use for the virtual machine that is created from the OS image.   
    # * +:small_icon_uri+        - String.  Specifies the URI to the small icon.
    # * +:language+              - String.  Specifies the language of the image.
    #
    # Returns Azure::VirtualMachine::Image objects of newly created instance.      
    # 
    # See http://msdn.microsoft.com/en-us/library/windowsazure/jj157192.aspx for details
    def create_virtual_machine_image(options = {})
      image = Image.new(options)
      Loggerx.info "Creating Image \"#{image.name || '<unknown name>'}\". "
      if image.valid?
        post('/services/images', image.to_xml)
      else
        raise image.errors.first
      end
      image
    end

  end
end

