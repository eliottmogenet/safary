class AddAttributesExpeditionUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :expedition_users, :expedition
    add_reference :expedition_users, :user
  end
end
