require 'rails_helper'

RSpec.describe 'As a visitor' do
  before :each do
    @shop_4 = Shelter.create(name: "Aila's Pals",
                             address: '912 Fourth Street',
                             city: 'Bangor',
                             state: 'ME',
                             zip: '04401')
    end

    it "can edit a shelter's information" do
      visit "/shelters/#{@shop_4.id}"

      click_link 'Edit'
      expect(current_path).to eq("/shelters/#{@shop_4.id}/edit")

      fill_in :name, with: 'Good Pets'
      click_button 'Submit'
      
      expect(current_path).to eq("/shelters/#{@shop_4.id}")
      expect(page).to_not have_content("Aila's Pals")
      expect(page).to have_content("Good Pets")
    end
  end
