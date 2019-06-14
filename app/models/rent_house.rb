class RentHouse < ApplicationRecord
  has_many :stations, inverse_of: :rent_house, dependent: :destroy
  accepts_nested_attributes_for :stations

  validates :rent_name, presence: true
  validates :charge, presence: true, length: { maximum: 10 }
  validates :address, presence: true
  validates :age, presence: true, length: {maximum: 5}

end
