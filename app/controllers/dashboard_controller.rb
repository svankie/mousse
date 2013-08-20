class DashboardController < ApplicationController
  skip_before_filter :authorize

  def index
    @thangs = Thang.order("novelty_rating DESC")
  end

  def about; end
end
