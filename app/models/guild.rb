class Guild < ApplicationRecord
  has_many :guild_users
  belongs_to :user, optional: true
end
