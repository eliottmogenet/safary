ActiveAdmin.register User do

  #permit_params :accepted
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :pseudo, :provider, :uid, :accepted, :lion, :xp, :job_title, :onboarded, :demo
  #has_many :templates
  # or
  def name
    "#{pseudo}"
  end

  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :pseudo, :provider, :uid, :accepted, :lion, :xp, :job_title, :onboarded, :demo]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
