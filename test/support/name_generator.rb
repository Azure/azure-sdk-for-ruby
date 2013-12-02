#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
    alpha = ('a'..'z').to_a
    name = 10.times.map { alpha[Random.rand(alpha.size)] }.join
    @names << name
    name
  end

  def clean
    @names.reject! do |name|
      @cleanup_proc.call(name)
    end
    @names = []
  end
end

TableNameHelper = NameGenerator.new do |name|
  svc = Azure::Table::TableService.new
  begin
    svc.delete_table name
  rescue
  end
end

ContainerNameHelper = NameGenerator.new do |name|
  svc = Azure::Blob::BlobService.new
  begin
    svc.delete_container name
  rescue
  end
end

QueueNameHelper = NameGenerator.new do |name|
  svc = Azure::Queue::QueueService.new
  begin
    svc.delete_queue name
  rescue
  end
end

ServiceBusQueueNameHelper = NameGenerator.new do |name|
  svc = Azure::ServiceBus::ServiceBusService.new
  begin
    svc.delete_queue name
  rescue
  end
end

ServiceBusTopicNameHelper = NameGenerator.new do |name|
  svc = Azure::ServiceBus::ServiceBusService.new
  begin
    svc.delete_topic name
  rescue
  end
end

AffinityGroupNameHelper = NameGenerator.new do |name|
  svc = Azure::BaseManagementService.new
  begin
    svc.delete_affinity_group name
  rescue
  end
end

class GB18030TestStringsClass
  def get
    {
      'Chinese2B1'       => [0x2488, 0x2460, 0x216B, 0x3128,
                             0x3129].pack('U*'),
      'Chinese2B2'       => [0x554A, 0x963F, 0x9F3E, 0x9F44].pack('U*'),
      'Chinese2B3'       => [0x4E02, 0x4E04, 0x72DA, 0x72DB].pack('U*'),
      'Chinese2B4'       => [0x72DC, 0x72DD, 0xFA28, 0xFA29].pack('U*'),
      'Chinese2B5'       => [0x02CA, 0x02CB, 0x02D9, 0x2013,
                             0xE7F3, 0x3007].pack('U*'),
      'Chinese4BExtA'    => [0x3400, 0x3401, 0x4DB4, 0x4DB5].pack('U*'),
      'ChineseExtB'      => [0x020000, 0x020001, 0x02A6D5,
                             0x02A6D6].pack('U*'),
      'Tibetan'          => [0x0F56, 0x0F7C, 0x0F51, 0x0F0B, 0x0F61,
                             0x0F72, 0x0F42, 0x0020, 0x0020, 0x0020,
                             0x0F00, 0x0F01, 0x0F02, 0x0F03, 0x0F04,
                             0x0F05, 0x0FA2, 0x0FA3, 0x0FA4,
                             0x0FA5].pack('U*'),
      'Uyghur'           => [0x0626, 0x06C7, 0x064A, 0x063A,
                             0x06C7, 0x0631, 0x0020, 0x062A,
                             0x0649, 0x0644, 0x0649, 0x0020,
                             0x0020, 0x0020, 0x003B, 0x060B,
                             0x0020, 0x060C, 0x0020, 0x060D,
                             0x0020, 0x060E, 0x0020, 0x060F,
                             0x0610, 0x0020, 0x0020, 0x0020,
                             0xFEF2, 0x0020, 0xFEF3, 0x0020,
                             0xFEF4, 0x0020, 0xFEF5, 0x0020,
                             0xFEF6, 0x0020, 0xFEF7, 0x0020,
                             0xFEF8, 0x0020, 0xFEF9, 0x0020,
                             0xFEFA, 0x0020, 0xFEFB].pack('U*'),
      'Mongolian'        => [0x182E, 0x1823, 0x1829, 0x182D,
                             0x1823, 0x182F, 0x0020, 0x0020,
                             0x1826, 0x1830, 0x1826, 0x182D,
                             0x003B, 0x0020, 0x17F8, 0x17F9,
                             0x0020, 0x188E, 0x188F, 0x1890,
                             0x1891, 0x1892, 0x1893, 0x1894,
                             0x1895, 0x1896, 0x1897].pack('U*'),
      'Yi'               => [0xA188, 0xA320, 0xA071, 0xA0B7,
                             0x003B, 0xA000, 0xA001, 0xA002,
                             0xA003, 0xA004, 0xA005, 0xA006,
                             0xA4C1, 0xA4C2, 0xA4C3, 0xA4C4,
                             0xA4C5, 0xA4C6].pack('U*'),
      'DehongDai'        => [0x1958, 0x1963, 0x196D, 0x1970,
                             0x0020, 0x1956, 0x196D, 0x1970,
                             0x0020, 0x1956, 0x196C, 0x1972,
                             0x1951, 0x1968, 0x1952, 0x1970].pack('U*'),
      'XishuangbannaDai' => [0x198E, 0x19B7, 0x1991, 0x19BA,
                             0x1996, 0x19BA, 0x19C8, 0x1989,
                             0x19B2, 0x19C7, 0x1989, 0x19B8,
                             0x19C2, 0x1997, 0x19C3, 0x1993, 0x19B1].pack('U*')
    }
  end

  def get_xml_10_fourth_ed_identifiers
    # No characters from the following sets are valid,
    # according to the XML library that the service uses:
    #   * Chinese_4B_ExtA
    #   * Chinese_ExtB
    #   * Mongolian
    #   * Yi
    #   * Dehong_Dai
    #   * Xishuangbanna_Dai
    {
      'Chinese_2B1' => [0x3128, 0x3129].pack('U*'),
      'Chinese_2B2' => [0x554A, 0x963F, 0x9F3E, 0x9F44].pack('U*'),
      'Chinese_2B3' => [0x4E02, 0x4E04, 0x72DA, 0x72DB].pack('U*'),
      'Chinese_2B4' => [0x72DC, 0x72DD].pack('U*'),
      'Chinese_2B5' => [0x3007].pack('U*'),
      'Tibetan'     => [0x0F56, 0x0F7C, 0x0F51, 0x0F61, 0x0F72, 0x0F42,
                        0x0FA2, 0x0FA3, 0x0FA4, 0x0FA5].pack('U*'),
      'Uyghur'      => [0x0626, 0x06C7, 0x064A, 0x063A, 0x06C7, 0x0631,
                        0x062A, 0x0649, 0x0644, 0x0649].pack('U*'),
    }
  end
end

GB18030TestStrings = GB18030TestStringsClass.new
