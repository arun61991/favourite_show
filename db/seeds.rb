# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
arun = User.create(email: 'arun61991@gmail.com', password: 'arun9898')
simmy = User.create(email: 'simmy.arun@gmail.com', password: 'arun9898')


# GENRES
action = Genre.create(name: "Action")
adventure = Genre.create(name: "Adventure")
blockbuster = Genre.create(name: "Blockbuster")
historical = Genre.create(name: "Historical")
horror = Genre.create(name: "Horror")
award_winning = Genre.create(name: "Award-winning")

# CHANNELS
netflix = Channel.create(name: "Netflix")
prime_video = Channel.create(name: "Prime video")
xstream = Channel.create(name: "Xstream")
hotstar = Channel.create(name: "Hotstar")

# SHOWS
alive = Show.create( title: 'Alive', description: 'Alive horror Movie', day: 'Tue', time: '9:00 PM', current_season: 1 )
alive.genres << horror
alive.channel = xstream
alive.save

aquaman = Show.create( title: 'Aquaman', description: 'Aquaman the adventure blockbuster movie', day: 'Mon', time: '4:00 PM', current_season: 3 )
aquaman.genres << adventure
aquaman.channel = hotstar
aquaman.save

ottoman = Show.create( title: 'Ottoman', description: 'The Ottoman action historical movie', day: 'Fri', time: '4:00 PM', current_season: 7 )
ottoman.genres << action
ottoman.genres << historical
ottoman.channel = prime_video
ottoman.save

lost_in_space = Show.create( title: 'Lost in Space', description: 'the Lost in Space adventure Award-winning movie', day: 'Sun', time: '7:00 PM', current_season: 1 )
lost_in_space.genres << award_winning
lost_in_space.genres << adventure
lost_in_space.channel = netflix
lost_in_space.save

