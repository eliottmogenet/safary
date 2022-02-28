class CreateGuildComments < ActiveRecord::Migration[6.0]
  def change
    create_table :guild_comments do |t|

      t.timestamps
    end
  end
end
