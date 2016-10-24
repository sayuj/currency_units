class Numeric
  # Bitcoin units
  def btc
    Bitcoin.new(self, :btc)
  end

  def bit
    Bitcoin.new(self, :bit)
  end

  def satoshi
    Bitcoin.new(self, :sat)
  end

  # Indian Rupee units
  def inr
    IndianRupee.new(self, :inr)
  end

  def paise
    IndianRupee.new(self, :paise)
  end

  # Ethereum units
  def eth
    Ethereum.new(self, :eth)
  end

  def wei
    Ethereum.new(self, :wei)
  end
end
