# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
Draft.destroy_all
Entry.destroy_all
Player.destroy_all
Team.destroy_all
Venue.destroy_all
Tournament.destroy_all

mario = Player.create!(name: 'Mario', gender: 'male', birth_date: "1981-09-13", start_date: "1991-09-13", email: '1@1', password: 'pw', img_url: 'http://www.designbolts.com/wp-content/uploads/2014/08/super-marios-head-shot-illustrator-tutorial.jpg')
luigi = Player.create!(name: 'Luigi', gender: 'male', birth_date: "1986-9-13", start_date: "1995-9-13", email: '2@2', password: 'pw', img_url: 'https://www.bing.com/th?id=OIP.7OPlfJlTv6XDctCqFkWJ3AHaHx&pid=Api&dpr=2&rs=1&p=0')
princess_peach = Player.create!(name: 'Princess Peach', gender: 'female', birth_date: "1985-11-13", email: '3@2', start_date: "1999-12-13", password: 'pw', img_url: 'https://pbs.twimg.com/media/CrTcwwZUIAI-ATe.jpg')
toad = Player.create!(name: 'Toad', gender: 'female', birth_date: "1991-3-13", start_date: "2000-1-13", email: '4@4', password: 'pw', img_url: 'https://cdn.vox-cdn.com/thumbor/LCI5YbI8_NcZeihfRXzy6atDWs0=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/9800393/super_mario_run_gets_free_toad_dlc_urgu.jpg')
yoshi = Player.create!(name: 'Yoshi', gender: 'female', birth_date: "1983-8-13", start_date: "1997-4-27", email: '5@5', password: 'pw', img_url: 'https://pbs.twimg.com/profile_images/449130100064145410/PNOqhoWA.png')
bowser = Player.create!(name: 'Bowser', gender: 'male', birth_date: "1999-9-13", start_date: "2011-11-13", email: '6@6', password: 'pw', img_url: 'http://shortyawards.com.s3.amazonaws.com/entries/8d6ead05-5ef7-45e8-8b68-66d769e84c9b.jpg')
princess_daisy = Player.create!(name: 'Princess Daisy', gender: 'female', birth_date: "2003-9-13", start_date: "2010-9-13", email: '7@7', password: 'pw', img_url: 'https://s-media-cache-ak0.pinimg.com/originals/1f/54/f1/1f54f1fd7d1c5ce442c52ce3fa7d7317.jpg')
rosalina = Player.create!(name: 'Rosalina', gender: 'female', birth_date: "0000-01-01", start_date: "2000-9-13", email: '8@8', password: 'pw', img_url: 'http://i3.kym-cdn.com/photos/images/facebook/001/167/189/282.jpg')
donkey_kong = Player.create!(name: 'Donkey Kong', gender: 'male', birth_date: "1982-10-13", start_date: "2005-9-13", email: '9@9', password: 'pw', img_url: 'http://files.gamebanana.com/img/ico/sprays/54f2862be0933.png')
diddy_kong = Player.create!(name: 'Diddy Kong', gender: 'male', birth_date: "1983-9-13", start_date: "2003-9-13", email: '10@10', password: 'pw', img_url: 'http://rs103.pbsrc.com/albums/m136/MER255/Donkey%20Kong/Diddy-Kong_zps77f7f7e1.gif~c200')

brian = Player.create!(name: 'Brian Ryu', gender: 'male', birth_date: "1993-07-02", start_date: "2003-9-13", email: 'brian@gmail.com', password: '1', img_url: 'https://vignette.wikia.nocookie.net/streetfighter/images/4/46/Ryurender.png/revision/latest?cb=20170728171704')
james = Player.create!(name: 'James Dorr', gender: 'male', birth_date: "1991-03-24", start_date: "1999-9-1", email: 'jamesdorr3@gmail.com', password: '1', img_url: 'https://scontent-lga3-1.cdninstagram.com/vp/1bc32dd05112820de3ee64c28466aa8b/5D43C6AB/t51.2885-15/e35/16230873_954153831350857_259230503566049280_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com')


