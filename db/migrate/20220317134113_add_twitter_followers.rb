class AddTwitterFollowers < ActiveRecord::Migration[6.0]
  def change
     add_column :twitter_followers, :user_count, :integer
     add_column :twitter_followers, :date, :datetime
     add_reference :twitter_followers, :template
     add_column :templates, :twitter_link, :string
     add_column :templates, :discord_link, :string
     add_column :templates, :website_link, :string
     add_column :users, :demo, :boolean, default: false
  end
end
