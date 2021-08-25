puts "Destroying everything..."

Interest.destroy_all
Location.destroy_all
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
  category: youth_and_education,
  user: user_5
)
