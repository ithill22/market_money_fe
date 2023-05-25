require 'rails_helper'

RSpec.describe 'Markets Index Page', type: :feature do
  before :each do
    visit markets_path
  end
  describe 'As a visitor, when I visit the Markets Index Page', :vcr do
    it 'I see all markets listed with their name, city, and state' do
      expect(page).to have_content('Markets')
      expect(page).to have_content('Name')
      expect(page).to have_content('City')
      expect(page).to have_content('State')
      within("#market-322458") do
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content('Washington')
        expect(page).to have_content('District of Columbia')
        expect(page).to have_link("More Info")
      end
    end

    it 'I can click the More Info link and be taken to the market show page' do
      within("#market-322458") do
        click_link("More Info")
      end

      expect(current_path).to eq(market_path(322458))
    end
  end
end