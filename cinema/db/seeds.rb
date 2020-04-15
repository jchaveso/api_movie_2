# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posters = ['https://www.cinemaparaiso.com.co/wp-content/uploads/2020/03/16157.jpg',
           'https://www.cinemaparaiso.com.co/wp-content/uploads/2020/03/16154.jpg',
           'https://www.cinemaparaiso.com.co/wp-content/uploads/2020/03/16178.jpg',
           'https://www.cinemaparaiso.com.co/wp-content/uploads/2020/03/16172.jpg']

10.times do
  #= name description:text
  Movie.create name: Faker::Name.name, description: Faker::Name.name, url: posters.sample
end

10.times do
  #= document:string full_name:string email:string mobile_phone:string
  User.create document: Faker::IDNumber.spanish_foreign_citizen_number, full_name: Faker::Name.name, email:  Faker::Internet.email, mobile_phone: Faker::PhoneNumber.cell_phone
end
