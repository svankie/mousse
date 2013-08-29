class Notifier < ActionMailer::Base
  default from: "airOnGString@gmail.com"

	def send_pageviews_report
	  @thangs = Thang.active.inject(Hash.new) do |res, thang|
			res[thang.what] = thang.pageviews
			res
		end
		mail(to: "svankie@gmail.com", subject: "Weekly pageview report from Recco").deliver
	end
end
