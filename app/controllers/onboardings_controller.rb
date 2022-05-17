class OnboardingsController < ApplicationController

  def index
    if params[:query].present?
      @projects = Project.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @projects = Project.all
    end
  end

  def founder
    current_user.user_category = "founder"
    current_user.save

    redirect_to onboardings_path
  end

  def web2
    current_user.user_category = "web2"
    current_user.save

    redirect_to onboarding2_path
  end

  def vc
    current_user.user_category = "vc"
    current_user.save

    redirect_to onboarding2_path
  end

  def add_project
    @project = Project.find(params[:project_id])
    current_user.projects << @project

    redirect_to onboarding2_path
  end
end
