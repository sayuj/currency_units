class BitcoinCash
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @satoshi = convert_to_satoshi if @unit
  end

  def convert_to_satoshi
    case @unit
      when :bch
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
    @satoshi / 100.0
  end

  def to_bch
    @satoshi / 100000000.0
  end
  alias to_coin to_bch

  def to_satoshi
    @satoshi
  end
  alias to_smallest to_satoshi

  def smallest_to_coin
    @unit ||= :sat
    @satoshi = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :bch
    @satoshi = convert_to_satoshi
    to_smallest
  end
end
