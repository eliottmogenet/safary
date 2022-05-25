class UseCasesController < ApplicationController

  def index
    @guilds = Guild.all
    @use_cases = UseCase.all
  end

  def show
    @guilds = Guild.all
    @use_cases = UseCase.all
    @use_case = UseCase.find(params[:id])
  end

  def audiences
    @guilds = Guild.all
    @use_cases = UseCase.all
  end

  def new
    @use_case = UseCase.new
  end

  def create
    @use_case = UseCase.new(use_case_params)
    @use_case.save!
  end

  private

  def use_case_params
    params.require(:use_case).permit(:name, :description, :user_numbers)
  end

end
