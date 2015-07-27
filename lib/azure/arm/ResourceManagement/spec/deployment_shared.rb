#-------------------------------------------------------------------------
# Copyright 2015 Microsoft Open Technologies, Inc.
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

require_relative 'test_helper'

include MsRestAzure
include Azure::ARM::Resources

def build_deployment_params()
  params = Models::Deployment.new()
  params.properties = Models::DeploymentProperties.new()
  template_link = Models::TemplateLink.new()
  template_link.uri = Good_template_uri
  params.properties.template_link = template_link
  params.properties.parameters = {
      'siteName'=> {'value'=> 'mctest0101'},
      'hostingPlanName'=> {'value'=> 'mctest0101'},
      'siteMode'=> {'value'=> 'Limited'},
      'computeMode'=> {'value'=> 'Shared'},
      'siteLocation'=> {'value'=> 'North Europe'},
      'sku'=> {'value'=> 'Free'},
      'workerSize'=> {'value'=> '0'}
  }
  params.properties.mode = DeploymentMode::Incremental

  params
end

def create_deployment(resource_group_name)
  deployment_name = get_random_name('Deployment_')
  params = build_deployment_params
  Client.deployments.create_or_update(resource_group_name, deployment_name, params).value!.body
end

def wait_for_deployment(resource_group_name, deployment_name, params)
  tries = 0
  loop do
    begin
      Client.deployments.validate(resource_group_name, deployment_name, params).value!
      break
    rescue Exception
      tries += 1
      sleep(1)
    end

    if tries > 10
      break
    end
  end
end

Good_template_uri = "https://testtemplates.blob.core.windows.net/templates/good-website.js"
