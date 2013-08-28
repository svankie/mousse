class AddIndexToThangs < ActiveRecord::Migration
  def change
		add_index :thangs, :slug, unique: true
  end
end
