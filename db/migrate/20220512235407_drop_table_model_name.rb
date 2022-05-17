class DropTableModelName < ActiveRecord::Migration[6.0]
  def change
    drop_table :guild_tactics
    drop_table :guild_comments
    drop_table :template_tactics
    drop_table :token_holders
  end
end
