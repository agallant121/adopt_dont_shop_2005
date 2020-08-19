require 'rails_helper'

RSpec.describe 'As a visitor' do
  before :each do
    @shop_1 = Shelter.create(name: "Al's Pals",
                             address: '123 First Street',
                             city: 'Bangor',
                             state: 'ME',
                             zip: '04401')
  end

  it "I see the shelter's information on it's show page" do
    visit "/shelters/#{@shop_1.id}"
    
    expect(page).to have_content(@shop_1.name)
    expect(page).to have_content(@shop_1.address)
    expect(page).to have_content(@shop_1.city)
    expect(page).to have_content(@shop_1.state)
    expect(page).to have_content(@shop_1.zip)
  end
end
