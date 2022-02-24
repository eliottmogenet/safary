class CreateGuildUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :guild_users do |t|

      t.timestamps
    end
  end
end
