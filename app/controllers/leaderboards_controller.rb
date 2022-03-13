class LeaderboardsController < ApplicationController

  def index
    @users = User.all
    @adventurers = User.where(lion: false)
    @adventurers_sort = @adventurers.sort_by { |user| (user.template_comments + user.guild_comments).count }
  end
end
