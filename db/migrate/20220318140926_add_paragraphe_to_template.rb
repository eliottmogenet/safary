class AddParagrapheToTemplate < ActiveRecord::Migration[6.0]
  def change
    add_column :templates, :paragraph, :text
  end
end
