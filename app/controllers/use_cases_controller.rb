class UseCasesController < ApplicationController

  def index
    @use_cases = UseCase.all
  end

  def show
    @use_cases = UseCase.all
    @use_case = UseCase.find(params[:id])
  end

end
