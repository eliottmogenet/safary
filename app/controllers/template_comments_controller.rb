class TemplateCommentsController < ApplicationController

  def create
    @template = Template.find(params[:template_id])
    @comment = TemplateComment.new(comment_params)
    @comment.template = @template
    @comment.user = current_user
    @comment.save

    redirect_to template_path(@template, anchor: "comment-#{@comment.id}")
  end

  def edit
    @templates = Template.all
    @template = Template.find(params[:template_id])
    @comment = TemplateComment.find(params[:id])
    @comment_new = TemplateComment.new
    @data_audience = @template.audiences.order(user_count: :desc)
  end

  def update
    @template = Template.find(params[:template_id])
    @comment = TemplateComment.find(params[:id])
    @comment.update(comment_params)
    redirect_to template_path(@template, anchor: "comment-#{@comment.id}")
  end

  private

  def comment_params
    params.require(:template_comment).permit(:content, :user_id, :template_id, :date, :url, :description, :paragraph)
  end

end
