class Machine < ApplicationRecord
  has_many :maintenance_locations
  validates :name, presence: true
  validates :name, uniqueness: true
end
