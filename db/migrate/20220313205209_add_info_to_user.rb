class AddInfoToUser < ActiveRecord::Migration[6.0]
  def change
     add_column :users, :job_title, :string
     add_column :users, :onboarded, :boolean, default: false
  end
end
