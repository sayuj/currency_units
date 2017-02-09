class Ripple
  def initialize(value, unit = nil)
    @value = value
    @unit = unit
    @drop = convert_to_drop if @unit
  end

  def convert_to_drop
    case @unit
      when :xrp
        @value *  1000000
      when :drop
        @value
      else
        @value
    end
  end

  def to_xrp
    @drop / 1000000.0
  end
  alias :to_coin :to_xrp

  def to_drop
    @drop
  end

  def to_smallest
    to_drop
  end

  def smallest_to_coin
    @unit ||= :drop
    @drop = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :xrp
    @drop = convert_to_drop
    to_smallest
  end
end