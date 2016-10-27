class IndianRupee
  def initialize(value, unit)
    @value = value
    @unit = unit
    @paise = convert_to_paise if @unit
  end

  def convert_to_paise
    case @unit
      when :inr
        @value * 100
      when :paise
        @value
      else
        @value
    end
  end

  def to_paise
    @paise
  end

  def to_inr
    @paise / 100.0
  end
  alias :to_coin :to_inr

  def to_smallest
    to_paise
  end

  def smallest_to_coin
    @unit ||= :paise
    @paise = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :btc
    @paise = convert_to_paise
    to_smallest
  end
end
