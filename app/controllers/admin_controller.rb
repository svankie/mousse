class AdminController < ApplicationController
  def index
    @time = Time.now
    @thangs = Thang.count
    @users = User.count
  end

	# oh man. this is a nasty, demonic PaaS-tied implementation (:rolleyes:) pay no attention.

	def archive
	  %x[rake archive_old_events]
	end

	def pageviews
		Notifier.send_pageviews_report
	end
end
