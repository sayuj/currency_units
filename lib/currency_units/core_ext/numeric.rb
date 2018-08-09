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

  # Ripple units
  def xrp
    Ripple.new(self, :xrp)
  end

  def drop
    Ripple.new(self, :drop)
  end

  def ripple
    Ripple.new(self)
  end

  # Bitcoin Cash units
  def bch
    BitcoinCash.new(self, :bch)
  end

  def bitcoin_cash
    BitcoinCash.new(self)
  end

  def dash
    Dash.new(self, :dash)
  end

  def duff
    Dash.new(self, :duff)
  end

  # Digibyte units
  def digibyte
    Digibyte.new(self)
  end

  def dgb
    Digibyte.new(self, :dgb)
  end

  #Zcash
  def zcash
    Zcash.new(self)
  end

  def zec
    Zcash.new(self, :zec)
  end

  def zat
    Zcash.new(self, :zat)
  end

  #Monero
  def monero
    Monero.new(self)
  end

  def xmr
    Monero.new(self, :xmr)
  end

  def bit_xmr
    Monero.new(self, :bit_xmr)
  end

  #BitcoinGold
  def btg
    BitcoinGold.new(self, :btg)
  end

  def bitcoin_gold
    BitcoinGold.new(self)
  end

  def qtum
    Qtum.new(self)
  end

  def bat
    BasicAttentionToken.new(self, :bat)
  end

  def wei_bat
    BasicAttentionToken.new(self, :bit_bat)
  end

  def basic_attention_token
    BasicAttentionToken.new(self, :bat)
  end

  def dai
    Dai.new(self, :dai)
  end

  def wei_dai
    Dai.new(self, :wei_dai)
  end

  def waves
    Waves.new(self, :waves)
  end

  def waves_drop
    Waves.new(self, :drop)
  end

  def true_usd
    TrueUsd.new(self, :tusd)
  end

  def tusd
    TrueUsd.new(self, :tusd)
  end

  def wei_tusd
    TrueUsd.new(self, :wei_tusd)
  end
end

