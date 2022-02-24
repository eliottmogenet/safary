class GuildUser < ApplicationRecord
  belongs_to :guild
  belongs_to :discord_user
end
