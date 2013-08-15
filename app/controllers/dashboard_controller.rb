class DashboardController < ApplicationController
  skip_before_filter :authorize

  def index
    @thangs_by_date = Thang.all.group_by(&:date)
  end
end
