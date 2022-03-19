# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'csv'

AdminUser.destroy_all
Onboarding.destroy_all
Audience.destroy_all
TwitterFollower.destroy_all
Template.destroy_all
GuildComment.destroy_all
GuildTactic.destroy_all
GuildUser.destroy_all
Guild.destroy_all
DiscordUser.destroy_all
User.destroy_all

p "creating admin user"

admin_user1 = AdminUser.create(email: "eliott.mogenet@gmail.com", password: "eliott.mogenet@gmail.com")
admin_user1.save!

p "creating onboarding"

onboarding = Onboarding.create(batch_number: 02, deadline: Time.strptime('03/20/2022 00:00', '%m/%d/%Y %H:%M'))
onboarding.save!

p "creating users"

user1 =  User.create(email: "template@gmail.com", password: "template@gmail.com", pseudo: "Template", accepted: true)
#user1.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/jack.png')), filename: 'jack.png')
user1.save!

#user2 =  User.create(email: "test2@gmail.com", password: "test2@gmail.com", pseudo: "web3girl", lion: true, job_title: "Head of Growth @Ledger")
#user2.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/emily.png')), filename: 'emily.png')
#user2.save!

#user3 =  User.create(email: "test3@gmail.com", password: "test3@gmail.com", pseudo: "nicolas", lion: true, job_title: "VP Marketing Web3")
#user3.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/nicolas.png')), filename: 'nicolas.png')
#user3.save!

#user4 =  User.create(email: "test4@gmail.com", password: "test4@gmail.com", pseudo: "Jack")
#user4.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/jack.png')), filename: 'jack.png')
#user4.save!

#user5 =  User.create(email: "test5@gmail.com", password: "test5@gmail.com", pseudo: "coco")
#user5.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/emily.png')), filename: 'emily.png')
#user5.save!

#user6 =  User.create(email: "test6@gmail.com", password: "test6@gmail.com", pseudo: "salimon", lion: true)
#user6.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/peterpan.png')), filename: 'peterpan.png')
#user6.save!

#user7 =  User.create(email: "test7@gmail.com", password: "test7@gmail.com", pseudo: "elium", xp: 140)
#user7.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/elium.png')), filename: 'elium.png')
#user7.save!

#user8 =  User.create(email: "test8@gmail.com", password: "test8@gmail.com", pseudo: "jkey", xp: 35)
#user8.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/jkey.png')), filename: 'jkey.png')
#user8.save!

#user9 =  User.create(email: "test9@gmail.com", password: "test9@gmail.com", pseudo: "sonny",  xp: 368)
#user9.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/sonny.png')), filename: 'sonny.png')
#user9.save!

#user10 =  User.create(email: "test10@gmail.com", password: "test10@gmail.com", pseudo: "mathis", xp: 45)
#user10.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/jack.png')), filename: 'jack.png')
#user10.save!

#user13 =  User.create(email: "test13@gmail.com", password: "test13@gmail.com", pseudo: "Mirror", demo: true)
#user13.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/mirror.png')), filename: 'mirror.png')
#user13.save!

#user14 =  User.create(email: "test14@gmail.com", password: "test14@gmail.com", pseudo: "RabbitHole", demo: true)
#user14.photo.attach(io: File.open(File.join(Rails.root,'db/fixtures/rabbithole.png')), filename: 'rabbithole.png')
#user14.save!


p "creating guilds"

guild1 = user1.guilds.create(uid: 1, name: "Template data")
guild1.save!

#guild2 = user2.guilds.create(uid: 2, name: "guild2")
#guild2.save!

#guild3 = user3.guilds.create(uid: 3, name: "guild3")
#guild3.save!


p "creating templates"

template1 = user1.templates.create(title: "Audiences comparison", description: "Compare your audiences to know where you need to improve", category: "audience")
template1.save!

#template2 = user14.templates.create(title: "Audiences comparison", description: "Compare your audiences to know where you need to improve", category: "audience")
#template2.save!

#template3 = user13.templates.create(title: "Audiences comparison", description: "Compare your audiences to know where you need to improve", category: "audience")
#template3.save!

#template4 = user1.templates.create(title: "Token holder acquisition", description: "Learn how to grow a tokenised community over time.", category: "token")
#template4.save!

#template5 = user1.templates.create(title: "NFT sales over time", description: "Understand how to sell your NFT over time.",  category: "nft", url: "https://opensea.io/collection/doodles-official?tab=activity&embed=true")
#template5.save!

#template6 = user1.templates.create(title: "Twitter acquisition", description: "Learn how to grow a tokenised community over time.", category: "twitter")
#template6.save!

p "creating audiences template1"

audience1 = template1.audiences.create(name: "Twitter", user_count: 3000)
audience1.save!

audience2 = template1.audiences.create(name: "Discord", user_count: 1500)
audience2.save!

audience3 = template1.audiences.create(name: "Contributors", user_count: 800)
audience3.save!



p "creating audiences template2"

#audience4 = template2.audiences.create(name: "Twitter", user_count: 3000)
#audience4.save!

#audience5 = template2.audiences.create(name: "Discord", user_count: 1500)
#audience5.save!

#audience6 = template2.audiences.create(name: "Contributors", user_count: 1000)
#audience6.save!

p "creating audiences template3"

#audience7 = template3.audiences.create(name: "Twitter", user_count: 8500)
#audience7.save!

#audience8 = template3.audiences.create(name: "Discord", user_count: 490)
#audience8.save!

#audience9 = template3.audiences.create(name: "Contributors", user_count: 20)
#audience9.save!

p "creating comments"

p "creating twitter_followers"



p "creating tactics"

#tactic1 = user1.guild_tactics.create(title: "tactic1", guild_id: guild1.id)
#tactic1.save!

#tactic2 = user2.guild_tactics.create(title: "Tactic2", guild_id: guild1.id)
#tactic2.save!

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

guilduser1 = guild1.guild_users.create(uid: 1, join_at: DateTime.new(2021, 6, 22), discord_user_id: discord_users1.uid)
guilduser1.save!

guilduser2 = guild1.guild_users.create(uid: 2, join_at: DateTime.new(2021, 7, 22), discord_user_id: discord_users2.uid)
guilduser2.save!

guilduser3 = guild1.guild_users.create(uid: 3, join_at: DateTime.new(2021, 8, 15), discord_user_id: discord_users1.uid)
guilduser3.save!

guilduser4 = guild1.guild_users.create(uid: 4, join_at: DateTime.new(2021, 8, 15), discord_user_id: discord_users2.uid)
guilduser4.save!

p "creating guild_users 2"

#guilduser3 = guild2.guild_users.create(uid: 3, join_at: DateTime.new(2018, 12, 19), discord_user_id: discord_users3.uid)
#guilduser3.save!

#guilduser4 = guild2.guild_users.create(uid: 4, join_at: DateTime.new(2018, 11, 9), discord_user_id: discord_users4.uid)
#guilduser4.save!

p "creating guild_users 3"

#guilduser5 = guild3.guild_users.create(uid: 5, join_at: DateTime.new(2017, 6, 3), discord_user_id: discord_users5.uid)
#guilduser5.save!

#guilduser6 = guild3.guild_users.create(uid: 6, join_at: DateTime.new(2020, 8, 5), discord_user_id: discord_users6.uid)
#guilduser6.save!

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
