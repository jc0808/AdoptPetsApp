# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Shelters

s1 = Shelter.create(name: "Dogs")
s2 = Shelter.create(name:"Cats")


# # Adopters

# a1 = Adopter.create(firstName: "Joshua", lastName: "Campos", address: "2030 Saint Thomas St")
# a2 = Adopter.create(firstName: "Lucas", lastName: "Wright", address: "2030 Saint Clemente St")

# # Credentials

# Credential.create(username: "joshua", password_digest: "joshua1", adopter_id: a1.id)
# Credential.create(username: "lucas", password_digest: "lucas1", adopter_id: a2.id)


# Pets

# Dogs



# Pet.create(name: "Max", sex: "Male", breed: "Poodle", pet_type: "Dog", age: 1, adopter_id: a2.id, shelter_id: s1.id, adopted: true, image: "https://www.akc.org/wp-content/uploads/2020/10/Poodle-puppy-sitting-on-the-bed-in-the-morning-500x486.jpg" )
# Pet.create(name: "Buggie", sex: "Male", breed: "Maltese", pet_type: "Dog", age: 3, adopter_id: a1.id, shelter_id: s1.id, adopted: true, image: "https://thehappypuppysite.com/wp-content/uploads/2016/09/The-Maltese-HP-long.jpg" )

dog1 = Pet.new(name: "Ace", sex: "Male", breed: "Golden Retriever", pet_type: "Dog", age: 1, shelter_id: s1.id, adopted: false, image: "https://cdn.akc.org/Marketplace/Breeds/Golden_Retriever_SERP.jpg" )
dog2 = Pet.new(name: "Apollo", sex: "Male", breed: "Beagle", pet_type: "Dog", age: 1, shelter_id: s1.id, adopted: false, image: "https://dogtime.com/assets/uploads/2016/09/beagle-puppy-5-e1568913038666.jpg" )

dog3 = Pet.new(name: "Archie", sex: "Male", breed: "Pug", pet_type: "Dog", age: 0, shelter_id: s1.id, adopted: false, image: "https://i.pinimg.com/736x/75/fb/07/75fb0773ae367e4d7afe71d25c4323e3.jpg" )

dog4 = Pet.new(name: "Bailey", sex: "Male", breed: "Irish Setter", pet_type: "Dog", age: 4, shelter_id: s1.id, adopted: false, image: "https://img1.wsimg.com/isteam/ip/98ee3788-d68f-4269-bc51-5f6e945d96a1/Closeup.jpg" )

dog5 = Pet.new(name: "Buster", sex: "Male", breed: "French Bulldog", pet_type: "Dog", age: 5, shelter_id: s1.id, adopted: false, image: "https://i.pinimg.com/originals/92/ac/6f/92ac6f432576642f7241e04b29724d24.jpg" )

dog6 = Pet.new(name: "Diesel", sex: "Male", breed: "Shitzu", pet_type: "Dog", age: 0, shelter_id: s1.id, adopted: false, image: "https://www.bubblypet.com/wp-content/uploads/2022/09/Shih-Tzu-price-and-expenses-how-much-does-a-Shih-Tzu-cost.jpg" )

