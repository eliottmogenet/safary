class TemplatesController < ApplicationController

  def index
    @audience = Template.where(category: "audience").first
    @token = Template.where(category: "token").first
    @nft = Template.where(category: "nft").first
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
