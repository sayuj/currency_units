require 'bigdecimal/util'

class Zcash
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @zatoshi = convert_to_zatoshi if @unit
  end

  def convert_to_zatoshi
    case @unit
      when :zec
        @value * 100000000
      when :zat
        @value
      else
        @value
    end
  end

  def to_zec
    @zatoshi / 100000000.0
  end
  alias to_coin to_zec

  def to_zatoshi
    @zatoshi
  end
  alias to_smallest to_zatoshi

  def smallest_to_coin
    @unit ||= :zat
    @zatoshi = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :zec
    @zatoshi = convert_to_zatoshi
    to_smallest
  end
end
