class Guild < ApplicationRecord
  has_many :guild_users
  has_many :guild_comments
  has_many :guild_tactics
  belongs_to :user, optional: true
end

