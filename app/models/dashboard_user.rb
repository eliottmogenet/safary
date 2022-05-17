class DashboardUser < ApplicationRecord
  belongs_to :dashboard
  belongs_to :user
end
