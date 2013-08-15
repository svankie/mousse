class AdminController < ApplicationController
  def index
    @time = Time.now
    @thangs = Thang.count
    @users = User.count
  end
end
