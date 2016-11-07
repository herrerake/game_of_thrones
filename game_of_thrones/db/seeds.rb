# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create(name: "Stark", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20160703180116", motto: "Winter is Coming", region: "The North")

lannister = House.create(name: "Lannister", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20151207184048", motto: "A Lanister Always Pays His Debts",
region: "King's Landing")

targaryen = House.create(name: "Targaryen", img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20151209185148", motto: "Fire and Blood",
region: "Bay of Dragons")

bolton = House.create(name: "Bolton", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/d/dd/House-Bolton-Main-Shield.PNG/revision/latest?cb=20160312000641", motto: "A Naked Man Has Few Secrets; A Flayed Man, None",
region: "The North")

stark.characters.create([
  {name: "Jon Snow", age: "21", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/4/49/Battle_of_the_Bastards_08.jpg/revision/latest?cb=20160615184845"},
  {name: "Sansa Stark", age: "20", img_url: "http://img10.deviantart.net/753a/i/2015/071/d/6/sansa_stark__render__by_devilmisao-d8lf3wd.png"},
  {name: "Arya Stark", age: "18", img_url: "http://pixel.nymag.com/imgs/daily/vulture/2013/05/08/08-maisie-williams.o.png/a_250x375.png"}
  ])

lannister.characters.create([
  {name: "Bronn", age: "38", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/b/be/Bronn_the_broken_man_s6.jpg/revision/latest?cb=20160629013344"}
  ])

targaryen.characters.create([
  {name: "Missandei", age: "22", img_url:"http://vignette1.wikia.nocookie.net/gameofthrones/images/d/d7/Game-of-thrones-season-6_ep5-missandei.jpg/revision/latest?cb=20160810064521"},
  {name: "Daenerys Targaryen", age: "21", img_url: "http://i.lv3.hbo.com/assets/images/series/game-of-thrones/character/s5/daenarys-1024.jpg"}
  ])

bolton.characters.create([
   {name: "Ramsay Bolton", age: "35", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/4/41/Ramsay-Bolton-Profile.png/revision/latest?cb=20140605115841"},
   {name: "Roose Bolton", age: "45", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/6/62/Roose_Bolton_Season5.png/revision/latest?cb=20150131122254"}
])
