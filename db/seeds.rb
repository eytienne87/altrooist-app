
puts "Destroying everything..."

Interest.destroy_all
Location.destroy_all
Organization.destroy_all
Category.destroy_all
User.destroy_all

puts "Seeding in progress..."

# ----------Users------------
user_1 = User.create!(
  {email: "a@a.a", password: "123456"}
)
user_2 = User.create!(
  {email: "b@b.b", password: "123456"}
)
user_3 = User.create!(
  {email: "c@c.c", password: "123456"}
)
user_4 = User.create!(
  {email: "d@d.d", password: "123456"}
)
user_5 = User.create!(
  {email: "e@e.e", password: "123456"}
)

# ----------Categories------------
animals = Category.create!(
  name: "Animal Welfare"
)
elderly = Category.create!(
  name: "Senior's Assistance"
)
mental_health = Category.create!(
  name: "Mental Health"
)
homelessness = Category.create!(
  name: "Homelessness"
)
education = Category.create!(
  name: "Education"
)
# ----------Locations------------

Location.create!(
  latitude: 45.5565024,
  longitude: -73.5534072,
  address: "4320 Pierre-de Coubertin Ave, Montreal, Quebec H1V 1A6",
  user: user_1,
  name: 'home'
)

Location.create!(
  latitude: 45.526123,
  longitude: -73.5972601,
  address: "5333 Casgrain Ave, Montreal, QC H2T 1X3",
  user: user_1,
  name: 'work'
)

Location.create!(
  latitude: 46.062820,
  longitude: -71.937220,
  address: "2 de la joie street, Victoriaville, QC G6P 4B2",
  user: user_2,
  name: 'home'
)

Location.create!(
  latitude: 45.706220,
  longitude: -73.630910,
  address: "3733 Rue Jarry E, Montréal, QC H1Z 2G1",
  user: user_2,
  name: 'work'
)

Location.create!(
  latitude: 46.584060,
  longitude: -72.713980,
  address: "1790 8th avenue, Shawinigan",
  user: user_3,
  name: 'home'
)

Location.create!(
  latitude: 45.505027,
  longitude: -73.554138,
  address: "45 Saint-paul street, Montreal",
  user: user_4,
  name: 'home'
)

# ----------Interests------------
interest1 = Interest.create!(
  category: animals,
  user: user_1
)
interest2 = Interest.create!(
  category: elderly,
  user: user_2
)
interest3 = Interest.create!(
  category: mental_health,
  user: user_3
)
interest4 = Interest.create!(
  category: homelessness,
  user: user_4
)
interest5 = Interest.create!(
  category: education,
  user: user_5
)

# ----------Organizations------------

Organization.create!(
  name: 'SPCA',
  email: 'cs@spca.ca',
  phone: '(514) 824-0013',
  photo_url: 'spca.jpg',
  description: "Founded in Montreal in 1869, the Society for the Prevention of Cruelty to Animals (now known simply as the Montreal SPCA) was the first animal-welfare organization in Canada.",
  address: "5215 Rue Jean-Talon O, Montréal, QC H4P 1X4",
  latitude: 45.495960,
  longitude: -73.652206,
  category: animals
)
Organization.create!(
  name: "Entraide Bénévole Métro (EBM)",
  email: 'cs@ebm.ca',
  phone: '(514) 721-5594',
  photo_url: 'ebm.png',
  description: "We are committed to providing physical and emotional support to seniors with temporary or permanent loss of autonomy. Our involvement assists clients in breaking their social isolation, maintaining their autonomy, and remaining in the community.",
  address: "1801 de Maisonneuve West,Montreal, Quebec H3H 1J9",
  latitude: 45.463850,
  longitude: -73.622600,
  category: elderly
)
Organization.create!(
  name: 'AQVA - Association Quebecoise De Voile Adaptee',
  email: 'cs@aqva.com',
  phone: '(514) 714-8825',
  photo_url: 'aqva.png',
  description: "Our mission is to enable people with mobility impairments, including very severe ones, to increase the quality of their life and to reintegrate in the community by means of sailing.",
  address: "2025 Rue Quesnel, Montréal, QC H3J 2K9",
  latitude: 45.488220,
  longitude: -73.574790,
  category: mental_health
)
Organization.create!(
  name: 'Benedict Labre House',
  email: 'cs@labrehouse.ca',
  phone: '(514) 864-7725',
  photo_url: 'lamaison.jpg',
  description: "The Benedict Labre House is a home that nourishes the body, mind and soul of people in need. It is a volunteer driven charity deeply rooted in the Montreal community since 1952. The House nurtures and empowers our guests through support programs based on the principles of respect and a sense of belonging.",
  address: "308 Rue Young, Montréal, QC H3C 2G2",
  latitude: 45.493900,
  longitude: -73.561030,
  category: homelessness
)
Organization.create!(
  name: "Mentorat à l'école",
  email: 'cs@mentorat.ca',
  phone: '(514) 549-8853',
  photo_url: 'mentorat.png',
  description: "Le programme de Mentorat à l’école propose aux filles et aux garçons de rencontrer une personne qui sert de modèle, un.eami.e à qui ils.elles peuvent parler et partager leurs expériences de vie.",
  address: "3155 Rue Hochelaga, Montréal, QC H1W 1G4",
  latitude: 45.542439,
  longitude: -73.554428,
  category: education
)

# ----------More organizations for pitch------------

Organization.create!(
  name: 'Sauvetage Animal Rescue',
  email: 'info@sar.quebec',
  phone: '514-773-3911',
  photo_url: 'SAR.jpg',
  description: "Sauvetage Animal Rescue's core mission is to help animals in need",
  address: "124 Maisonneuve Boulevard O, Montréal, QC H2X 0S1",
  latitude: 45.50972713094864,
  longitude: -73.5673830074095,
  category: animals
)
Organization.create!(
  name: "Helping Seniors",
  email: 'info@helpingsenior.ca',
  phone: '(514)209-5888',
  photo_url: 'helping.jpg',
  description: "Seeing that we are living longer, many of us, at some point, may be faced with helping or assisting our parents, an elderly friend or isolated neighbour. Whatever your question or situation, Helping Seniors is here to help.",
  address: "3155 Rue Hochelaga, Montréal, QC H1W 1G4",
  latitude: 45.5565024,
  longitude: -73.5000000,
  category: elderly
)

puts "Finished"
