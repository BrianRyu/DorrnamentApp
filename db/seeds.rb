# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Draft.destroy_all
Entry.destroy_all
Player.destroy_all
Team.destroy_all
Venue.destroy_all
Tournament.destroy_all 

mario = Player.create(name: 'Mario', gender: 'male', birth_date: "1981-09-13", start_date: "1991-09-13")
luigi = Player.create(name: 'Luigi', gender: 'male', birth_date: "1985-9-13", start_date: "1995-9-13")
princess_peach = Player.create(name: 'Princess Peach', gender: 'female', birth_date: "1985-11-13", start_date: "1999-12-13")
toad = Player.create(name: 'Toad', gender: 'female', birth_date: "1991-3-13", start_date: "2000-1-13")
yoshi = Player.create(name: 'Yoshi', gender: 'female', birth_date: "1983-8-13", start_date: "1997-4-27")
bowser = Player.create(name: 'Bowser', gender: 'male', birth_date: "1999-9-13", start_date: "2011-11-13")
princess_daisy = Player.create(name: 'Princess Daisy', gender: 'female', birth_date: "2003-9-13", start_date: "2010-9-13")
rosalina = Player.create(name: 'Rosalina', gender: 'female', birth_date: "0000-01-01", start_date: "2000-9-13")
donkey_kong = Player.create(name: 'Donkey Kong', gender: 'male', birth_date: "1982-10-13", start_date: "2005-9-13")
diddy_kong = Player.create(name: 'Diddy Kong', gender: 'male', birth_date: "1983-9-13", start_date: "2003-9-13")

brobro = Team.create(name: "BroBro")
princesses = Team.create(name: "Princesses")
dkong = Team.create(name: "DKong")
toadshi = Team.create(name: "ToadShi")
bolina = Team.create(name: "BoLina")

Draft.create(team: brobro, player: mario)
Draft.create(team: brobro, player: luigi)
Draft.create(team: princesses, player: princess_peach)
Draft.create(team: princesses, player: princess_daisy)
Draft.create(team: dkong, player: donkey_kong)
Draft.create(team: dkong, player: diddy_kong)
Draft.create(team: toadshi, player: toad)
Draft.create(team: toadshi, player: yoshi)
Draft.create(team: bolina, player: bowser)
Draft.create(team: bolina, player: rosalina)

bowsers_castle = Venue.create(name: "Bowser's Castle", location: "Bowser's Castle")
rainbow_road = Venue.create(name: "Rainbow Road", location: "Space")
beach = Venue.create(name: "Koopa Troopa Beach", location: "An Island Somewhere")
donut = Venue.create(name: "Donut Plains", location: "Kansas")
jungle = Venue.create(name: "DK Jungle Parkway", location: "Donkey Kong Island")


special = Tournament.create(name: "Special Cup", date: "2019-6-25", venue: bowsers_castle)
star = Tournament.create(name: "Star Cup", date: "2019-7-1", venue: rainbow_road)
leaf = Tournament.create(name: "Leaf Cup", date: "2019-7-30", venue: jungle)
banana = Tournament.create(name: "Banana Cup", date: "2019-7-15", venue: beach)
lightening = Tournament.create(name: "Lightening Cup", date: "2019-8-8", venue: donut)



Entry.create(team: brobro, tournament: special)
Entry.create(team: brobro, tournament: star)
Entry.create(team: brobro, tournament: leaf)
Entry.create(team: brobro, tournament: banana)
Entry.create(team: princesses, tournament: special)
Entry.create(team: princesses, tournament: star)
Entry.create(team: dkong, tournament: leaf)
Entry.create(team: dkong, tournament: banana)
Entry.create(team: toadshi, tournament: special)
Entry.create(team: toadshi, tournament: star)
Entry.create(team: bolina, tournament: leaf)
Entry.create(team: bolina, tournament: banana)