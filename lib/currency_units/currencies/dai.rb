require 'bigdecimal/util'

class Dai
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @wei_dai = convert_to_wei_dai if @unit
  end

  def convert_to_wei_dai
    case @unit
      when :dai
        @value * (10 ** 18)
      when :wei_dai
        @value
      else
        @value
    end
  end

  def to_dai
    @wei_dai / (10.0 ** 18)
  end
  alias to_coin to_dai

  def to_wei_dai
    @wei_dai
  end

  alias to_smallest to_wei_dai

  def smallest_to_coin
    @unit ||= :dai
    @wei_dai = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :dai
    @wei_dai = convert_to_wei_dai
    to_smallest
  end
end
