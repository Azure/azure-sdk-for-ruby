class NameGenerator
  def initialize(&cleanup_proc)
    @cleanup_proc = cleanup_proc
    @names = []
  end

  def name
    alpha = ("a".."z").to_a
    name = 10.times.map { alpha[Random.rand(alpha.size)]}.join
    @names << name
    name
  end

  def clean
    @names.reject! do |name|
      @cleanup_proc.call(name)
    end
  end
end

TableNameHelper = NameGenerator.new do |name|
  table = Azure::Tables::Table.new(name)
  Azure::Tables.delete(table)
end

ContainerNameHelper = NameGenerator.new do |name|
  container = Azure::Blobs::Container.new(name)
  container.delete
end

QueueNameHelper = NameGenerator.new do |name|
  queue = Azure::Queues::Queue.new(name)
  queue.delete
end

ServiceBusQueueNameHelper = NameGenerator.new do |name|
  queue = Azure::ServiceBus::Queues::Queue.new(name)
  queue.delete
end

ServiceBusTopicNameHelper = NameGenerator.new do |name|
  topic = Azure::ServiceBus::Topics::Topic.new(name)
  topic.delete
end
