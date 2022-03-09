class CreateNftHolders < ActiveRecord::Migration[6.0]
  def change
    create_table :nft_holders do |t|

      t.timestamps
    end
  end
end
