class AddCategoryToTemplateModel < ActiveRecord::Migration[6.0]
  def change
    add_column :templates, :category, :string
  end
end
