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

    visit "/shelters/#{@shop_1.id}"
  end

  it "I see the shelter's information on it's show page" do
    expect(page).to have_content(@shop_1.name)
    expect(page).to have_content(@shop_1.address)
    expect(page).to have_content(@shop_1.city)
    expect(page).to have_content(@shop_1.state)
    expect(page).to have_content(@shop_1.zip)
  end

  it "has a link to delete a shelter" do
    expect(Shelter.all.count).to eq(2)

    click_link 'Delete'

    expect(current_path).to eq('/shelters')
    expect(Shelter.all.count).to eq(1)
    expect(page).to_not have_content(@shop_1.name)
  end
end
