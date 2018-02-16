require 'bigdecimal/util'

class Monero
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @bit_xmr = convert_to_bit_xmr if @unit
  end

  def convert_to_bit_xmr
    case @unit
      when :xmr
        @value * 1000000000000
      when :bit_xmr
        @value
      else
        @value
    end
  end

  def to_xmr
    @bit_xmr / 1000000000000.0
  end
  alias to_coin to_xmr

  def to_bit_xmr
    @bit_xmr
  end
  alias to_smallest to_bit_xmr

  def smallest_to_coin
    @unit ||= :bit_xmr
    @bit_xmr = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :xmr
    @bit_xmr = convert_to_bit_xmr
    to_smallest
  end
end
