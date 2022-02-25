class IDwithOtherName < ActiveRecord::Migration[6.0]
  def change
    execute "ALTER TABLE guilds ADD PRIMARY KEY (uid);"
    execute "ALTER TABLE discord_users ADD PRIMARY KEY (uid);"
    execute "ALTER TABLE guild_users ADD PRIMARY KEY (uid);"
  end
end
