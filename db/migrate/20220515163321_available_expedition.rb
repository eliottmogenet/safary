class AvailableExpedition < ActiveRecord::Migration[6.0]
  def change
    add_column :expeditions, :available, :boolean, default: false
  end
end
