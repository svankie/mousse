class CreateThangs < ActiveRecord::Migration
  def change
    create_table :thangs do |t|
      t.string :what
      t.string :where
      t.datetime :when
      t.decimal :amount
      t.decimal :novelty_rating
      t.text :description
      t.string :flyer

      t.timestamps
    end
  end
end
