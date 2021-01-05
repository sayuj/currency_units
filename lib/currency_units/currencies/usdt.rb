require 'bigdecimal/util'

class Usdt
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @satoshi = convert_to_satoshi if @unit
  end

  def convert_to_satoshi
    case @unit
    when :usdt
      @value * (10 ** 8)
    when :sat
      @value
    else
      @value
    end
  end

  def to_bit
    @satoshi / 100.0
  end

  def to_usdt
    @satoshi / (10 ** 8)
  end

  alias :to_coin :to_usdt

  def to_satoshi
    @satoshi
  end

  def to_smallest
    to_satoshi
  end

  def smallest_to_coin
    @unit ||= :sat
    @satoshi = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :usdt
    @satoshi = convert_to_satoshi
    to_smallest
  end
end
