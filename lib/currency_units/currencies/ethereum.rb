class Ethereum
  def initialize(value, unit)
    @value = value
    @unit = unit
    @wei = convert_to_wei
  end

  def convert_to_wei
    case @unit
      when :eth
        @value * 1000000000000000000
      when :kwei
        @value * 1000000000000000
      when :mwei
        @value * 1000000000000
      when :szabo
        @value * 1000000
      when :finney
        @value * 1000
      when :wei
        @value
      else
        @value
    end
  end

  def to_wei
    @wei
  end

  def to_eth
    @wei / 1000000000000000000
  end
  alias :to_coin :to_eth

  def to_smallest
    to_wei
  end
end
