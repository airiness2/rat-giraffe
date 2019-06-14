class RentHouse < ApplicationRecord
  has_many :stations, inverse_of: :rent_house
  accepts_nested_attributes_for :stations
end
