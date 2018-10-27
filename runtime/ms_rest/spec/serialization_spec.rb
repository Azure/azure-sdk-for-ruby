# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'rspec'
require 'ms_rest'

module MsRest
  describe 'Serialization' do
    it "should fail for a 'nil' object" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true
      }
      object = nil
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, 'AvailabilitySet is required and cannot be nil')
    end

    it "should fail for an 'ExclusiveMaximum' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        type: {
          name: 'Number'
        },
        constraints: {
          ExclusiveMaximum: 100
        }
      }

      object = 100
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value '100' should satisfy the constraint 'ExclusiveMaximum': '100'")
    end

    it "should fail for an 'ExclusiveMinimum' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        type: {
          name: 'Number'
        },
        constraints: {
          ExclusiveMinimum: 5
        }
      }

      object = 5
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value '5' should satisfy the constraint 'ExclusiveMinimum': '5'")
    end

    it "should fail for an 'InclusiveMaximum' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        type: {
          name: 'Number'
        },
        constraints: {
          InclusiveMaximum: 100
        }
      }

      object = 101
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value '101' should satisfy the constraint 'InclusiveMaximum': '100'")
    end

    it "should fail for an 'InclusiveMinimum' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        type: {
          name: 'Number'
        },
        constraints: {
          InclusiveMinimum: 5
        }
      }

      object = 4
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value '4' should satisfy the constraint 'InclusiveMinimum': '5'")
    end

    it "should fail for a 'maxitems' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        constraints: {
          MaxItems: 2
        },
        type: {
          name: 'Sequence',
          element: {
            client_side_validation: true,
            required: false,
            serialized_name: 'StringElementType',
            type: {
              name: 'String'
            }
          }
        }
      }

      object = %w[One Two Three]
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value '[\"One\", \"Two\", \"Three\"]' should satisfy the constraint 'MaxItems': '2'")
    end

    it "should fail for a 'minitems' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        constraints: {
          MinItems: 4
        },
        type: {
          name: 'Sequence',
          element: {
            client_side_validation: true,
            required: false,
            serialized_name: 'StringElementType',
            type: {
              name: 'String'
            }
          }
        }
      }

      object = %w[One Two Three]
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value '[\"One\", \"Two\", \"Three\"]' should satisfy the constraint 'MinItems': '4'")
    end

    it "should fail for a 'maxlength' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        type: {
          name: 'String'
        },
        constraints: {
          MaxLength: 3
        }
      }

      object = 'sample'
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value 'sample' should satisfy the constraint 'MaxLength': '3'")
    end

    it "should fail for a 'minlength' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        type: {
          name: 'String'
        },
        constraints: {
          MinLength: 7
        }
      }

      object = 'sample'
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value 'sample' should satisfy the constraint 'MinLength': '7'")
    end

    it "should fail for a 'multipleof' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        type: {
          name: 'Number'
        },
        constraints: {
          MultipleOf: 3
        }
      }

      object = 16
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value '16' should satisfy the constraint 'MultipleOf': '3'")
    end

    it "should fail for a 'pattern' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        type: {
          name: 'String'
        },
        constraints: {
          Pattern: '\d{4}-\d{2}-\d{2}'
        }
      }

      object = 'dummy'
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value 'dummy' should satisfy the constraint 'Pattern': '\\d{4}-\\d{2}-\\d{2}'")
    end

    it "should fail for a 'uniqueitems' violation" do
      mapper = {
        required: true,
        serialized_name: 'AvailabilitySet',
        client_side_validation: true,
        constraints: {
          UniqueItems: true
        },
        type: {
          name: 'Sequence',
          element: {
            client_side_validation: true,
            required: false,
            serialized_name: 'StringElementType',
            type: {
              name: 'String'
            }
          }
        }
      }

      object = %w[One Two Three One]
      serializer = MsRest::Serialization::Serialization.new(nil)
      expect { serializer.serialize(mapper, object) }.to raise_error(MsRest::ValidationError, "AvailabilitySet with value '[\"One\", \"Two\", \"Three\", \"One\"]' should satisfy the constraint 'UniqueItems': 'true'")
    end
  end
end
