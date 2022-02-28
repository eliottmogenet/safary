class GuildsController < ApplicationController

  def show
    @guilds = Guild.all
    @guild = Guild.find(params[:id])
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
