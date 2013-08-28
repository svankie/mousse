class AddArchivedFieldToThangs < ActiveRecord::Migration
  def change
	  add_column :thangs, :archived, :boolean
  end

	def down
	  remove_column :thangs, :archived
	end
end
