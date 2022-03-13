class Onboarding < ApplicationRecord

  def index
    @deadline = Onboarding.first.deadline
  end
end
