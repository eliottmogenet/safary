class CreateTwitterFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :twitter_followers do |t|

      t.timestamps
    end
  end
end
