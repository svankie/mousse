class ChangeDateToDateTime < ActiveRecord::Migration
  def up
    change_column :thangs, :date, :datetime
  end

  def down
    change_column :thangs, :date, :date
  end
end
