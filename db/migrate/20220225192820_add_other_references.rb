class AddOtherReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :guild_users, :guild
    add_reference :guild_users, :discord_user
  end
end
