# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nerd = Nerd.create!(email: 'test@mail.com', password: 'password')

link1 = Link.create!(url: 'https://www.imdb.com/title/tt0371724/', title: '42')
link2 = Link.create!(url: 'https://www.imdb.com/title/tt0487831/', title: 'Have you tried turning it off and on again?')
link3 = Link.create!(url: 'https://chucknorrisfacts.net/random-fact', title: 'chucknorrisfacts')

LinkLike.create!(nerd: nerd, link: link1)

