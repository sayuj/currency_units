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

  it 'responds to dash cash methods' do
    expect(1.dash).to be_instance_of Dash
    expect(1.duff).to be_instance_of Dash
  end
end
