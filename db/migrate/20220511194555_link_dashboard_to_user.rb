class LinkDashboardToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :dashboard_users, :dashboard
    add_reference :dashboard_users, :user
  end
end
