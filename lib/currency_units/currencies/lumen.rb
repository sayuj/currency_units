require 'bigdecimal/util'
  
class Lumen
  def initialize(value, unit = nil)
    @value = value.to_d
    @unit = unit
    @stroop = convert_to_stroop if @unit
  end

  def convert_to_stroop
    case @unit
    when :xlm
      @value * 10**7
    when :stroop
      @value
    else
      @value
    end
  end

  def to_xlm
    @stroop / 10**7
  end
  alias to_coin to_xlm

  def to_stroop
    @stroop
  end

  def to_smallest
    to_stroop
  end

  def smallest_to_coin
    @unit ||= :stroop
    @stroop = @value
    to_coin
  end

  def coin_to_smallest
    @unit ||= :xrp
    @stroop = convert_to_stroop
    to_smallest
  end
end
