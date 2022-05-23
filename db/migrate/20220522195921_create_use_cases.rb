class CreateUseCases < ActiveRecord::Migration[6.0]
  def change
    create_table :use_cases do |t|

      t.timestamps
    end
  end
end
