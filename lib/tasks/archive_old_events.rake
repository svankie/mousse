namespace :recco do
	desc "Archive two-week old events."
	task :archive_old_events => :environment do
	  Rails.logger.info "[archive_old_events] Hällo. Archiving..."
	  Thang.where("date < ?", 14.days.ago).each do |thang|
			thang.archived = true
			thang.save!
		end
		Rails.logger.info "[archive_old_events] Tschüs!"
	end
end
