require 'bigdecimal/util'

class Qtum
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @satoshi = convert_to_satoshi if @unit
  end

  def convert_to_satoshi
    case @unit
      when :qtum
        @value * 100000000
      when :sat
        @value
      else
        @value
    end
  end


  def to_qtum
    @satoshi / 100000000.0
  end

  alias :to_coin :to_qtum

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
    @unit ||= :qtum
    @satoshi = convert_to_satoshi
    to_smallest
  end
end
