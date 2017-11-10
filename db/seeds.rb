
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: (20..35).to_a.sample,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

puts "user create"
puppy = Puppy.new(
  user_id: (1..10).to_a.sample,
  name: Faker::Pokemon.name,
  address: '6906 Boul St-Laurent Montréal, QC H2S 3E1',
  description: Faker::Lorem.paragraph,
  breed: "Labrador",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/labrador2_jjh0by.jpg")
puppy.save!

puppy = Puppy.new(
  user_id: (1..10).to_a.sample,
  name: Faker::Pokemon.name,
  address: '283 Rue Beaubien E Montréal, QC H2S 1R7',
  description: Faker::Lorem.paragraph,
  breed: "Rottweiler",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/Rottweiler_medvyp.jpg")
puppy.save!

puppy = Puppy.new(
    user_id: (1..10).to_a.sample,

  name: Faker::Pokemon.name,
  address: '6089 Avenue De Chateaubriand Montréal, QC H2S 2N3',
  description: Faker::Lorem.paragraph,
  breed: "Beagle",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/beagle_v8itos.jpg")
puppy.save!

puppy = Puppy.new(
    user_id: (1..10).to_a.sample,

  name: Faker::Pokemon.name,
  address: '7105 Rue de Saint-Vallier Montréal, QC H2S 2R3',
  description: Faker::Lorem.paragraph,
  breed: "Bulldog",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/bulldog_b6jihp.jpg")
puppy.save!

puppy = Puppy.new(
    user_id: (1..10).to_a.sample,

  name: Faker::Pokemon.name,
  address: '5346 Rue Drolet Montréal, QC H2T 2H4',
  description: Faker::Lorem.paragraph,
  breed: "Labrador",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/labrador1_j703us.jpg")
puppy.save!

puppy = Puppy.new(
    user_id: (1..10).to_a.sample,

  name: Faker::Pokemon.name,
  address: '5767 Avenue de l\'Esplanade Montréal, QC H2T 2Z9',
  description: Faker::Lorem.paragraph,
  breed: "Doberman",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/doberman_amcpdu.jpg")
puppy.save!

puppy = Puppy.new(
    user_id: (1..10).to_a.sample,

  name: Faker::Pokemon.name,
  address: '5000 Rue Resther Montréal, QC H2J 2W4',
  description: Faker::Lorem.paragraph,
  breed: "King Charles",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/king_charles_n7gnfd.jpg")
puppy.save!

puppy = Puppy.new(
    user_id: (1..10).to_a.sample,

  name: Faker::Pokemon.name,
  address: '7002 Rue Saint-Urbain Montréal, QC H2S',
  description: Faker::Lorem.paragraph,
  breed: "Shiba Inu",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/shibba_uii51q.jpg")
puppy.save!

puppy = Puppy.new(
    user_id: (1..10).to_a.sample,

  name: Faker::Pokemon.name,
  address: '7330 QC-335 Montréal, QC H2R 2E4',
  description: Faker::Lorem.paragraph,
  breed: "Border Collie",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/border_phzsoy.jpg")
puppy.save!

puppy = Puppy.new(
    user_id: (1..10).to_a.sample,

  name: Faker::Pokemon.name,
  address: '5455 Rue Saint-Denis Montréal, QC H2J 4B7',
  description: Faker::Lorem.paragraph,
  breed: "Golden Retriever",
  photo_url: "http://res.cloudinary.com/dkrjlrpn6/image/upload/v1510088575/golden_rvx1tt.jpg")
puppy.save!
