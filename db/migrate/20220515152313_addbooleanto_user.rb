class AddbooleantoUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_category, :string
  end
end
