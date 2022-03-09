class AddAttributeToTokenNft < ActiveRecord::Migration[6.0]
  def change
    add_column :nft_holders, :user_count, :integer
    add_column :token_holders, :user_count, :integer
    add_column :nft_holders, :date, :datetime
    add_column :token_holders, :date, :datetime
    add_reference :nft_holders, :template
    add_reference :token_holders, :template
    add_column :nft_holders, :discord_members, :integer
    add_column :token_holders, :discord_members, :integer
  end
end
