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
    "name": "Api_2016_06_30",
    "ruby_version": "1.0.0",
    "resourceTypes": {
      "Microsoft.Compute" : {
        "version": "2016_06_30",
        "models": ["VirtualMachine", "Disk"]
      },
      "Microsoft.Network" : {
        "version": "2016_06_30",
        "models": ["Subnet", "Usage"]
      }
    }
  }
]
```

The above profile (API_2016_06_30) defines 2 resource types - Microsoft.Compute(version: 2016_06_30) & Microsoft.Network(version: 
2016_06_30). 

##Generator
The following command must be used to generate the profile gems:

```ruby
ruby profile_generator_client.rb --output_dir='/Users/saranganrajamanickam/Projects/azure-sdk-for-ruby/profiles' --dir_metadata='./res/dir_metadata.json' --profile='../spec/res/profile.json' --version='1.0.0'
```

##
