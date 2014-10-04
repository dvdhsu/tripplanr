class City < ActiveRecord::Base
  geocoded_by :name
  after_validation :geocode
  has_many :attractions
end
