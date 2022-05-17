class CreateDashboardUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :dashboard_users do |t|

      t.timestamps
    end
  end
end
