class CreateDiscordUsers < ActiveRecord::Migration[6.0]
  def self.up
    create_table :discord_users, :id => false do |t|
      t.integer :uid, :limit => 8
      t.timestamps
    end
  end
end

