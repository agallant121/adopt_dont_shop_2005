require 'rails_helper'

RSpec.describe 'As a visitor' do
  before :each do
    @shop_1 = Shelter.create(name: "Al's Pals",
                             address: '123 First Street',
                             city: 'Bangor',
                             state: 'ME',
                             zip: '04401')
    @shop_2 = Shelter.create(name: "Abby's Pals",
                             address: '456 Second Street',
                             city: 'Yarmouth',
                             state: 'ME',
                             zip: '04102')
    @shop_3 = Shelter.create(name: "Penny's Pals",
                             address: '789 Third Street',
                             city: 'Denver',
                             state: 'CO',
                             zip: '80210')

    visit '/shelters'
  end

  it "has a list of the shelter names on shelter index page" do

    expect(page).to have_content(@shop_1.name)
    expect(page).to have_content(@shop_2.name)
    expect(page).to have_content(@shop_3.name)
  end

  it "has a link to create a new shelter" do
    expect(page).to have_link 'New Shelter'
  end
end
