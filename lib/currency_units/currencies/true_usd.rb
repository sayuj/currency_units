require 'bigdecimal/util'

class TrueUsd
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @wei_tusd = convert_to_wei_tusd if @unit
  end

  def convert_to_wei_tusd
    case @unit
      when :tusd
        @value * (10 ** 18)
      when :wei_tusd
        @value
      else
        @value
    end
  end

  def to_tusd
    @wei_tusd / (10.0 ** 18)
  end

  alias to_coin to_tusd

  def to_wei_tusd
    @wei_tusd
  end

  alias to_smallest to_wei_tusd

  def smallest_to_coin
    @unit ||= :tusd
    @wei_tusd = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :tusd
    @wei_tusd = convert_to_wei_tusd
    to_smallest
  end
end
