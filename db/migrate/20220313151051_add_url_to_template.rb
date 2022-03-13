class AddUrlToTemplate < ActiveRecord::Migration[6.0]
  def change
    add_column :templates, :url, :text
  end
end