dog7 = Pet.new(name: "Gus", sex: "Male", breed: "Collie", pet_type: "Dog", age: 3, shelter_id: s1.id, adopted: false, image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2021%2F11%2F18%2Fcollie-puppy-walking-towards-camera-231545657-2000.jpg" )

dog8 = Pet.new(name: "Bingo", sex: "Male", breed: "Beagle", pet_type: "Dog", age: 2, shelter_id: s1.id, adopted: false, image: "https://cdn.britannica.com/80/29280-050-A3A13277/Beagles-pets.jpg" )

#female
dog9 = Pet.new(name: "Luna", sex: "Female", breed: "Border Collie", pet_type: "Dog", age: 4, shelter_id: s1.id, adopted: false, image: "https://cf.ltkcdn.net/dogs/dog-breeds/images/std/323839-800x533-border-collie-breed.jpg" )

dog10 = Pet.new(name: "Nala", sex: "Female", breed: "Havanese", pet_type: "Dog", age: 1, shelter_id: s1.id, adopted: false, image: "https://betterpet.com/wp-content/uploads/2022/07/havanese.jpg" )

dog11 = Pet.new(name: "Sadie", sex: "Female", breed: "German Shepherd", pet_type: "Dog", age: 2, shelter_id: s1.id, adopted: false, image: "https://d.newsweek.com/en/full/2135189/german-shepherd-lying-down.jpg" )

dog12 = Pet.new(name: "Ruby", sex: "Female", breed: "Chihuahua", pet_type: "Dog", age: 5, shelter_id: s1.id, adopted: false, image: "https://www.loveyourdog.com/wp-content/uploads/2020/04/Chihuahua-Relaxing-Indoors-900x500.jpg" )


dog13 = Pet.new(name: "Maggie", sex: "Female", breed: "Husky", pet_type: "Dog", age: 0, shelter_id: s1.id, adopted: false, image: "https://media-be.chewy.com/wp-content/uploads/2021/06/11142532/husky-dog-breed-681935166-914x615.jpg" )

dog14 = Pet.new(name: "Zoey", sex: "Female", breed: "Pomeranian", pet_type: "Dog", age: 1, shelter_id: s1.id, adopted: false, image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F11%2F03%2Fpomeranian-172575221-2000.jpg" )



dog1.save(validate: false)
dog2.save(validate: false)
dog3.save(validate: false)
dog4.save(validate: false)
dog5.save(validate: false)
dog6.save(validate: false)
dog7.save(validate: false)
dog8.save(validate: false)
dog9.save(validate: false)
dog10.save(validate: false)
dog11.save(validate: false)
dog12.save(validate: false)
dog13.save(validate: false)
dog14.save(validate: false)



#Cats

cat1 = Pet.new(name: "Charlie", sex: "Male", breed: "Birman", pet_type: "Cat", age: 2, shelter_id: s2.id, adopted: false, image: "https://www.pumpkin.care/wp-content/uploads/2022/01/birman-hero.jpg" )

cat2 = Pet.new(name: "Milo", sex: "Male", breed: "Siberian", pet_type: "Cat", age: 1, shelter_id: s2.id, adopted: false, image: "https://thediscerningcat.com/wp-content/uploads/2020/08/siberian-blue-kitten.jpg" )

cat3 = Pet.new(name: "Simba", sex: "Male", breed: "Russian Blue", pet_type: "Cat", age: 0, shelter_id: s2.id, adopted: false, image: "https://www.bubblypet.com/wp-content/uploads/2021/11/Russian-Blue-kitten-price-and-expenses-how-much-does-a-Russian-Blue-cat-cost-1200x800.jpg" )


cat4 = Pet.new(name: "Jasper", sex: "Male", breed: "American Bobtail", pet_type: "Cat", age: 4, shelter_id: s2.id, adopted: false, image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2022%2F04%2F01%2Famerican-bobtail-laying-on-counter-perseusandco-2000.jpg" )


cat5 = Pet.new(name: "Leo", sex: "Male", breed: "Sphynx", pet_type: "Cat", age: 0, shelter_id: s2.id, adopted: false, image: "https://upload.wikimedia.org/wikipedia/commons/2/29/Cat_Sphynx._Kittens._img_11.jpg" )

cat6 = Pet.new(name: "Garfield", sex: "Male", breed: "American Shorthairs", pet_type: "Cat", age: 2, shelter_id: s2.id, adopted: false, image: "https://allaboutcats.com/wp-content/uploads/2020/10/The-American-Shorthair.jpg" )

# female

cat7 = Pet.new(name: "Rosie", sex: "Female", breed: "cornish", pet_type: "Cat", age: 5, shelter_id: s2.id, adopted: false, image: "https://s36537.pcdn.co/wp-content/uploads/2015/06/600-rex-headshot.jpg.optimal.jpg" )

cat8 = Pet.new(name: "Daisy", sex: "Female", breed: "Tonkinese", pet_type: "Cat", age: 0, shelter_id: s2.id, adopted: false, image: "https://www.catbreedslist.com/uploads/cat-pictures/tonkinese-3-3.jpg" )

cat9 = Pet.new(name: "Chloe", sex: "Female", breed: "Cornish rex", pet_type: "Cat", age: 2, shelter_id: s2.id, adopted: false, image: "https://excitedcats.com/wp-content/uploads/2020/12/Tabby-Cornish-Rex_Shutterstock_Elena-Loginova.jpg" )

cat10 = Pet.new(name: "Shadow", sex: "Female", breed: "Ragdoll", pet_type: "Cat", age: 2, shelter_id: s2.id, adopted: false, image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F09%2F24%2Fragdoll-554742943-2000.jpg" )

cat11 = Pet.new(name: "Lola", sex: "Female", breed: "Persian", pet_type: "Cat", age: 3, shelter_id: s2.id, adopted: false, image: "https://mypersiancat.com/wp-content/uploads/2020/11/dan-wayman-Paw3cZH_YCY-unsplash.jpg" )

cat1.save(validate: false)
cat2.save(validate: false)
cat3.save(validate: false)
cat4.save(validate: false)
cat5.save(validate: false)
cat6.save(validate: false)
cat7.save(validate: false)
cat8.save(validate: false)
cat9.save(validate: false)
cat10.save(validate: false)
cat11.save(validate: false)