class AddDescriptionToUseCase < ActiveRecord::Migration[6.0]
  def change
    add_column :use_cases, :description, :text
    add_column :use_cases, :user_numbers, :integer
  end
end
