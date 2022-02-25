class CreateGuildUsers < ActiveRecord::Migration[6.0]
  def self.up
    create_table :guild_users, :id => false do |t|
      t.integer :id, :limit => 8
      t.timestamps
    end
  end
end
