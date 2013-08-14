class DashboardController < ApplicationController
  def index
    @thangs_by_date = Thang.all.group_by(&:when)
  end
end
