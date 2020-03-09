# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all
puts "#{Artwork.count} artworks destroyed"

Artwork.create(
  title: 'oeuvre 1'
)
Artwork.create(
  title: 'oeuvre 2'
)
Artwork.create(
  title: 'oeuvre 3'
)
Artwork.create(
  title: 'oeuvre 4'
)
Artwork.create(
  title: 'oeuvre 5'
)
Artwork.create(
  title: 'oeuvre 6'
)
puts "#{Artwork.count} artworks created"
