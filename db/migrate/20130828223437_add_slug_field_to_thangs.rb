class AddSlugFieldToThangs < ActiveRecord::Migration
  def change
		add_column :thangs, :slug, :string
  end

	def down
	  remove_column :thangs, :slug
	end
end
