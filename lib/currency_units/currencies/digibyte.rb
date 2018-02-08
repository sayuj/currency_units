require 'bigdecimal/util'

class Digibyte
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @satoshi = convert_to_satoshi if @unit
  end

  def convert_to_satoshi
    case @unit
      when :dgb
        @value * 100000000
      when :sat
        @value
      else
        @value
    end
  end

  def to_dgb
    @satoshi / 100000000.0
  end
  alias to_coin to_dgb

  def to_satoshi
    @satoshi
  end
  alias to_smallest to_satoshi

  def smallest_to_coin
    @unit ||= :sat
    @satoshi = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :dgb
    @satoshi = convert_to_satoshi
    to_smallest
  end
end
