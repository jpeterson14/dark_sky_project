# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Visitor.destroy_all
DarkSkyPark.destroy_all
BucketlistLocation.destroy_all
Review.destroy_all
Comment.destroy_all


visitors = [
    {username: 'justine', password: 'secret'},
    {username: 'jake123', password: 'password'},
    {username: 'Leeloo', password: 'cat'},
    {username: 'Yokai', password: 'girlfriend'}
]
    
visitors.each {|visitor| Visitor.create!(visitor)}



dark_sky_parks = [
    {name: 'big bend', description: 'very beautiful park', img_url: 'data:image/jpeg;base64,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', city: 'San Antonio', state: 'Texas'}
    
]
dark_sky_parks.each {|park| DarkSkyPark.create!(park)}

bucketlist_locations = [
    {visitor: Visitor.first, dark_sky_park: DarkSkyPark.first}
]
bucketlist_locations.each {|bucket| BucketlistLocation.create!(bucket)}



reviews = [
    {visitor: Visitor.first, dark_sky_park: DarkSkyPark.first, comment: '10/10 would recommend'}
]

reviews.each {|review| Review.create!(review)}

comments = [
    {post: "Hey is this place safe at night?", visitor: Visitor.second, dark_sky_park:DarkSkyPark.first}
]

comments.each {|comment| Comment.create!(comment)}
    


