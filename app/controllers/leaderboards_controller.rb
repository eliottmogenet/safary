class LeaderboardsController < ApplicationController

  def index
    @users = User.all
    @adventurers = User.all
    #@adventurers_sort = @adventurers.sort_by { |user| (user.template_comments + user.guild_comments).count }
    @adventurers_sort = @adventurers
    @guilds = Guild.all
  end


  def profile
        @guilds = Guild.all

  end
end
