class AddReferenceToGuild < ActiveRecord::Migration[6.0]
  def change
    add_reference :guild_comments, :guild
    add_reference :guild_tactics, :guild
  end
end
