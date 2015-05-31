module Azure
  # The Azure::Configurable module provides basic configuration for Azure activities.
  module Configurable

    # @!attribute [w] storage_access_key
    #   @return [String] Azure Storage access key.
    # @!attribute storage_account_name
    #   @return [String] Azure Storage account name
    # @!attribute sb_access_key
    #   @return [String] Azure Service Bus access key
    # @!attribute sb_namespace
    #   @return [String] Azure Service Bus namespace
    # @!attribute sb_issuer
    #   @return [String] Azure Service Bus issuer
    # @!attribute ca_file
    #   @return [String] Location of the Certificate Authority bundle to be used for HTTPS
    # @!attribute management_certificate
    #   @return [String|File] Azure Service Management certificate (pfx or pem)
    # @!attribute subscription_id
    #   @return [String] Azure Subscription ID
    # @!attribute http_private_key
    #   @return [String] Private key used for HTTPS certificate based authentication (derived from the management cert)
    # @!attribute http_certificate_key
    #   @return [String] Public key used for HTTPS certificate based authentication (derived from the management cert)
    # @!attribute sql_database_management_endpoint
    #   @return [String] Azure SQL database management endpoint. default: https://management.database.windows.net:8443/
    # @!attribute sql_database_authentication_mode
    #   @return [String] Azure SQL database authentication mode. default:
    # @!attribute storage_blob_host
    #   @return [String] Set the host for the Blob service. Only set this if you want
    #     something custom (like, for example, to point this to a LocalStorage
    #     emulator). This should be the complete host, including http:// at the
    #     start. When using the emulator, make sure to include your account name at
    #     the end.
    # @!attribute storage_table_host
    #   @return [String] Get the host for this service. If you set something using #storage_table_host=,
    #     then we use that. Else we default to Azure's default hosts, based
    #     on your account name.
    # @!attribute storage_queue_host
    #   @return [String] Set the host for the Queue service. Only set this if you want
    #     something custom (like, for example, to point this to a LocalStorage
    #     emulator). This should be the complete host, including http:// at the
    #     start. When using the emulator, make sure to include your account name at
    #     the end.
    # @!attribute management_endpoint
    #   @return [String] Azure Service Management Endpoint. default: https://management.core.windows.net

    attr_accessor :storage_access_key,
                  :storage_account_name,
                  :sb_access_key,
                  :sb_namespace,
                  :sb_issuer,
                  :ca_file,
                  :subscription_id,
                  :sql_database_authentication_mode

    attr_reader :http_private_key,
                :http_certificate_key,
                :acs_host,
                :service_bus_host

    attr_writer :sb_issuer,
                :storage_table_host,
                :storage_blob_host,
                :storage_queue_host,
                :sql_database_management_endpoint,
                :sql_database_authentication_mode,
                :management_endpoint

    class << self

      # List of configurable keys for {Azure::Client}
      # @return [Array] of option keys
      def keys
        @keys ||= [
            :storage_access_key,
            :storage_account_name,
            :sb_access_key,
            :ca_file,
            :sb_namespace,
            :management_certificate,
            :subscription_id,
            :sql_database_management_endpoint,
            :sql_database_authentication_mode,
            :sb_issuer,
            :storage_table_host,
            :storage_blob_host,
            :storage_queue_host,
            :management_endpoint
        ]
      end
    end

    # Set configuration options using a block
    def configure
      yield self
    end

    # Reset configuration options to default values
    def reset!
      Azure::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", Azure::Default.options[key])
      end
      @certificate_key = nil
      @private_key = nil
      self.send(:reset_agents!) if self.respond_to?(:reset_agents!)
      self
    end

    alias setup reset!

    def management_certificate
      @management_certificate
    end

    # Set the management certificate via string or file (populates #http_private_key and #http_certificate_key)
    # @param  [String|File] the string or file representing the .pem or .pfx
    def management_certificate=(cert_string_or_file)
      self.send(:reset_agents!) if self.respond_to?(:reset_agents!)
      if File.file?(cert_string_or_file) && File.extname(cert_string_or_file).downcase =~ /(pem|pfx)$/ # validate only if input is file path
        error_message = "Could not read from file '#{cert_string_or_file}'."
        raise ArgumentError.new(error_message) unless test('r', cert_string_or_file)
      end

      cert_file = if File.file?(cert_string_or_file)
                    read_cert_from_file(cert_string_or_file)
                  else
                    cert_string_or_file
                  end

      begin
        if cert_file =~ /-----BEGIN CERTIFICATE-----/
          @certificate_key = OpenSSL::X509::Certificate.new(cert_file)
          @private_key = OpenSSL::PKey::RSA.new(cert_file)
        else
          # Parse pfx content
          cert_content = OpenSSL::PKCS12.new(cert_file)
          @certificate_key = OpenSSL::X509::Certificate.new(
              cert_content.certificate.to_pem
          )
          @private_key = OpenSSL::PKey::RSA.new(cert_content.key.to_pem)
        end
        @management_certificate = cert_file
      rescue OpenSSL::OpenSSLError => e
        @certificate_key = nil
        @private_key = nil
        raise ArgumentError.new("Management certificate not valid. Error: #{e.message}")
      end
    end

    # Private side of the management certificate
    # @returns [OpenSSL::X509::Certificate]
    def http_private_key
      @private_key
    end

    # Public side of the management certificate
    # @returns [OpenSSL::PKey::RSA]
    def http_certificate_key
      @certificate_key
    end

    def management_endpoint
      normalize_endpoint do
        if URI(@management_endpoint).scheme.nil?
          "https://#{@management_endpoint}"
        else
          @management_endpoint
        end
      end
    end

    def sql_database_management_endpoint
      normalize_endpoint do
        if URI(@sql_database_management_endpoint).scheme.nil?
          "https://#{@sql_database_management_endpoint}"
        else
          @management_endpoint
        end
      end
    end

    # Storage queue host
    # @return [String]
    def storage_queue_host
      @storage_queue_host || default_host(:queue)
    end

    # Storage blob host
    # @return [String]
    def storage_blob_host
      @storage_blob_host || default_host(:blob)
    end

    # Storage table host
    # @return [String]
    def storage_table_host
      @storage_table_host || default_host(:table)
    end

    # Get the host for the ACS service.
    # @return [String]
    def acs_host
      if sb_namespace.empty?
        nil
      else
        "https://#{sb_namespace}-sb.accesscontrol.windows.net"
      end
    end

    # Get the host for Service Bus based on the Service Bus Namespace.
    # @return [String]
    def service_bus_host
      if sb_namespace.empty?
        nil
      else
        "https://#{sb_namespace}.servicebus.windows.net"
      end
    end

    def config
      self
    end

    private

    def default_host(service)
      "http://#{storage_account_name}.#{service}.core.windows.net"
    end

    def read_cert_from_file(cert_file_path)
      if File.extname(cert_file_path).downcase == '.pem'
        File.read(cert_file_path)
      else
        File.binread(cert_file_path)
      end
    end

    def normalize_endpoint
      if block_given?
        File.join(yield, '')
      else
        nil
      end
    end

    def options
      Hash[Azure::Configurable.keys.map { |key| [key, instance_variable_get(:"@#{key}")] }]
    end

  end
end