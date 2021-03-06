class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  geocoded_by :address
  after_validation :geocode
  
  validates :name, length: { minimum: 5 }, presence: true
  validates :address, length: { minimum: 8 }, presence: true
  validates :description, length: { in: 25..140 }, presence: true
end
