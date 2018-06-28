require 'bigdecimal/util'

class BasicAttentionToken
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @bit_bat = convert_to_bit_bat if @unit
  end

  def convert_to_bit_bat
    case @unit
      when :bat
        @value * 100000000000000000
      when :bit_bat
        @value
      else
        @value
    end
  end

  def to_bat
    @bit_bat / 100000000000000000.0
  end
  alias to_coin to_bat

  def to_bit_bat
    @bit_bat
  end

  alias to_smallest to_bit_bat

  def smallest_to_coin
    @unit ||= :bat
    @bit_bat = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :bat
    @bit_bat = convert_to_bit_bat
    to_smallest
  end
end
