include MsRestAzure
include Azure::ARM::Compute

def build_availability_set_parameters
  params = Models::AvailabilitySet.new()
  props = Models::AvailabilitySetProperties.new()
  params.properties = props
  params.location = 'westus'

  params
end


def create_availability_set(client, resource_group)
  availabilitySetName = get_random_name("avail")
  params = build_availability_set_parameters
  client.create_or_update(resource_group.name, availabilitySetName, params).value!.body
end