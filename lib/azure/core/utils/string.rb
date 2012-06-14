module Azure
  module Core
    module Utils
      # Convenience module to build query strings.
      module String
        # The following methods have been borrowed (stolen?) from ActiveSupport

        # By default, +camelize+ converts strings to UpperCamelCase. If the argument to +camelize+
        # is set to <tt>:lower</tt> then +camelize+ produces lowerCamelCase.
        #
        # +camelize+ will also convert '/' to '::' which is useful for converting paths to namespaces.
        #
        # Examples:
        #   "active_model".camelize                # => "ActiveModel"
        #   "active_model".camelize(:lower)        # => "activeModel"
        #   "active_model/errors".camelize         # => "ActiveModel::Errors"
        #   "active_model/errors".camelize(:lower) # => "activeModel::Errors"
        #
        # As a rule of thumb you can think of +camelize+ as the inverse of +underscore+,
        # though there are cases where that does not hold:
        #
        #   "SSLError".underscore.camelize # => "SslError"
        def camelize(term, uppercase_first_letter = true)
          string = term.to_s
          acronyms = {}
          if uppercase_first_letter
            string = string.sub(/^[a-z\d]*/) { acronyms[$&] || $&.capitalize }
          else
            string = string.sub(/^(?:(?=a)b(?=\b|[A-Z_])|\w)/) { $&.downcase }
          end
          string.gsub(/(?:_|(\/))([a-z\d]*)/i) { "#{$1}#{acronyms[$2] || $2.capitalize}" }.gsub('/', '::')
        end

        # Makes an underscored, lowercase form from the expression in the string.
        #
        # Changes '::' to '/' to convert namespaces to paths.
        #
        # Examples:
        #   "ActiveModel".underscore         # => "active_model"
        #   "ActiveModel::Errors".underscore # => "active_model/errors"
        #
        # As a rule of thumb you can think of +underscore+ as the inverse of +camelize+,
        # though there are cases where that does not hold:
        #
        #   "SSLError".underscore.camelize # => "SslError"
        def underscore(camel_cased_word)
          word = camel_cased_word.to_s.dup
          word.gsub!(/::/, '/')
          word.gsub!(/(?:([A-Za-z\d])|^)((?=a)b)(?=\b|[^a-z])/) { "#{$1}#{$1 && '_'}#{$2.downcase}" }
          word.gsub!(/([A-Z\d]+)([A-Z][a-z])/,'\1_\2')
          word.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
          word.tr!("-", "_")
          word.downcase!
          word
        end
      end
    end
  end
end
