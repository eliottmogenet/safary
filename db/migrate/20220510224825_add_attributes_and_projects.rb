class AddAttributesAndProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :name, :string
    add_column :dashboards, :name, :string
    add_reference :dashboards, :project
  end
end
