class ExpeditionsController < ApplicationController

   def index
    @expeditions = Expedition.all
   end

   def show
    @expedition = Expedition.find(params[:id])
    @expedition_user = ExpeditionUser.where(:user_id => current_user.id, :expedition_id => @expedition.id)
   end

    def new
      @expedition = Expedition.new
    end

  def create
    @expedition = Expedition.new(expedition_params)
    @expedition.save!
  end


   def join
    @expedition = Expedition.find(params[:expedition_id])
    @expedition.users << current_user

    redirect_to expedition_path(@expedition)
   end

   def validate_section1
    @expedition = Expedition.find(params[:id])
    @expedition_user = ExpeditionUser.where(:user_id => current_user.id, :expedition_id => @expedition.id)
    @expedition_user.first.section1 = true
    @expedition_user.first.save!

    redirect_to expedition_path(@expedition)
   end

   def validate_section2
    @expedition = Expedition.find(params[:id])
    @expedition_user = ExpeditionUser.where(:user_id => current_user.id, :expedition_id => @expedition.id)
    @expedition_user.first.section2 = true

    redirect_to expedition_path(@expedition)
   end

   def validate_section3
    @expedition = Expedition.find(params[:id])
    @expedition_user = ExpeditionUser.where(:user_id => current_user.id, :expedition_id => @expedition.id)
    @expedition_user.first.section3 = true

    redirect_to expedition_path(@expedition)
   end

   def validate_section4
    @expedition = Expedition.find(params[:id])
    @expedition_user = ExpeditionUser.where(:user_id => current_user.id, :expedition_id => @expedition.id)
    @expedition_user.first.section4 = true

    redirect_to expedition_path(@expedition)
   end

   def validate_section5
    @expedition = Expedition.find(params[:id])
    @expedition_user = ExpeditionUser.where(:user_id => current_user.id, :expedition_id => @expedition.id)
    @expedition_user.first.section5 = true

    redirect_to expedition_path(@expedition)
   end

   def validate_section6
    @expedition = Expedition.find(params[:id])
    @expedition_user = ExpeditionUser.where(:user_id => current_user.id, :expedition_id => @expedition.id)
    @expedition_user.first.section6 = true

    redirect_to expedition_path(@expedition)
   end

   private

    def expedition_params
    params.require(:expedition).permit(:name, :available, :description)
  end




end
