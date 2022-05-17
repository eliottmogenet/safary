
class RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to onboarding1_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :pseudo, :photo,
                                   :password_confirmation, :accepted, :onboarded, :job_title, :xp, :lion, :demo)
  end
end
