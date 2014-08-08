require 'iconv'

module RegexpM17N
  def self.non_empty?(str)
    val = false
    puts (str.encoding.name)
    if str.encoding.name == "ASCII-8BIT"
      puts("found")
    else
      str = Iconv.conv('UTF-8', str.encoding.name, str)
      val = (str =~ /^.+$/)
    end
    return val
  end
end