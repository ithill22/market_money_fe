require 'rails_helper'

RSpec.describe MmService, :vcr do
  describe 'instance methods' do
    describe '#get_markets' do
      it 'returns all markets' do
        markets = MmService.new.get_markets
        expect(markets).to be_an Array

        market = markets.first
        expect(market).to have_key :id
        expect(market[:id]).to be_a String
        expect(market).to have_key :type
        expect(market[:type]).to be_a String
        expect(market).to have_key :attributes
        expect(market[:attributes]).to be_a Hash

        attributes = market[:attributes]
        expect(attributes).to have_key :name
        expect(attributes[:name]).to be_a String
        expect(attributes).to have_key :street
        expect(attributes[:street]).to be_a String
        expect(attributes).to have_key :city
        expect(attributes[:city]).to be_a String
        expect(attributes).to have_key :county
        expect(attributes[:county]).to be_a String
        expect(attributes).to have_key :state
        expect(attributes[:state]).to be_a String
        expect(attributes).to have_key :zip
        expect(attributes[:zip]).to be_a String
        expect(attributes).to have_key :lat
        expect(attributes[:lat]).to be_a String
        expect(attributes).to have_key :lon
        expect(attributes[:lon]).to be_a String
        expect(attributes).to have_key :vendor_count
        expect(attributes[:vendor_count]).to be_an Integer
      end
    end

    describe '#get_market' do
      it 'returns a single market' do
        market = MmService.new.get_market('322482')
        expect(market).to be_a Hash
        expect(market).to have_key :id
        expect(market[:id]).to be_a String
        expect(market).to have_key :type
        expect(market[:type]).to be_a String
        expect(market).to have_key :attributes
        expect(market[:attributes]).to be_a Hash

        attributes = market[:attributes]
        expect(attributes).to have_key :name
        expect(attributes[:name]).to be_a String
        expect(attributes).to have_key :street
        expect(attributes[:street]).to be_a String
        expect(attributes).to have_key :city
        expect(attributes[:city]).to be_a String
        expect(attributes).to have_key :county
        expect(attributes[:county]).to be_a String
        expect(attributes).to have_key :state
        expect(attributes[:state]).to be_a String
        expect(attributes).to have_key :zip
        expect(attributes[:zip]).to be_a String
        expect(attributes).to have_key :lat
        expect(attributes[:lat]).to be_a String
        expect(attributes).to have_key :lon
        expect(attributes[:lon]).to be_a String
        expect(attributes).to have_key :vendor_count
        expect(attributes[:vendor_count]).to be_an Integer
      end
    end

    describe '#get_market_vendors' do
      it 'returns all vendors for a market' do
        vendors = MmService.new.get_market_vendors('322482')
        expect(vendors).to be_an Array
        expect(vendors.count).to eq(5)

        vendor = vendors.first
        expect(vendor).to have_key :id
        expect(vendor[:id]).to be_a String
        expect(vendor).to have_key :type
        expect(vendor[:type]).to be_a String
        expect(vendor).to have_key :attributes
        expect(vendor[:attributes]).to be_a Hash

        attributes = vendor[:attributes]
        expect(attributes).to have_key :name
        expect(attributes[:name]).to be_a String
        expect(attributes).to have_key :description
        expect(attributes[:description]).to be_a String
        expect(attributes).to have_key :contact_name
        expect(attributes[:contact_name]).to be_a String
        expect(attributes).to have_key :contact_phone
        expect(attributes[:contact_phone]).to be_a String
        expect(attributes).to have_key :credit_accepted
        expect(attributes[:credit_accepted]).to be_in([true, false])
      end
    end

    describe '#get_vendor' do
      it 'returns a single vendor' do
        vendor = MmService.new.get_vendor('56282')
        expect(vendor).to be_a Hash
        expect(vendor).to have_key :id
        expect(vendor[:id]).to be_a String
        expect(vendor).to have_key :type
        expect(vendor[:type]).to be_a String
        expect(vendor).to have_key :attributes
        expect(vendor[:attributes]).to be_a Hash
        
        attributes = vendor[:attributes]
        expect(attributes).to have_key :name
        expect(attributes[:name]).to be_a String
        expect(attributes).to have_key :description
        expect(attributes[:description]).to be_a String
        expect(attributes).to have_key :contact_name
        expect(attributes[:contact_name]).to be_a String
        expect(attributes).to have_key :contact_phone
        expect(attributes[:contact_phone]).to be_a String
        expect(attributes).to have_key :credit_accepted
        expect(attributes[:credit_accepted]).to be_in([true, false])
      end
    end
  end
end