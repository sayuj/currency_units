class IndianRupee
  def initialize(value, unit)
    @value = value
    @unit = unit
    @paise = convert_to_paise
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
    @paise / 100
  end
  alias :to_coin :to_inr

  def to_smallest
    to_paise
  end
end
