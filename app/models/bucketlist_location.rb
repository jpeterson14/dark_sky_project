class BucketlistLocation < ApplicationRecord
  belongs_to :visitor
  belongs_to :dark_sky_park
  # has_many :dark_sky_parks
  # has_and_belongs_to_many :dark_sky_parks
  # has_many :locations, through: :dark_sky_parks
end
