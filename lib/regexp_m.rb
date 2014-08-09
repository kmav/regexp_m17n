module RegexpM
  def self.get_regex(pattern, encoding='ASCII', options=0)
    Regexp.new(pattern.encode(encoding),options)
  end
end