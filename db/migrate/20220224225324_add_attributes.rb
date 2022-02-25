class AddAttributes < ActiveRecord::Migration[6.0]
  def change
    add_column :guilds, :name, :string
    add_column :discord_users, :username, :string
    add_column :guild_users, :join_at, :datetime
    add_reference :guild_users, :guild
    add_reference :guild_users, :discord_user
    add_reference :guilds, :user
  end
end
