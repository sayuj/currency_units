require 'bigdecimal/util'

class Dai
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @bit_dai = convert_to_bit_dai if @unit
  end

  def convert_to_bit_dai
    case @unit
      when :dai
        @value * (10 ** 18)
      when :bit_dai
        @value
      else
        @value
    end
  end

  def to_dai
    @bit_dai / (10.0 ** 18)
  end
  alias to_coin to_dai

  def to_bit_dai
    @bit_dai
  end

  alias to_smallest to_bit_dai

  def smallest_to_coin
    @unit ||= :dai
    @bit_dai = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :dai
    @bit_dai = convert_to_bit_dai
    to_smallest
  end
end
