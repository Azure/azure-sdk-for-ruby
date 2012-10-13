#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
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

# TableNameHelper = NameGenerator.new do |name|
#   table = Azure::Tables::Table.new(name)
#   Azure::Tables.delete(table)
# end

# ContainerNameHelper = NameGenerator.new do |name|
#   container = Azure::Blobs::Container.new(name)
#   container.delete
# end

# QueueNameHelper = NameGenerator.new do |name|
#   queue = Azure::Queues::Queue.new(name)
#   queue.delete
# end

ServiceBusQueueNameHelper = NameGenerator.new do |name|
  svc = Azure::ServiceBus::ServiceBus.new
  svc.delete_queue name
end

ServiceBusTopicNameHelper = NameGenerator.new do |name|
  svc = Azure::ServiceBus::ServiceBus.new
  svc.delete_topic name
end
