class TemplateCommentsController < ApplicationController

  def create
    @template = Template.find(params[:template_id])
    @comment = TemplateComment.new(comment_params)
    @comment.template = @template
    @comment.user = current_user
    @comment.save
  end

  private

  def comment_params
    params.require(:template_comment).permit(:content, :user_id, :template_id, :date)
  end

end
