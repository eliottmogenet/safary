class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @event = Event.last
  end

  def show
    @project = Project.find(params[:id])
    @guild = @project.users.first.guilds.first
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save!
  end

  private

  def project_params
    params.require(:project).permit(:name, :photo, :category)
  end

end
