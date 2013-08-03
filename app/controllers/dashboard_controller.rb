class DashboardController < ApplicationController
  def index
    @thangs = Thang.all
  end
end
