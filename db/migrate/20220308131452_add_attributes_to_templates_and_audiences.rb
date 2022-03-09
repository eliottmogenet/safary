class AddAttributesToTemplatesAndAudiences < ActiveRecord::Migration[6.0]
  def change
    add_column :templates, :title, :string
    add_column :templates, :description, :string
    add_column :audiences, :name, :string
    add_column :audiences, :user_count, :integer
    add_reference :templates, :user
    add_reference :audiences, :template
  end
end
