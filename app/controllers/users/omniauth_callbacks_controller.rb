class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  require 'open-uri'
  skip_before_action :verify_authenticity_token

  def sign_in_with(provider_name)
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user, :event => :authentication
    set_flash_message(:notice, :success, :kind => provider_name) if is_navigational_format?
  end

  def discord
    sign_in_with "discord"
  end

  def developer
    sign_in_with "developer"
  end
end
