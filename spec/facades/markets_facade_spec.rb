require 'rails_helper'

RSpec.describe MarketsFacade, :vcr do
  describe 'instance methods' do
    describe '#get_markets' do
      it 'returns all markets' do
        markets = MarketsFacade.new.get_markets
        expect(markets).to be_an Array
        market = markets.first
        expect(market).to be_a Market
        expect(market.name).to be_a String
        expect(market.name).to eq("14&U Farmers' Market")
        expect(market.street).to be_a String
        expect(market.street).to eq("1400 U Street NW ")
        expect(market.city).to be_a String
        expect(market.city).to eq("Washington")
      end
    end

    describe '#get_market' do
      it 'returns a single market' do
        market = MarketsFacade.new.get_market('322482')
        expect(market).to be_a Market
        expect(market.name).to be_a String
        expect(market.name).to eq("39 North Marketplace")
        expect(market.street).to be_a String
        expect(market.street).to eq("Downtown Sparks Victorian Ave")
        expect(market.city).to be_a String
        expect(market.city).to eq("Sparks")
      end
    end
  end
end