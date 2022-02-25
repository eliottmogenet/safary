# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Guild.destroy_all
User.destroy_all

p "creating users"

user1 =  User.create(email: "test1@gmail.com", password: "test1@gmail.com")
user1.save!

user2 =  User.create(email: "test2@gmail.com", password: "test2@gmail.com")
user2.save!

user3 =  User.create(email: "test3@gmail.com", password: "test3@gmail.com")
user3.save!

p "creating guilds"

guild1 = user1.guilds.create(id: "1", name: "guil1")
guild1.save!



