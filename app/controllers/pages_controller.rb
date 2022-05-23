class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :onboardings, :user_list]

  def home
    @users = User.all
    @guilds = Guild.all
    @discord_users = DiscordUser.all
    @guild_users = GuildUser.all
    @guild = Guild.first
  end

  def user_list
    if params[:query].present?
      @projects = Project.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @projects = Project.all.order('name ASC')
    end
  end
end
