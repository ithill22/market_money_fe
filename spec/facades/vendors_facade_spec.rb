require 'rails_helper'

RSpec.describe VendorsFacade, :vcr do
  describe 'instance methods' do
    describe '#get_market_vendors' do
      it 'returns all vendors for a market' do
        vendors = VendorsFacade.new.get_market_vendors('322482')
        expect(vendors).to be_an Array
        expect(vendors.count).to eq(5)
        vendor = vendors.first
        expect(vendor).to be_a Vendor
        expect(vendor.name).to be_a String
        expect(vendor.name).to eq("Saddle Up Smoothies")
        expect(vendor.description).to be_a String
        expect(vendor.description).to eq("smoothie and juice vendor")
        expect(vendor.contact_name).to be_a String
        expect(vendor.contact_name).to eq("Trang Kling II")
        expect(vendor.contact_phone).to be_a String
        expect(vendor.contact_phone).to eq("1-866-326-0903")
        expect(vendor.credit_accepted).to be_in([true, false])
        expect(vendor.credit_accepted).to eq(false)
      end
    end

    describe '#get_vendor' do
      it 'returns a single vendor' do
        vendor = VendorsFacade.new.get_vendor('56282')
        expect(vendor).to be_a Vendor
        expect(vendor.name).to be_a String
        expect(vendor.name).to eq("Bookish Bazaar")
        expect(vendor.description).to be_a String
        expect(vendor.description).to eq("A vibrant and colorful stall offering a diverse selection of books from around the world, as well as handmade bookmarks and reading accessories.")
        expect(vendor.contact_name).to be_a String
        expect(vendor.contact_name).to eq("Kanesha Rippin")
        expect(vendor.contact_phone).to be_a String
        expect(vendor.contact_phone).to eq("1-223-658-3770")
        expect(vendor.credit_accepted).to be_in([true, false])
        expect(vendor.credit_accepted).to eq(true)
      end
    end
  end
end