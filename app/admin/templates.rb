ActiveAdmin.register Template do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :description, :user_id, :category, :url, :twitter_link, :discord_link, :website_link

  def name
    "#{user.pseudo} - #{title}"
  end
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :user_id, :category, :url, :twitter_link, :discord_link, :website_link]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
