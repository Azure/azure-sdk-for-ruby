module Azure::Refine
  class String < String

    def camelize
      self.gsub(/(?:^|[_-\s])([a-z])?/) { $1.upcase unless $1.nil? }.gsub(/\s/, '')
    end

  end
end
