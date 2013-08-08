class Thang < ActiveRecord::Base
  validates :what, :where, :when, :description, presence: true
end
