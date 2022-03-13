class GuildCommentsController < ApplicationController

  def create
    @guild = Guild.find(params[:guild_id])
    @comment = GuildComment.new(comment_params)
    @comment.guild = @guild
    @comment.user = current_user
    if @comment.save
      redirect_to guild_path(@guild, anchor: "comment-#{@comment.id}")
    end
  end

  private

  def comment_params
    params.require(:guild_comment).permit(:content, :user_id, :guild_id, :date)
  end

end
