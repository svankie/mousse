class ChangeWhereToPlace < ActiveRecord::Migration
  def change
    rename_column :thangs, :where, :place
  end
end
