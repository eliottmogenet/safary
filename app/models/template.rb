class Template < ApplicationRecord
    belongs_to :user
    has_many :audiences
    has_many :token_holders
    has_many :nft_holders
    has_many :template_tactics
    has_many :template_comments
end
