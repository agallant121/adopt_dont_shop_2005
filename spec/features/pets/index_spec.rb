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

    @pet_1 = @shop_1.pets.create(image: 'https://cdn3-www.dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg',
                                 name: 'Molly',
                                 age: 3,
                                 sex: 'F',
                                 description: 'Nice dog')

    @pet_2 = @shop_2.pets.create(image: 'https://cdn3-www.dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg',
                                 name: 'Penny',
                                 age: 3,
                                 sex: 'F',
                                 description: 'Nice dog')
                                 
    @pet_3 = @shop_3.pets.create(image: 'https://cdn3-www.dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg',
                                 name: 'Abby',
                                 age: 3,
                                 sex: 'F',
                                 description: 'Nice dog')
    visit '/pets'
  end

  it "shows all the pets and their info on pets index page" do
    # expect(page).to have_content(@pet_1.image)
    expect(page).to have_content(@pet_1.name)
    expect(page).to have_content(@pet_1.age)
    expect(page).to have_content(@pet_1.sex)

    # expect(page).to have_content(@pet_2.image)
    expect(page).to have_content(@pet_2.name)
    expect(page).to have_content(@pet_2.age)
    expect(page).to have_content(@pet_2.sex)

    # expect(page).to have_content(@pet_3.image)
    expect(page).to have_content(@pet_3.name)
    expect(page).to have_content(@pet_3.age)
    expect(page).to have_content(@pet_3.sex)
  end
end
