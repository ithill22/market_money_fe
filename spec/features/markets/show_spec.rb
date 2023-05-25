require 'rails_helper'

RSpec.describe 'Markets Show Page', type: :feature do
  before :each do
    visit market_path(322482)
  end
  describe 'As a visitor, when I visit the Markets Show Page', :vcr do
    it 'I see that markets name and readable address, and a list of all its vendors' do
      expect(page).to have_content("39 North Marketplace")
      expect(page).to have_content("Address: Downtown Sparks Victorian Ave, Sparks, Nevada 89431")
      expect(page).to have_link("Saddle Up Smoothies")
      expect(page).to have_link("Bookish Bazaar")
      expect(page).to have_link("The Freshly Squeezed Company")
    end

    it 'I can click on a vendors name and be taken to the vendors show page' do
      within "#vendor-55340" do
        click_link("Saddle Up Smoothies")
      end

      expect(current_path).to eq(vendor_path(55340))
    end
  end
end