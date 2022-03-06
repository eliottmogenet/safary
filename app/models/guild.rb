class Guild < ApplicationRecord
  has_many :guild_users
  has_many :guild_comments
  has_many :guild_tactics
  belongs_to :user, optional: true

  after_create :reload_page

  def reload_page
    @guild = Guild.last
    @user = current_user
    @guild.save

    redirect_to guild_path(@guild)
  end
end
