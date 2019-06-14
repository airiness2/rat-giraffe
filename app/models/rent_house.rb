class RentHouse < ApplicationRecord
  has_many :stations, inverse_of: :rent_house, dependent: :destroy
  accepts_nested_attributes_for :stations
end
