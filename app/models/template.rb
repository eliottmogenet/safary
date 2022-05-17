class Template < ApplicationRecord
    belongs_to :user
    has_many :twitter_followers
    has_many :template_comments

    def name
    "#{user.pseudo} - #{title}"
  end
end
