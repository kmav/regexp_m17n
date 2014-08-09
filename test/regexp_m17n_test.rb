# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      # only two restrictions below
      if enc.name != 'ISO-2022-JP-2' and enc.name != 'UTF-7'
        assert(RegexpM17N.non_empty?('.'.encode(enc)))
      end
    end
  end
end
