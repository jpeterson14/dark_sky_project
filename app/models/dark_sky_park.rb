class DarkSkyPark < ApplicationRecord
    # belongs_to :bucketlist_location
    # belongs_to :location
    has_many :bucketlist_locations
    has_many :visitors, through: :bucketlist_locations
    has_many :reviews
    has_many :rev_visitors, through: :reviews, source: :visitor
    has_many :comments
    has_many :com_visitors, through: :comments, source: :visitor

end
