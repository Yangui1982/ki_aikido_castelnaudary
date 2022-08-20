# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Nouvelle.destroy_all
User.destroy_all

user = User.create!(
  email: 'admin@admin.com',
  password: 'azerty'
)

Nouvelle.create!(
  comment: "Ouverture en septembre du Dojo de Ki Aïkido à Castelnaudary.
            Les cours débuteront à 19h30 et dureront jusqu'à 21h30.
            Les deux premiers cours sont gratuits.",
  user: user
)
