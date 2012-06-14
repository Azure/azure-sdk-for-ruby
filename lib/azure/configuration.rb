require "singleton"

module Azure
  # Public: Sugar to configure the services in a neatly wrapped DSL.
  #
  # Yields the Azure::Configuration instance.
  #
  # Example:
  #
  #   Azure.configure do |config|
  #     config.account_name = ENV["AZURE_ACCOUNT_NAME"]
  #   end
  #
  # Returns nothing.
  def self.configure
    yield config
  end

  # Public: Access the service configuration.
  #
  # Returns the Azure::Configuration instance.
  def self.config
    Configuration.instance
  end

  # Singleton that keeps the configuration of the system.
  class Configuration
    include Singleton

    # Public: Get/Set the Access Key for this service.
    attr_accessor :access_key

    # Public: Get/Set the Account Name for this service.
    attr_accessor :account_name

    # # Public: Get/Set the Access Control Namespace for this service.
    # attr_accessor :acs_namespace

    # Public: Get/Set the Service Bus Access Key (Issuer Secret) for this service.
    attr_accessor :sb_access_key

    # Public: Get/Set the Service Bus Issuer for this service.
    attr_accessor :sb_issuer

    # Public: Get/Set the ACS namespace for this service.
    attr_accessor :acs_namespace

    # Public: Set the host for the Table service. Only set this if you want
    # something custom (like, for example, to point this to a LocalStorage
    # emulator). This should be the complete host, including http:// at the
    # start. When using the emulator, make sure to include your account name at
    # the end.
    #
    # Example:
    #
    #   config.table_host = "http://127.0.0.1:10002/devstoreaccount1"
    attr_writer :table_host

    # Public: Get the host for this service. If you set something using #host=,
    # then we use that. Else we default to Windows Azure's default hosts, based
    # on your account name.
    def table_host
      @table_host || default_host(:table)
    end

    # Public: Set the host for the Blob service. Only set this if you want
    # something custom (like, for example, to point this to a LocalStorage
    # emulator). This should be the complete host, including http:// at the
    # start. When using the emulator, make sure to include your account name at
    # the end.
    #
    # Example:
    #
    #   config.blob_host = "http://127.0.0.1:10000/devstoreaccount1"
    attr_writer :blob_host

    # Public: Get the host for this service. If you set something using #host=,
    # then we use that. Else we default to Windows Azure's default hosts, based
    # on your account name.
    def blob_host
      @blob_host || default_host(:blob)
    end

    # Public: Set the host for the Queue service. Only set this if you want
    # something custom (like, for example, to point this to a LocalStorage
    # emulator). This should be the complete host, including http:// at the
    # start. When using the emulator, make sure to include your account name at
    # the end.
    #
    # Example:
    #
    #   config.queue_host = "http://127.0.0.1:10001/devstoreaccount1"
    attr_writer :queue_host

    # Public: Get the host for this service. If you set something using #host=,
    # then we use that. Else we default to Windows Azure's default hosts, based
    # on your account name.
    def queue_host
      @queue_host || default_host(:queue)
    end

    # Public: Get the host for the ACS service.
    def acs_host
      "https://#{acs_namespace}-sb.accesscontrol.windows.net"
    end

    # Public: Get the host for the Service Bus service.
    def service_bus_host
      "https://#{acs_namespace}.servicebus.windows.net"
    end

    # Calculate the default host for a given service in the cloud.
    #
    # service - One of :table, :blob, :queue, etc.
    #
    # Returns a String with the hostname, including your account name.
    def default_host(service)
      "http://#{account_name}.#{service}.core.windows.net"
    end
  end
end
