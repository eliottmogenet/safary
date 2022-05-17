class Addotherflowuser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :call, :boolean, default: false
    add_column :users, :calendar, :boolean, default: false
    add_column :users, :club, :boolean, default: false
    add_column :users, :discord_member, :boolean, default: false
  end
end
