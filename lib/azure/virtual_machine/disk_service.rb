module Azure
  module VirtualMachine
    class DiskService < BaseManagementService

      # Public: Gets a list of Disks from the server.
      #
      # Returns an array of Azure::VirtualMachineDiskManagementService objects
      def list_virtual_machine_disks
        response = get("/services/disks")
        Serialization.disks_from_xml(response)
      end

      # Public: Deletes the specified data or operating system disk from the image repository.
      #
      # Returns None
      def delete_virtual_machine_disk(disk_name)
        Loggerx.info "Deleting Disk \"#{disk_name}\". "
        delete("/services/disks/#{disk_name}")
      end

    end
  end
end