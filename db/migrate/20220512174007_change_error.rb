class ChangeError < ActiveRecord::Migration[6.0]
  def change
    remove_column :expeditions, :section1, :boolean, default: false
    remove_column :expeditions, :section2, :boolean, default: false
    remove_column :expeditions, :section3, :boolean, default: false
    remove_column :expeditions, :section4, :boolean, default: false
    remove_column :expeditions, :section5, :boolean, default: false
    remove_column :expeditions, :section6, :boolean, default: false
    add_column :expedition_users, :section1, :boolean, default: false
    add_column :expedition_users, :section2, :boolean, default: false
    add_column :expedition_users, :section3, :boolean, default: false
    add_column :expedition_users, :section4, :boolean, default: false
    add_column :expedition_users, :section5, :boolean, default: false
    add_column :expedition_users, :section6, :boolean, default: false
  end
end
