class AddReferenceProjectUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :project_users, :project
    add_reference :project_users, :user
  end
end
