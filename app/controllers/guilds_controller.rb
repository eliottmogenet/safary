class GuildsController < ApplicationController

  def show
    @guild = Guild.find(params[:id])
    @project = @guild.user.projects.first
    @count = @guild.guild_users.count
    @guilds = Guild.all
    #@comment = GuildComment.new

    @data = @guild.guild_users.group_by_week(:join_at).count
    accumulator = 0
    @data.transform_values! do |val|
    val += accumulator
    accumulator = val
    end

  end

  def refresh
    @guild = Guild.order("created_at").last
    @guild.user = current_user
    @guild.save!

    redirect_to guild_path(@guild)
  end

  private

  def guild_params
    params.require(:guild).permit(:name, :user_id, :uid)
  end
end
