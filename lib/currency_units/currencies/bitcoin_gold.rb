require 'bigdecimal/util'

class BitcoinGold
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @satoshi = convert_to_satoshi if @unit
  end

  def convert_to_satoshi
    case @unit
      when :btg
        @value * 100000000
      when :bit
        @value * 100
      when :sat
        @value
      else
        @value
    end
  end

  def to_bit
    @satoshi / 100.0
  end

  def to_btg
    @satoshi / 100000000.0
  end
  alias to_coin to_btg

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
    @unit ||= :btg
    @satoshi = convert_to_satoshi
    to_smallest
  end
end
