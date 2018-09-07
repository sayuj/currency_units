require 'bigdecimal/util'

class Nem
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @micro_xem = convert_to_micro_xem if @unit
  end

  def convert_to_micro_xem
    case @unit
      when :xem
        @value * 10**6
      when :micro_xem
        @value
      else
        @value
    end
  end

  def to_xem
    @micro_xem / 10**6.to_d
  end
  alias to_coin to_xem

  def to_micro_xem
    @micro_xem
  end
  alias to_smallest to_micro_xem

  def smallest_to_coin
    @unit ||= :micro_xem
    @micro_xem = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :xem
    @micro_xem = convert_to_micro_xem
    to_smallest
  end
end
