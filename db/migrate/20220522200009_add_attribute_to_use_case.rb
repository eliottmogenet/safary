class AddAttributeToUseCase < ActiveRecord::Migration[6.0]
  def change
    add_column :use_cases, :name, :string
  end
end
