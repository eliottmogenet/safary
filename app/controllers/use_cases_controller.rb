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

end
