class CreateGuildTactics < ActiveRecord::Migration[6.0]
  def change
    create_table :guild_tactics do |t|

      t.timestamps
    end
  end
end
