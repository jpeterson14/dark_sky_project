class Review < ApplicationRecord
  belongs_to :visitor
  belongs_to :dark_sky_park
end
