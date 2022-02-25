class PagesController < ApplicationController
  def home
    @users = User.all
    @guilds = Guild.all
    @discord_users = DiscordUser.all
  end
end
