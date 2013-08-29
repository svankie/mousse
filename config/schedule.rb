every 14.days, :at => "6:00 am" do
	rake "recco:archive_old_events"
end
