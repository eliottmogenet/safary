class CreateAudiences < ActiveRecord::Migration[6.0]
  def change
    create_table :audiences do |t|

      t.timestamps
    end
  end
end
