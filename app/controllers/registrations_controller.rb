
class RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :pseudo, :photo,
                                   :password_confirmation, :accepted, :onboarded, :job_title, :xp, :lion, :demo)
  end
end
