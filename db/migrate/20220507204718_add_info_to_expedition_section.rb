class AddInfoToExpeditionSection < ActiveRecord::Migration[6.0]
  def change
    add_column :expeditions, :name, :string
    add_column :expeditions, :description, :text
  end
end
