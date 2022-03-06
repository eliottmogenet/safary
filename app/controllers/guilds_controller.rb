class GuildsController < ApplicationController

  def show
    @guilds = Guild.all
    @guild = Guild.find(params[:id])
    @comment = GuildComment.new

    @data = @guild.guild_users.group_by_week(:join_at).count
    accumulator = 0
    @data.transform_values! do |val|
    val += accumulator
    accumulator = val
    end

  end

  def refresh
    @guild = Guild.last
    @guild.user = current_user
    @guild.save!

    redirect_to guild_path(@guild)
  end

  private

  def guild_params
    params.require(:guild).permit(:name, :user_id, :uid)
  end
end
