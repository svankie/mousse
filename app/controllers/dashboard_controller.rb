class DashboardController < ApplicationController
  skip_before_filter :authorize

  def index
    @thangs = Thang.order("date DESC")
  end

  def about; end
end
