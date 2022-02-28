class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @users = User.all
    @guilds = Guild.all
    @discord_users = DiscordUser.all
    @guild_users = GuildUser.all
    @guild = Guild.first
  end
end
