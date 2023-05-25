require 'rails_helper'

RSpec.describe 'Markets Show Page', type: :feature do
  before :each do
    visit vendor_path(55340)
  end
  describe 'As a visitor, when I visit the Vendors Show Page', :vcr do
    it 'I see the vendors name, contact information, whether they accept credit and a description' do
      expect(page).to have_content("Saddle Up Smoothies")
      expect(page).to have_content("Contact Info: name: Trang Kling II phone: 1-866-326-0903")
      expect(page).to have_content("Credit Accepted: No")
      expect(page).to have_content("Description: smoothie and juice vendor")
    end
  end
end