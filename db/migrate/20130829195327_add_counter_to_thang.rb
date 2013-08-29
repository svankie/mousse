class AddCounterToThang < ActiveRecord::Migration
  def change
		add_column :thangs, :pageviews, :integer, :default => 0
  end

	def down
		remove_column :thangs, :pageviews
	end
end
