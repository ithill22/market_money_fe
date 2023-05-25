require 'rails_helper'

RSpec.describe Market, type: :poro do
  describe 'initialize' do
    it 'exists and has attributes' do
      market = Market.new({:id=>"322482", :type=>"market", :attributes=>{:name=>"39 North Marketplace", :street=>"Downtown Sparks Victorian Ave", :city=>"Sparks", :county=>"Washoe", :state=>"Nevada", :zip=>"89431", :lat=>"39.534773", :lon=>"-119.754962", :vendor_count=>5}})
      expect(market).to be_a Market
      expect(market.id).to eq("322482")
      expect(market.name).to eq("39 North Marketplace")
      expect(market.street).to eq("Downtown Sparks Victorian Ave")
      expect(market.city).to eq("Sparks")
      expect(market.county).to eq("Washoe")
      expect(market.state).to eq("Nevada")
      expect(market.zip).to eq("89431")
      expect(market.lat).to eq("39.534773")
      expect(market.lon).to eq("-119.754962")
      expect(market.vendor_count).to eq(5)
    end
  end
end