class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)

    if current_user.accepted?
      templates_path
    else
      onboardings_path
    end
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:pseudo, :photo, :accepted, :lion, :xp, :job_title, :onboarded, :demo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:pseudo, :photo, :accepted, :lion, :xp, :job_title, :onboarded, :demo])
  end

end
