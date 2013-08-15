class ChangeWhenToDate < ActiveRecord::Migration
  def change
    rename_column :thangs, :when, :date
  end
end
