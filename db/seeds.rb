# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

GuildUser.destroy_all
Guild.destroy_all
DiscordUser.destroy_all
User.destroy_all

p "creating users"

user1 =  User.create(email: "test1@gmail.com", password: "test1@gmail.com")
user1.save!

user2 =  User.create(email: "test2@gmail.com", password: "test2@gmail.com")
user2.save!

user3 =  User.create(email: "test3@gmail.com", password: "test3@gmail.com")
user3.save!

p "creating guilds"

guild1 = user1.guilds.create(uid: 1, name: "guild1")
guild1.save!


p "creating discord_users"

discord_users1 = DiscordUser.create(uid: 1, username: "discord_user1")
discord_users1.save!


discord_users2 = DiscordUser.create(uid: 2, username: "discord_user2")
discord_users2.save!

p "creating guild_users"

guilduser1 = guild1.guild_users.create(uid: 1, join_at: DateTime.new(2015, 6, 22), discord_user_id: discord_users1.uid)
guilduser1.save!

guilduser2 = guild1.guild_users.create(uid: 2, join_at: DateTime.new(2015, 7, 22), discord_user_id: discord_users2.uid)
guilduser2.save!
