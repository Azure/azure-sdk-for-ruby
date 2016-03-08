# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

include MsRestAzure
include Azure::ARM::Resources

def build_deployment_params()
  params = Models::Deployment.new
  params.properties = Models::DeploymentProperties.new
  template_link = Models::TemplateLink.new
  template_link.uri = GOOD_TEMPLATE_URI
  params.properties.template_link = template_link
  params.properties.mode = Models::DeploymentMode::Incremental
  params.properties.parameters = {
      'databaseAccountName'=> {'value'=> get_random_name('mydocs-')}
  }

  params
end

def create_deployment(resource_group_name)
  deployment_name = get_random_name('Deployment_')
  params = build_deployment_params
  RESOURCES_CLIENT.deployments.create_or_update(resource_group_name, deployment_name, params).value!.body
end

def begin_create_deployment(resource_group_name)
  deployment_name = get_random_name('Deployment_')
  params = build_deployment_params
  RESOURCES_CLIENT.deployments.begin_create_or_update(resource_group_name, deployment_name, params).value!.body
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

GOOD_TEMPLATE_URI = 'https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-documentdb-account-create/azuredeploy.json'
