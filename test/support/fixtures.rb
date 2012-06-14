require "pathname"

Fixtures = Hash.new do |hash, fixture|
  if path = Fixtures.xml?(fixture)
    hash[fixture] = path.read
  elsif path = Fixtures.file?(fixture)
    hash[fixture] = path
  end
end

def Fixtures.root
  Pathname("../../fixtures").expand_path(__FILE__)
end

def Fixtures.file?(fixture)
  path = root.join(fixture)
  path.file? && path
end

def Fixtures.xml?(fixture)
  file?("#{fixture}.xml")
end
