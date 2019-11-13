# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.
Song.destroy_all

Song.create(name: "Gymnopédies", artist: "Erik Satie", date_uploaded: Date.today)

Song.create(name: "Prelude in C Major", artist: "J.S. Bach", date_uploaded: Date.today)

Song.create(name: "House of the Rising Sun (Piano Arrangment)", artist: "The Animals", date_uploaded: Date.today)
