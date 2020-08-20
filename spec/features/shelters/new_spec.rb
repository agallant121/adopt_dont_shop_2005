require 'rails_helper'

RSpec.describe 'As a visitor' do
  it "can add a new shelter" do
    shop_4 = Shelter.create(name: "Aila's Pals",
      address: '912 Fourth Street',
      city: 'Bangor',
      state: 'ME',
      zip: '04401')

    visit '/shelters'

    click_link 'New Shelter'
    expect(current_path).to eq('/shelters/new')

    fill_in :name, with: shop_4.name
    fill_in :address, with: shop_4.address
    fill_in :city, with: shop_4.city
    fill_in :state, with: shop_4.state
    fill_in :zip, with: shop_4.zip

    click_button 'Submit'

    expect(current_path).to eq('/shelters')
    expect(page).to have_content(shop_4.name)
  end
end
