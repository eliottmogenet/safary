class AddAcceptedToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :accepted, :boolean, default: false
  end
end
