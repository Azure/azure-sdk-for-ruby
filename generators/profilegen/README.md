#Azure Profiles Generator
This project provides a way to generate profile gems for Azure SDK for Ruby.

##Profile
A profile is a collection of multiple resource types, of specific versions. The Azure profiles generator creates a 
profile gem that combines all these resource types and create one profile gem.
 
##Profile Example
The following is an example of a Profile:

```json
[
  {
      "name": "Profile_Azure_Stack",
      "resourceTypes": {
        "Microsoft.Storage": {
          "2017-06-01": ["*"]
        },
        "Microsoft.Network" : {
          "2017-09-01": ["*"]
        },
        "Microsoft.Compute" : {
          "2017-03-30": ["*"]
        },
        "Microsoft.Features" : {
          "2015-12-01": ["*"]
        },
        "Microsoft.Links" : {
          "2016-09-01": ["*"]
        },
        "Microsoft.Locks" : {
          "2016-09-01": ["*"]
        },
        "Microsoft.Policy" : {
          "2017-06-01-preview": ["*"]
        },
        "Microsoft.Resources" : {
          "2017-05-10": ["*"]
        },
        "Microsoft.Subscriptions" : {
          "2016-06-01": ["*"]
        }
      },
      "output_dir": "../../../azure_sdk/lib"
    }
]
```

##Generator
The following command must be used to generate the profile gems:

```ruby
ruby profile_generator_client.rb --dir_metadata='./res/dir_metadata.json' --profile='../spec/res/profile.json'
```

##
