class Notifier < ActionMailer::Base
  default from: "airOnGString@gmail.com"

	def send_pageviews_report
		title_length = 15
	  @thangs = Thang.active.inject(Hash.new) do |res, thang|
			res[truncate(thang.what, length: title_length)] = thang.pageviews
			res
		end
		mail(to: "svankie@gmail.com", subject: "Weekly pageview report from Recco").deliver
	end
end
