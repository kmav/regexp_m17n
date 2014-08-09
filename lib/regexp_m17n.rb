module RegexpM17N
  def self.non_empty?(str)
    # to match regexp US-ASCII encoding and fix compatibility regexp error
    str = str.encode "US-ASCII"
    str =~ /^.+$/
  end
end