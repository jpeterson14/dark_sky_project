class BucketlistLocation < ApplicationRecord
  belongs_to :visitor
  belongs_to :dark_sky_park
  validates :dark_sky_park_id, uniqueness:{scope: :visitor_id}
  # has_many :dark_sky_parks
  # has_and_belongs_to_many :dark_sky_parks
  # has_many :locations, through: :dark_sky_parks
end
