class Dash
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @duff = convert_to_duff if @unit
  end

  def convert_to_duff
    case @unit
      when :dash
        @value * 100_000_000
      when :duff
        @value
      else
        @value
    end
  end


  def to_dash
    @duff / 100_000_000.0
  end
  alias :to_coin :to_dash

  def to_duff
    @duff
  end

  def to_smallest
    to_duff
  end

  def smallest_to_coin
    @unit ||= :duff
    @duff = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :duff
    @duff = convert_to_duff
    to_smallest
  end
end
