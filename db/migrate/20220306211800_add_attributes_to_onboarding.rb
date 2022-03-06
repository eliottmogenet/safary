class AddAttributesToOnboarding < ActiveRecord::Migration[6.0]
  def change
    add_column :onboardings, :batch_number, :integer
    add_column :onboardings, :deadline, :datetime
  end
end
