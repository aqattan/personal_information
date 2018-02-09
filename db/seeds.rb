# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10000.times do |x|
  person = Person.create({name: "#{Faker::Name.name}", date_of_birth: "#{Faker::Date.birthday}", phone_number: "#{Faker::PhoneNumber.phone_number}"})
  Address.create({street: "#{Faker::Address.street_address}", city: "#{Faker::Address.city}", person_id: "#{person.id}"})
  Profile.create({gender: "#{['male', 'female'].shuffle[0]}", email: "#{Faker::Internet.free_email}", person_id: "#{person.id}"})
end
