class CreateTokenHolders < ActiveRecord::Migration[6.0]
  def change
    create_table :token_holders do |t|

      t.timestamps
    end
  end
end
