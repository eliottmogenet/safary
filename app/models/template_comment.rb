class TemplateComment < ApplicationRecord
  belongs_to :template
  belongs_to :user
end
