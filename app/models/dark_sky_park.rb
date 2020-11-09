class DarkSkyPark < ApplicationRecord
    # belongs_to :bucketlist_location
    # belongs_to :location
    has_many :bucketlist_locations
    has_many :visitors, through: :bucketlist_locations
    has_many :reviews
    has_many :visitors, through: :reviews
    has_many :comments
    has_many :visitors, through: :comments

end
