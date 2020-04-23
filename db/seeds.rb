# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "user destroyed"

Artwork.destroy_all
puts "artworks destroyed"

User.create(
  email: 'onizuka@gmail.com',
  password: 'password'
)


Artwork.create(
  title: 'oeuvre 1',
  description: 'rien 100 rien'
)
Artwork.create(
  title: 'oeuvre 2',
  description: "inspi d'ailleurs"
)
Artwork.create(
  title: 'oeuvre 3',
  description: 'La tête dans les nuages'
)
Artwork.create(
  title: 'oeuvre 4',
  description: 'Album Gratuit Vol. 4'
)
Artwork.create(
  title: 'oeuvre 5',
  description: 'Je ne me vois pas briller'
)
Artwork.create(
  title: 'oeuvre 6',
  description: "L'Ovni"
)
Artwork.create(
  title: 'oeuvre 7',
  description: 'Émotions'
)
Artwork.create(
  title: 'oeuvre 8',
  description: 'My World'
)
Artwork.create(
  title: 'oeuvre 9',
  description: 'Je tourne en rond'
)
Artwork.create(
  title: 'oeuvre 10',
  description: 'Je trouve pas le sommeil'
)
Artwork.create(
  title: 'oeuvre 11',
  description: 'Lacrizeomic'
)
Artwork.create(
  title: 'oeuvre 12',
  description: 'Dans ma paranoïa'
)
puts "#{Artwork.count} artworks created"
