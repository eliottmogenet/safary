class TemplatesController < ApplicationController

  def index
    @audience = Template.where(title: "Audiences comparison").first
    @token = Template.where(category: "token").first
    @nft = Template.where(title: "NFT sales over time").first
    @twitter = Template.where(category: "twitter").first
  end


  def show
    @template = Template.find(params[:id])
    @templates = Template.all
    @data_audience = @template.audiences.order(user_count: :desc)
    @comment = TemplateComment.new
    @tactic = TemplateTactic.new
    #@data_twitter_daily = @template.twitter_followers.group_by_day(:date).count
    @data_twitter_daily = @template.twitter_followers.group(:date).sum(:user_count)
  end
end
