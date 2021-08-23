# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = JSON.parse(File.read("data/movies.json"))

for row in data
  director = Director.find_or_create_by(name: row["director"]["name"])

  movie = Movie.create(
    :imdb_id => row["imdb_id"],
    :title => row["title"],
    :year => row["year"],
    :image_url => row["image_url"],
    :imdb_rating => row["imdb_rating"],
    :imdb_rating_count => row["imdb_rating_count"],
    :director => director,
  )
  movie.save()
end