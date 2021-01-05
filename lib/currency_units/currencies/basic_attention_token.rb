require 'bigdecimal/util'

class BasicAttentionToken
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @wei_bat = convert_to_wei_bat if @unit
  end

  def convert_to_wei_bat
    case @unit
      when :bat
        @value * (10 ** 18)
      when :wei_bat
        @value
      else
        @value
    end
  end

  def to_bat
    @wei_bat / (10.0 ** 18)
  end
  alias to_coin to_bat

  def to_wei_bat
    @wei_bat
  end

  alias to_smallest to_wei_bat

  def smallest_to_coin
    @unit ||= :bat
    @wei_bat = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :bat
    @wei_bat = convert_to_wei_bat
    to_smallest
  end
end
