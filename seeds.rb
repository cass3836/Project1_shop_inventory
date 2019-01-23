require('pry')
require_relative('models/artist.rb')
require_relative('models/album.rb')


Artist.delete_all()
Album.delete_all()

artist0 = Artist.new('name' => 'Various', 'genre' => 'Other')
artist0.save()

artist1 = Artist.new('name' => 'Paul Simon', 'genre' => 'Other')
artist1.save()

artist2 = Artist.new('name' => 'Cosmo Jarvis', 'genre' => 'Other')
artist2.save()

artist3 = Artist.new('name' => 'Fleetwood Mac', 'genre' => 'Other')
artist3.save()

artist4 = Artist.new('name' => 'Taylor Swift', 'genre' => 'Pop')
artist4.save()

artist5 = Artist.new('name' => 'Backstreet Boys', 'genre' => 'Pop')
artist5.save()

artist6 = Artist.new('name' => 'Bob Marley', 'genre' => 'Other')
artist6.save()

artist7 = Artist.new('name' => 'The Beach Boys', 'genre' => 'Other')
artist7.save()

artist8 = Artist.new('name' => 'Weird Al Yankovic', 'genre' => 'Other')
artist8.save()

artist9 = Artist.new('name' => 'Frank Sinatra', 'genre' => 'Jazz')
artist9.save()

artist10 = Artist.new('name' => 'Ella Fitzgerald', 'genre' => 'Jazz')
artist10.save()

artist11 = Artist.new('name' => 'Muse', 'genre' => 'Rock')
artist11.save()

artist12 = Artist.new('name' => 'The Rolling Stones', 'genre' => 'Rock')
artist12.save()

artist13 = Artist.new('name' => 'Abba', 'genre' => 'Pop')
artist13.save()

artist14 = Artist.new('name' => 'Porcupine Tree', 'genre' => 'Other')
artist14.save()

artist15 = Artist.new('name' => 'Maximum the Hormone', 'genre' => 'Rock')
artist15.save()

album1 = Album.new(
  'title' => 'Graceland',
  'buying_cost' => 7,
  'price' => 10,
  'artist_id' => artist1.id
)
album1.check_db()

album2 = Album.new(
  'title' => 'Rhythm of the Saints',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist1.id
)
album2.check_db()

album3 = Album.new(
  'title' => 'Think Bigger',
  'buying_cost' => 5,
  'price' => 6,
  'artist_id' => artist2.id
)
album3.check_db()

album4 = Album.new(
  'title' => 'Is the world strange?',
  'buying_cost' => 5,
  'price' => 6,
  'artist_id' => artist2.id
)
album4.check_db()

album5 = Album.new(
  'title' => 'Rumours',
  'buying_cost' => 5,
  'price' => 6,
  'artist_id' => artist3.id
)
album5.check_db()

album6 = Album.new(
  'title' => 'Tango in the Night',
  'buying_cost' => 7,
  'price' => 10,
  'artist_id' => artist3.id
)
album6.check_db()

album7 = Album.new(
  'title' => 'Behind the Mask',
  'buying_cost' => 7,
  'price' => 10,
  'artist_id' => artist3.id
)
album7.check_db()

album8 = Album.new(
  'title' => '1989',
  'buying_cost' => 5,
  'price' => 6,
  'artist_id' => artist4.id
)
album8.check_db()

album9 = Album.new(
  'title' => 'Reputation',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist4.id
)
album9.check_db()

album10 = Album.new(
  'title' => 'All right!',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist5.id
)
album10.check_db()

album11 = Album.new(
  'title' => 'Legend',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist6.id
)
album11.check_db()

album12 = Album.new(
  'title' => 'Pet Sounds',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist7.id
)
album12.check_db()

album13 = Album.new(
  'title' => 'Yaykovic',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist8.id
)
album13.check_db()

album14 = Album.new(
  'title' => 'Swing easy',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist9.id
)
album14.check_db()

album15 = Album.new(
  'title' => 'Fly me to the moon',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist9.id
)
album15.check_db()

album16 = Album.new(
  'title' => 'Gold',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist10.id
)
album16.check_db()

album17 = Album.new(
  'title' => 'Showbiz',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist11.id
)
album17.check_db()

binding.pry
nil
