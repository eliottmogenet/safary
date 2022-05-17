class DashboardsController < ApplicationController

  def index
    @guild = current_user.guilds.first

    if current_user.guilds.present?
          @data = @guild.guild_users.group_by_week(:join_at).count
          accumulator = 0
          @data.transform_values! do |val|
          val += accumulator
          accumulator = val
          end

          @data_month = @guild.guild_users.group_by_month(:join_at).count
          accumulator = 0
          @data_month.transform_values! do |val|
          val += accumulator
          accumulator = val
          end
    end
  end

  def show
      @guild = current_user.guilds.first

      @count = @guild.guild_users.count

    if current_user.guilds.present?
          @data = @guild.guild_users.group_by_week(:join_at).count
          accumulator = 0
          @data.transform_values! do |val|
          val += accumulator
          accumulator = val
          end

          @data_month = @guild.guild_users.group_by_month(:join_at).count
          accumulator = 0
          @data_month.transform_values! do |val|
          val += accumulator
          accumulator = val
          end
    end

    @dashboards = current_user.dashboards
    @project = current_user.projects.first
    @dashboard = Dashboard.find(params[:id])
  end

  def new
    @dashboard = Dashboard.new
  end


  def create
    @dashboard = Dashboard.new(params[:dashboard_id])
    if current_user.projects.nil?
    else
     @dashboard.project = current_user.projects.first
    end
    @dashboard.name = "New dashboard"
    @dashboard.users << current_user
    @dashboard.save!

    redirect_to dashboard_path(@dashboard)
  end


  def refresh
    @dashboard = Dashboard.find(params[:id])
    @guild = Guild.order("created_at").last
    @guild.user = current_user
    @guild.save!

    redirect_to dashboard_path(@dashboard)
  end




  def dashboards3
    @guild = current_user.guilds.first

    if current_user.guilds.present?
          @data = @guild.guild_users.group_by_week(:join_at).count
          accumulator = 0
          @data.transform_values! do |val|
          val += accumulator
          accumulator = val
          end

          @data_month = @guild.guild_users.group_by_month(:join_at).count
          accumulator = 0
          @data_month.transform_values! do |val|
          val += accumulator
          accumulator = val
          end
    end
  end


  def dashboards4
    @guild = current_user.guilds.first

    if current_user.guilds.present?
          @data = @guild.guild_users.group_by_week(:join_at).count
          accumulator = 0
          @data.transform_values! do |val|
          val += accumulator
          accumulator = val
          end

          @data_month = @guild.guild_users.group_by_month(:join_at).count
          accumulator = 0
          @data_month.transform_values! do |val|
          val += accumulator
          accumulator = val
          end
    end
  end


  def onboarded
    @user = current_user
    @user.onboarded = true
    @user.save!

    redirect_to "https://discord.gg/QswdsDZYsD"
  end

  private

  def dashboard_params
    params.require(:dashboard).permit(:name)
  end
end
