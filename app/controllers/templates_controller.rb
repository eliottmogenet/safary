class TemplatesController < ApplicationController

  def index
    @audience = Template.where(title: "Audiences comparison").first
    @token = Template.where(title: "Token holders segmentation").first
    @nft = Template.where(title: "NFT sales over time").first
  end


  def show
    @template = Template.find(params[:id])
    @templates = Template.all
    @data_audience = @template.audiences.order(user_count: :desc)
    @comment = TemplateComment.new
    @tactic = TemplateTactic.new
  end
end
