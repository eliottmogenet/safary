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
end
