class Expedition < ApplicationRecord
  has_many :expedition_users
  has_many :users, through: :expedition_users
end
