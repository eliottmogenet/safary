class CreateGuilds < ActiveRecord::Migration[6.0]
  def self.up
    create_table :guilds, :id => false do |t|
      t.integer :uid, :limit => 8
      t.timestamps
    end
  end
end
