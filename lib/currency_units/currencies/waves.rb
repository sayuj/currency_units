require 'bigdecimal/util'

class Waves
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @drop = convert_to_drop if @unit
  end

  def convert_to_drop
    case @unit
      when :waves
        @value * (10 ** 8)
      when :drop
        @value
      else
        @value
    end
  end

  def to_waves
    @drop / (10.0 ** 8)
  end
  alias to_coin to_waves

  def to_drop
    @drop
  end

  alias to_smallest to_drop

  def smallest_to_coin
    @unit ||= :waves
    @drop = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :waves
    @drop = convert_to_drop
    to_smallest
  end
end
