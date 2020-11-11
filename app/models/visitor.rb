class Visitor < ApplicationRecord
    has_secure_password

    has_many :bucketlist_locations, :dependent => :destroy
    has_many :dark_sky_parks, through: :bucketlist_locations
    has_many :reviews, :dependent => :destroy
    has_many :rev_parks, through: :reviews, source: :dark_sky_park
    has_many :comments, :dependent => :destroy
    has_many :com_parks, through: :comments, source: :dark_sky_park
end 