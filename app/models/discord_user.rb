class DiscordUser < ApplicationRecord
  has_many :guild_users
end
