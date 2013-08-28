class Thang < ActiveRecord::Base
	include FriendlyId

	friendly_id :what, use: :slugged

  validates :what, :place, :date, :description, presence: true
  validates :what, uniqueness: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.0 }
end
