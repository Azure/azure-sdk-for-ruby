def create_block_blob(options={})
  metadata  = options.fetch(:metadata, {})
  filename  = options.fetch(:filename, Fixtures["32px-fulls-black.jpg"].to_path)
  name      = options.fetch(:name, "myblob")
  container = options.fetch(:container, @container)

  Azure::Blobs.create_block_blob(container, name, filename, metadata)
end

def create_page_blob(container)
  Azure::Blobs.create_page_blob(container, "myblob", {:size => 8192})
end