brobro = Team.create!(name: "BroBro")
princesses = Team.create!(name: "Princesses")
dkong = Team.create!(name: "DKong")
toadshi = Team.create!(name: "ToadShi")
bolina = Team.create!(name: "BoLina")

Draft.create!(team: brobro, player: mario)
Draft.create!(team: brobro, player: luigi)
Draft.create!(team: princesses, player: princess_peach)
Draft.create!(team: princesses, player: princess_daisy)
Draft.create!(team: dkong, player: donkey_kong)
Draft.create!(team: dkong, player: diddy_kong)
Draft.create!(team: toadshi, player: toad)
Draft.create!(team: toadshi, player: yoshi)
Draft.create!(team: bolina, player: bowser)
Draft.create!(team: bolina, player: rosalina)

bowsers_castle = Venue.create!(name: "Bowser's Castle", location: "Hell", img_url: "https://images.ecosia.org/wpa_uMWnDP5uqT4C_PEblcnv7So=/0x390/smart/http%3A%2F%2Fstatic.giantbomb.com%2Fuploads%2Foriginal%2F8%2F83448%2F2113776-bowser_s_castle__mario_kart_7_.png")
rainbow_road = Venue.create!(name: "Rainbow Road", location: "Space", img_url: "https://images.ecosia.org/XRJTodSxJhQAtCVaqmfMYAjp97c=/0x390/smart/http%3A%2F%2Fi1.ytimg.com%2Fvi%2F1umKGrEW_U8%2Fmaxresdefault.jpg")
beach = Venue.create!(name: "Koopa Troopa Beach", location: "An Island Somewhere", img_url: "https://images.ecosia.org/NZE_J78QzkplzcWx2yXZq5aCKJs=/0x390/smart/http%3A%2F%2Fwww.rantlifestyle.com%2Fwp-content%2Fuploads%2F2014%2F01%2FKoopaTroopaBeachMK7.png")
donut = Venue.create!(name: "Donut Plains", location: "Kansas", img_url: "https://images.ecosia.org/oST8mzqiVAFLWlEP6tj2z0y_1q4=/0x390/smart/https%3A%2F%2Fi.ytimg.com%2Fvi%2FYCkqBStTcZ0%2Fmaxresdefault.jpg")
jungle = Venue.create!(name: "DK Jungle Parkway", location: "91 Prospect, Brooklyn, NY", img_url: "https://images.ecosia.org/hxB65WO20ZpL4AL6dt71XER16f0=/0x390/smart/http%3A%2F%2Fvignette4.wikia.nocookie.net%2Fmariokart%2Fimages%2Fb%2Fb0%2FDK%2527s_jungle_parkway_.png%2Frevision%2Flatest%3Fcb%3D20130823235602")


special = Tournament.create!(name: "Special Cup", date: "2019-6-25", venue: bowsers_castle)
star = Tournament.create!(name: "Star Cup", date: "2019-7-1", venue: rainbow_road)
leaf = Tournament.create!(name: "Leaf Cup", date: "2019-7-30", venue: jungle)
banana = Tournament.create!(name: "Banana Cup", date: "2019-7-15", venue: beach)
lightening = Tournament.create!(name: "Lightening Cup", date: "2019-8-8", venue: donut)



Entry.create!(team: brobro, tournament: special)
Entry.create!(team: brobro, tournament: star)
Entry.create!(team: brobro, tournament: leaf)
Entry.create!(team: brobro, tournament: banana)
Entry.create!(team: princesses, tournament: special)
Entry.create!(team: princesses, tournament: star)
Entry.create!(team: dkong, tournament: leaf)
Entry.create!(team: dkong, tournament: banana)
Entry.create!(team: toadshi, tournament: special)
Entry.create!(team: toadshi, tournament: star)
Entry.create!(team: bolina, tournament: leaf)
Entry.create!(team: bolina, tournament: banana)
