# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

include MsRestAzure
include Azure::ARM::Resources

def build_deployment_params()
  params = Models::Deployment.new()
  params.properties = Models::DeploymentProperties.new()
  template_link = Models::TemplateLink.new()
  template_link.uri = Good_template_uri
  params.properties.template_link = template_link
  params.properties.mode = Models::DeploymentMode::Incremental
  params.properties.parameters = {
      'siteName'=> {'value'=> 'mctest0101'},
      'hostingPlanName'=> {'value'=> 'mctest0101'},
      'siteMode'=> {'value'=> 'Limited'},
      'computeMode'=> {'value'=> 'Shared'},
      'siteLocation'=> {'value'=> 'North Europe'},
      'sku'=> {'value'=> 'Free'},
      'workerSize'=> {'value'=> '0'}
  }

  params
end

def create_deployment(resource_group_name)
  deployment_name = get_random_name('Deployment_')
  params = build_deployment_params
  RESOURCES_CLIENT.deployments.create_or_update(resource_group_name, deployment_name, params).value!.body
end

def wait_for_deployment(resource_group_name, deployment_name, params)
  tries = 0
  loop do
    begin
      RESOURCES_CLIENT.deployments.validate(resource_group_name, deployment_name, params).value!
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
