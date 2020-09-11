require 'rails_helper'

RSpec.describe 'As a visitor' do
  before :each do
    @shop_1 = Shelter.create(name: "Al's Pals",
                             address: '123 First Street',
                             city: 'Bangor',
                             state: 'ME',
                             zip: '04401')

    @pet_1 = @shop_1.pets.create(image: 'https://cdn3-www.dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg',
                                 name: 'Molly',
                                 age: 3,
                                 sex: 'F',
                                 description: 'Nice dog')
    visit "/pets/#{@pet_1.id}"
  end

  it "shows a pet's information on the pet's show page" do
    expect(page).to have_content(@pet_1.name)
    expect(page).to have_content(@pet_1.age)
    expect(page).to have_content(@pet_1.sex)
    expect(page).to have_content(@pet_1.description)
    expect(page).to have_content(@pet_1.adopted?)
  end

  it "has a link to update the pet's information" do
    click_link('Update Pet')

    fill_in :name, with: 'Bobby'
    click_button('Submit')

    expect(current_path).to eq("/pets/#{@pet_1.id}")
    expect(page).to_not have_content('Molly')
    expect(page).to have_content('Bobby')
  end
end
