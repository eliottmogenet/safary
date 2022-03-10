class TemplateTacticsController < ApplicationController

  def create
    @template = Template.find(params[:template_id])
    @tactic = TemplateTactic.new(tactic_params)
    @tactic.template = @template
    @tactic.user = current_user
    @tactic.save
  end

  private

  def comment_params
    params.require(:template_tactic).permit(:title, :user_id, :template_id)
  end
end
