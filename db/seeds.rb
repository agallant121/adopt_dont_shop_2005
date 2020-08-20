# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
                            sex: 'F')

@pet_2 = @shop_2.pets.create(image: 'https://cdn3-www.dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg',
                            name: 'Penny',
                            age: 3,
                            sex: 'F')

@pet_3 = @shop_3.pets.create(image: 'https://cdn3-www.dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/standing-7.jpg',
                            name: 'Abby',
                            age: 3,
                            sex: 'F')
