
module Azure
  module SqlDatabaseManagement
    # Generic error for SQL Management activities
    class Error < Azure::Core::Error;end
    # Server does not exist error for SQL Management activities
    class ServerDoesNotExist < Azure::Core::Error;end
    # Firewall Rule does not exist error for SQL Management activities
    class RuleDoesNotExist < Azure::Core::Error;end
  end
end