class Dashboard < ApplicationRecord
  belongs_to :project, optional: true
  has_many :dashboard_users
  has_many :users, through: :dashboard_users
end
