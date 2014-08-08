module RegexpM17N
  def self.non_empty?(str)
    str = str.encode "UTF-8"
    str =~ /^.+$/
  end
end