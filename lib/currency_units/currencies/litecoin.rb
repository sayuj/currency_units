class Litecoin
  def initialize(value, unit = nil)
    @value = value
    @unit = unit
    @litoshi = convert_to_litoshi if @unit
  end

  def convert_to_litoshi
    case @unit
      when :ltc
        @value * 100000000
      when :lit
        @value
      else
        @value
    end
  end

  def to_ltc
    @litoshi / 100000000.0
  end
  alias :to_coin :to_ltc

  def to_litoshi
    @litoshi
  end

  def to_smallest
    to_litoshi
  end

  def smallest_to_coin
    @unit ||= :lit
    @litoshi = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :ltc
    @litoshi = convert_to_litoshi
    to_smallest
  end
end
