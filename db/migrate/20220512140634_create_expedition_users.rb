class CreateExpeditionUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :expedition_users do |t|

      t.timestamps
    end
  end
end
