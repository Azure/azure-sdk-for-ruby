# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

include MsRestAzure
include Azure::ARM::Compute
include Azure::ARM::Compute::Models

def build_availability_set_parameters
  params = AvailabilitySet.new()
  props = AvailabilitySetProperties.new()
  params.properties = props
  params.location = 'westus'

  params
end


def create_availability_set(client, resource_group)
  availabilitySetName = get_random_name("avail")
  params = build_availability_set_parameters
  client.create_or_update(resource_group.name, availabilitySetName, params).value!.body
end