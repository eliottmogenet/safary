class AddReferencesToCommentTactics < ActiveRecord::Migration[6.0]
  def change
    add_reference :guild_comments, :user
    add_reference :guild_tactics, :user
    add_column :guild_comments, :content, :text
    add_column :guild_comments, :date, :datetime
    add_column :guild_tactics, :date, :datetime
    add_column :guild_tactics, :title, :string
  end
end
