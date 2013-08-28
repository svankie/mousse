class DashboardController < ApplicationController
  skip_before_filter :authorize

  def index
    @thangs = Thang.order(:date)
  end

  def about; end
end
