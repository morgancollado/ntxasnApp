# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ride.destroy_all
User.destroy_all

require 'faker'
require 'byebug'

user = User.first || User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')

user2 = User.create(email: 'morgan.collado@gmail.com', password: 'hello', password_confirmation: 'hello')

ride = Ride.create(
    date_time: Faker::Time.forward(days: 15, period: :morning),
    location_to: Faker::Address.full_address,
    location_from: Faker::Address.full_address,
    appointment_type: "Consult",
    passenger_id: 1,
    driver_id: 2
)
