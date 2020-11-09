class Visitor < ApplicationRecord
    has_many :bucketlist_locations, :dependent => :destroy
    has_many :dark_sky_parks, through: :bucketlist_locations
    has_many :reviews, :dependent => :destroy
    has_many :dark_sky_parks, through: :reviews
    has_many :comments, :dependent => :destroy
    has_many :dark_sky_parks, through: :comments
end
