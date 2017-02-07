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

  def bitcoin
    Bitcoin.new(self)
  end

  # Indian Rupee units
  def inr
    IndianRupee.new(self, :inr)
  end

  def paise
    IndianRupee.new(self, :paise)
  end

  def indian_rupee
    IndianRupee.new(self)
  end

  # Ethereum units
  def eth
    Ethereum.new(self, :eth)
  end

  def wei
    Ethereum.new(self, :wei)
  end

  def ethereum
    Ethereum.new(self)
  end

  # Litecoin units
  def ltc
    Litecoin.new(self, :ltc)
  end

  def litoshi
    Litecoin.new(self, :lit)
  end

  def litecoin
    Litecoin.new(self)
  end
end
