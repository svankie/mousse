class DashboardController < ApplicationController
  def index
    @things_by_date = Thang.all.group_by { |t| t.when }
  end
end
