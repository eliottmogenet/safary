class Project < ApplicationRecord
    has_one_attached :photo

    has_many :dashboards
    has_many :project_users
    has_many :users, through: :project_users
end
