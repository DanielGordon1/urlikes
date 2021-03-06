puts 'Emptying DB..'
Nerd.destroy_all
Link.destroy_all
LinkLike.destroy_all

puts 'Creating nerds'
nerd1 = Nerd.create!(email: 'test@mail.com', password: 'password')
nerd2 = Nerd.create!(email: 'test1@mail.com', password: 'password')

puts 'Creating links'
link1 = Link.create!(url: 'https://www.imdb.com/title/tt0371724', title: '42', nerd: nerd1)
link2 = Link.create!(url: 'https://www.imdb.com/title/tt0487831', title: 'Have you tried turning it off and on again?', nerd: nerd1)
link3 = Link.create!(url: 'https://chucknorrisfacts.net/random-fact', title: 'chucknorrisfacts', nerd: nerd2)
link4 = Link.create!(url: 'https://nl.ign.com/', title: 'IGN Benelux - game tings', created_at: Date.today - 1, nerd: nerd2)

puts 'Creating likes'
LinkLike.create!(nerd: nerd1, link: link1)
LinkLike.create!(nerd: nerd1, link: link2)
LinkLike.create!(nerd: nerd2, link: link1)
LinkLike.create!(nerd: nerd2, link: link3)
LinkLike.create!(nerd: nerd2, link: link4)


