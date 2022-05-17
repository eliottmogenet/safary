class ExpeditionUser < ApplicationRecord
  belongs_to :expedition
  belongs_to :user
end
