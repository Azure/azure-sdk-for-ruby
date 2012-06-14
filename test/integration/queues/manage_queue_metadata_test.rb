require "integration/test_helper"

describe "Managing the queue's metadata" do
  after do
    QueueNameHelper.clean
  end

  it "sets metadata on queue creation (Azure changes the casing of metadata keys)" do
    Azure::Queues.create(
      QueueNameHelper.name,
      "UppercaseKey" => "U", "downcaseKey" => "D"
    )

    queue = Azure::Queues.all(:include => 'metadata').first

    queue.metadata["Uppercasekey"].must_equal "U"
    queue.metadata["Downcasekey"].must_equal "D"
  end

  it "#load_metadata! reloads the queue metadata" do
    queue = Azure::Queues.create(QueueNameHelper.name, "Key" => "Value")
    queue.metadata.must_be_empty

    queue.load_metadata!.wont_be_empty
    queue.metadata.wont_be_empty
  end

  it "saves the metadata in the server if you modify the metadata hash" do
    queue = Azure::Queues.create(QueueNameHelper.name)
    queue.metadata["Key"] = "Value"
    queue.save_metadata!

    loaded_queue = Azure::Queues.all(:include => 'metadata').first
    loaded_queue.metadata["Key"].must_equal "Value"
  end

  it "deletes all metadata when setting queue.metadata to an empty hash" do
    queue = Azure::Queues.create(QueueNameHelper.name, "Key" => "Value")
    queue.metadata = {}
    queue.save_metadata!

    loaded_queue = Azure::Queues.all(:include => 'metadata').first
    loaded_queue.metadata.must_be_empty
  end
end
