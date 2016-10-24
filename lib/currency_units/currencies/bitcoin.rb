class Bitcoin
  def initialize(value, unit)
    @value = value
    @unit = unit
    @satoshi = convert_to_satoshi
  end

  def convert_to_satoshi
    case @unit
      when :btc
        @value * 100000000
      when :bit
        @value * 100
      when :sat
        @value
      else
        @value
    end
  end

  def to_bit
    @satoshi / 100
  end

  def to_btc
    @satoshi / 100000000
  end
  alias :to_coin :to_btc

  def to_satoshi
    @satoshi
  end

  def to_smallest
    to_satoshi
  end
end
