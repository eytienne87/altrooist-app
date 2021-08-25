
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
  name: "Animals"
)
elderly = Category.create!(
  name: "Elderly"
)
mental_health = Category.create!(
  name: "Mental Health"
)
homelessness = Category.create!(
  name: "Homelessness"
)
education = Category.create!(
  name: "Youth and Education"
)
# ----------Locations------------

location1 = Location.create!(
  latitude: 45.55787658691406,
  longitude: -73.5516357421875,
  address: "4545 Pierre-de Coubertin avenue, Montreal",
  user: user_1
)
location2 = Location.create!(
  latitude: 46.062820,
  longitude: -71.937220,
  address: "2 de la joie street, Victoriaville",
  user: user_2
)
location3 = Location.create!(
  latitude: 45.706220,
  longitude: -73.630910,
  address: "1123 belcourt street, Terrebonne",
  user: user_3
)
location4 = Location.create!(
  latitude: 46.584060,
  longitude: -72.713980,
  address: "1790 8th avenue, Shawinigan",
  user: user_4
)
location5 = Location.create!(
  latitude: 45.505027,
  longitude: -73.554138,
  address: "45 Saint-paul street, Montreal",
  user: user_5
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
  phone: '15148240013',
  photo_url: '/app/assets/images/spca.jpg',
  description: "Founded in Montreal in 1869, the Society for the Prevention of Cruelty to Animals (now known simply as the Montreal SPCA) was the first animal-welfare organization in Canada.",
  address: "5215 Rue Jean-Talon O, Montréal, QC H4P 1X4",
  latitude: 45.495960,
  longitude: -73.652206,
  category: animals
)
Organization.create!(
  name: "Entraide Bénévole Métro (EBM)",
  description: "We are committed to providing physical and emotional support to seniors with temporary or permanent loss of autonomy. Our involvement assists clients in breaking their social isolation, maintaining their autonomy, and remaining in the community.",
  address: "1801 de Maisonneuve West,Montreal, Quebec H3H 1J9",
  latitude: 45.463850,
  longitude: -73.622600,
  category: elderly
)
Organization.create!(
  name: 'AQVA - Association Quebecoise De Voile Adaptee',
  description: "Our mission is to enable people with mobility impairments, including very severe ones, to increase the quality of their life and to reintegrate in the community by means of sailing.",
  address: "2025 Rue Quesnel, Montréal, QC H3J 2K9",
  latitude: 45.488220,
  longitude: -73.574790,
  category: mental_health
)
Organization.create!(
  name: 'Benedict Labre House',
  description: "The Benedict Labre House is a home that nourishes the body, mind and soul of people in need. It is a volunteer driven charity deeply rooted in the Montreal community since 1952. The House nurtures and empowers our guests through support programs based on the principles of respect and a sense of belonging.",
  address: "308 Rue Young, Montréal, QC H3C 2G2",
  latitude: 45.493900,
  longitude: -73.561030,
  category: homelessness
)
Organization.create!(
  name: "Mentorat à l'école",
  description: "Le programme de Mentorat à l’école propose aux filles et aux garçons de rencontrer une personne qui sert de modèle, un.eami.e à qui ils.elles peuvent parler et partager leurs expériences de vie.",
  address: "3155 Rue Hochelaga, Montréal, QC H1W 1G4",
  latitude: 45.542439,
  longitude: -73.554428,
  category: education
)
