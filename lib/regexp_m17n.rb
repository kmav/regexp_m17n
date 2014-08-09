require_relative '../lib/regexp_m'
module RegexpM17N
  def self.non_empty?(str)
    regex = Regexp.new('^.+$')
    # Inside code looping through lines of input.
    # The variables 'regex' and 'line_encoding' should be initialized previously, to
    # persist across loops.
    if str.methods.include?(:encoding)            # Ruby 1.8 compatibility
        regex = RegexpM.get_regex(regex,str.encoding,16) # //u = 00010000 option bit set = 16
    end
    str.match(regex)
  end

end