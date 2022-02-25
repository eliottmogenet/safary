class AddDiscriminator < ActiveRecord::Migration[6.0]
  def change
    add_column :discord_users, :discriminator, :string
  end
end
