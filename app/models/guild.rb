class Guild < ApplicationRecord
  has_many :guild_users
  has_many :guild_comments
  has_many :guild_tactics
  belongs_to :user, optional: true

  after_create :reload_page

  def reload_page
    redirect_to dashboards_path
  end
end
