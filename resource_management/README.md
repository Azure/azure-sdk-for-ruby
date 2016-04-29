## Development Environment Setup

### Download Source Code

To get the source code of the SDK via **git** just type:

```bash
git clone https://github.com/Azure/azure-sdk-for-ruby.git
cd ./azure-sdk-for-ruby
```
Move to the folder containing Gemfile
```bash
cd resource_management
```
Then, run bundler to install all the gem dependencies:

```bash
bundle install
```

### Run Recorded Integration Tests
 * Set the environment variable ``INTEG_RECORDED = true``
 * Run ``rake arm:spec``
### Re-Record Integration Tests
 * Set the environment variable ``INTEG_RECORDED = false`` or un-set it
 * Move into ``resource_management`` folder
 * Copy .env_sample to .env
 * Update .env with your Azure credentials **.env is in the .gitignore, so should only reside locally**
 * Run specific test using ``rspec``
 example: 
```bash
 cd ./azure_mgmt_compute
 rspec spec/virtual_machines_spec.rb
```
**If vcr cassette exist then it'll replay the test otherwise it'll record it.**

## Provide Feedback

If you encounter any bugs with the library please file an issue in the [Issues](https://github.com/Azure/azure-sdk-for-ruby/issues) section of the project.
