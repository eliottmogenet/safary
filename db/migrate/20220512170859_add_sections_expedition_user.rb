class AddSectionsExpeditionUser < ActiveRecord::Migration[6.0]
  def change
    add_column :expeditions, :section1, :boolean, default: false
    add_column :expeditions, :section2, :boolean, default: false
    add_column :expeditions, :section3, :boolean, default: false
    add_column :expeditions, :section4, :boolean, default: false
    add_column :expeditions, :section5, :boolean, default: false
    add_column :expeditions, :section6, :boolean, default: false
  end
end
