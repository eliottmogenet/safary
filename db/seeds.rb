# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Onboarding.destroy_all
GuildComment.destroy_all
GuildTactic.destroy_all
GuildUser.destroy_all
Guild.destroy_all
DiscordUser.destroy_all
User.destroy_all

p "creating onboarding"

onboarding = Onboarding.create(batch_number: 02, deadline: Time.strptime('03/20/2022 00:00', '%m/%d/%Y %H:%M'))
onboarding.save!

p "creating users"

user1 =  User.create(email: "template@gmail.com", password: "template@gmail.com", pseudo: "Template", accepted: true)
#user1.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/jack.png')), filename: 'jack.png')
user1.save!

user2 =  User.create(email: "test2@gmail.com", password: "test2@gmail.com", pseudo: "cocococo")
user2.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/emily.png')), filename: 'emily.png')
user2.save!

user3 =  User.create(email: "test3@gmail.com", password: "test3@gmail.com", pseudo: "salimon")
user3.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/simon.png')), filename: 'simon.png')
user3.save!

user4 =  User.create(email: "test4@gmail.com", password: "test4@gmail.com", pseudo: "elium")
user4.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/jack.png')), filename: 'jack.png')
user4.save!

user5 =  User.create(email: "test5@gmail.com", password: "test5@gmail.com", pseudo: "cocococo")
user5.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/emily.png')), filename: 'emily.png')
user5.save!

user6 =  User.create(email: "test6@gmail.com", password: "test6@gmail.com", pseudo: "salimon")
user6.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/simon.png')), filename: 'simon.png')
user6.save!

user7 =  User.create(email: "test7@gmail.com", password: "test7@gmail.com", pseudo: "elium")
user7.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/jack.png')), filename: 'jack.png')
user7.save!

user8 =  User.create(email: "test8@gmail.com", password: "test8@gmail.com", pseudo: "cocococo")
user8.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/emily.png')), filename: 'emily.png')
user8.save!

user9 =  User.create(email: "test9@gmail.com", password: "test9@gmail.com", pseudo: "salimon")
user9.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/simon.png')), filename: 'simon.png')
user9.save!

user10 =  User.create(email: "test10@gmail.com", password: "test10@gmail.com", pseudo: "elium")
user10.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/jack.png')), filename: 'jack.png')
user10.save!

user11 =  User.create(email: "test11@gmail.com", password: "test11@gmail.com", pseudo: "cocococo")
user11.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/emily.png')), filename: 'emily.png')
user11.save!

user12 =  User.create(email: "test12@gmail.com", password: "test12@gmail.com", pseudo: "salimon")
user12.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/simon.png')), filename: 'simon.png')
user12.save!

p "creating guilds"

guild1 = user1.guilds.create(uid: 1, name: "Template data")
guild1.save!

guild2 = user2.guilds.create(uid: 2, name: "guild2")
guild2.save!

guild3 = user3.guilds.create(uid: 3, name: "guild3")
guild3.save!


p "creating comments"

comment1 = user1.guild_comments.create(content: "Hello : first comment!", guild_id: guild1.id)
comment1.save!

comment2 = user2.guild_comments.create(content: "Hello : second comment!", guild_id: guild1.id)
comment2.save!

p "creating tactics"

tactic1 = user1.guild_tactics.create(title: "tactic1", guild_id: guild1.id)
tactic1.save!

tactic2 = user2.guild_tactics.create(title: "Tactic2", guild_id: guild1.id)
tactic2.save!

p "creating discord_users"

discord_users1 = DiscordUser.create(uid: 1, username: "discord_user1")
discord_users1.save!


discord_users2 = DiscordUser.create(uid: 2, username: "discord_user2")
discord_users2.save!

discord_users3 = DiscordUser.create(uid: 3, username: "discord_user3")
discord_users3.save!


discord_users4 = DiscordUser.create(uid: 4, username: "discord_user4")
discord_users4.save!

discord_users5 = DiscordUser.create(uid: 5, username: "discord_user5")
discord_users5.save!


discord_users6 = DiscordUser.create(uid: 6, username: "discord_user6")
discord_users6.save!


p "creating guild_users 1"

guilduser1 = guild1.guild_users.create(uid: 1, join_at: DateTime.new(2015, 6, 22), discord_user_id: discord_users1.uid)
guilduser1.save!

guilduser2 = guild1.guild_users.create(uid: 2, join_at: DateTime.new(2015, 7, 22), discord_user_id: discord_users2.uid)
guilduser2.save!

p "creating guild_users 2"

guilduser3 = guild2.guild_users.create(uid: 3, join_at: DateTime.new(2018, 12, 19), discord_user_id: discord_users3.uid)
guilduser3.save!

guilduser4 = guild2.guild_users.create(uid: 4, join_at: DateTime.new(2018, 11, 9), discord_user_id: discord_users4.uid)
guilduser4.save!

p "creating guild_users 3"

guilduser5 = guild3.guild_users.create(uid: 5, join_at: DateTime.new(2017, 6, 3), discord_user_id: discord_users5.uid)
guilduser5.save!

guilduser6 = guild3.guild_users.create(uid: 6, join_at: DateTime.new(2020, 8, 5), discord_user_id: discord_users6.uid)
guilduser6.save!
