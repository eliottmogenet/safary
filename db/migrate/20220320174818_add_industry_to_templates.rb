class AddIndustryToTemplates < ActiveRecord::Migration[6.0]
  def change
    add_column :templates, :industry, :string
  end
end
