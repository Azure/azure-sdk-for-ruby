# Azure Ruby SDK

## Generating documentation

Run the following command:

    rake doc

This will generate the API documentation in the `./doc` directory.

## Running tests

In order to run the tests, run `rake`.

This will run all the unit tests, and then attempt to run the integration tests,
which need a real azure server running.

In order for the integration tests to run, you need the following ENV variables:

* `AZURE_ACCOUNT_NAME`: The name of the storage account you're using.
  - If testing against the emulator, this must be `devstoreaccount1`
* `AZURE_ACCESS_KEY`: The Base64-encoded Access Key for your storage account.
  - If testing against the emulator, this must be
  `Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==`
* `AZURE_BLOB_HOST`: Pointing to the server running the Azure platform.
  - If testing against the real thing: `http://<account-name>.blob.core.windows.net`
  - If testing against the emulator: `http://localhost:10000/<account-name>`
* `AZURE_QUEUE_HOST`: Pointing to the server running the Azure platform.
  - If testing against the real thing: `http://<account-name>.queue.core.windows.net`
  - If testing against the emulator: `http://localhost:10001/<account-name>`
* `AZURE_TABLE_HOST`: Pointing to the server running the Azure platform.
  - If testing against the real thing: `http://<account-name>.table.core.windows.net`
  - If testing against the emulator: `http://localhost:10002/<account-name>`
* `AZURE_ACS_NAMESPACE`: a ServiceBus management namespace.
* `AZURE_SB_ACCESS_KEY`: The Base64-encoded Access Key for your ServiceBus
  namespace.
* `AZURE_SB_ISSUER`: The name of the issuer for the ServiceBus. This should be `owner`
