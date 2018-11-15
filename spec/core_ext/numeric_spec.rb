require "spec_helper"

describe Numeric do
  it 'responds to bitcoin methods' do
    expect(1.btc).to be_instance_of Bitcoin
    expect(1.bit).to be_instance_of Bitcoin
    expect(1.satoshi).to be_instance_of Bitcoin
    expect(1.bitcoin).to be_instance_of Bitcoin
  end

  it 'responds to ethereum methods' do
    expect(1.eth).to be_instance_of Ethereum
    expect(1.wei).to be_instance_of Ethereum
    expect(1.ethereum).to be_instance_of Ethereum
  end

  it 'responds to indian rupee methods' do
    expect(1.inr).to be_instance_of IndianRupee
    expect(1.paise).to be_instance_of IndianRupee
    expect(1.indian_rupee).to be_instance_of IndianRupee
  end

  it 'responds to litecoin methods' do
    expect(1.ltc).to be_instance_of Litecoin
    expect(1.litoshi).to be_instance_of Litecoin
    expect(1.litecoin).to be_instance_of Litecoin
  end

  it 'responds to ripple methods' do
    expect(1.xrp).to be_instance_of Ripple
    expect(1.drop).to be_instance_of Ripple
    expect(1.ripple).to be_instance_of Ripple
  end

  it 'responds to bitcoin cash methods' do
    expect(1.bch).to be_instance_of BitcoinCash
    expect(1.bitcoin_cash).to be_instance_of BitcoinCash
  end

  it 'responds to dash methods' do
    expect(1.dash).to be_instance_of Dash
    expect(1.duff).to be_instance_of Dash
  end

  it 'responds to digibyte methods' do
    expect(1.digibyte).to be_instance_of Digibyte
    expect(1.dgb).to be_instance_of Digibyte
    expect(1.dgb).to be_instance_of Digibyte
  end

  it 'responds to zcash methods' do
    expect(1.zcash).to be_instance_of Zcash
    expect(1.zat).to be_instance_of Zcash
  end

  it 'responds to monero methods' do
    expect(1.xmr).to be_instance_of Monero
    expect(1.bit_xmr).to be_instance_of Monero
  end

  it 'responds to bitcoingold methods' do
    expect(1.btg).to be_instance_of BitcoinGold
    expect(1.bitcoin_gold).to be_instance_of BitcoinGold
  end

  it 'responds to qtum methods' do
    expect(1.qtum).to be_instance_of Qtum
  end

  it 'responds to BAT methods' do
    expect(1.bat).to be_instance_of BasicAttentionToken
    expect(1.wei_bat).to be_instance_of BasicAttentionToken
    expect(1.basic_attention_token).to be_instance_of BasicAttentionToken
  end

  it 'responds to DAI methods' do
    expect(1.dai).to be_instance_of Dai
    expect(1.wei_dai).to be_instance_of Dai
  end

  it 'responds to Waves methods' do
    expect(1.waves).to be_instance_of Waves
    expect(1.waves_drop).to be_instance_of Waves
  end

  it 'responds to TrueUsd methods' do
    expect(1.tusd).to be_instance_of TrueUsd
    expect(1.true_usd).to be_instance_of TrueUsd
    expect(1.wei_tusd).to be_instance_of TrueUsd
  end

  it 'responds to Usdt methods' do
    expect(1.usdt).to be_instance_of Usdt
    expect(1.satoshi_usdt).to be_instance_of Usdt
  end

  it 'responds to Nem methods' do
    expect(1.nem).to be_instance_of Nem
    expect(1.micro_nem).to be_instance_of Nem
  end

  it 'responds to lumen methods' do
    expect(1.xlm).to be_instance_of Lumen
    expect(1.stroop).to be_instance_of Lumen
    expect(1.lumen).to be_instance_of Lumen
  end
  
  it 'responds to bitcoinsv methods' do
    expect(1.bsv).to be_instance_of Bitcoinsv
    expect(1.bitcoinsv).to be_instance_of Bitcoinsv
  end
end
