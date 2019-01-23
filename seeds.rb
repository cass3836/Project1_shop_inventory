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

artist16 = Artist.new('name' => 'The Proclaimers', 'genre' => 'Other')
artist16.save()

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

album18 = Album.new(
  'title' => 'Absolution',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist11.id
)
album18.check_db()

album19 = Album.new(
  'title' => 'Origin of Symmetry',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist11.id
)
album19.check_db()

album20 = Album.new(
  'title' => 'Black holes and revelations',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist11.id
)
album20.check_db()

album21 = Album.new(
  'title' => '40 licks',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist12.id
)
album21.check_db()

album22 = Album.new(
  'title' => 'Gold',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist13.id
)
album22.check_db()

album23 = Album.new(
  'title' => 'Waterloo',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist13.id
)
album23.check_db()

album24 = Album.new(
  'title' => 'In absentia',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist14.id
)
album24.check_db()

album25 = Album.new(
  'title' => 'Dead wing',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist14.id
)
album25.check_db()

album26 = Album.new(
  'title' => 'Bu-ikkesu',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist15.id
)
album26.check_db()

album27 = Album.new(
  'title' => 'You make me feel so young',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist9.id
)
album27.check_db()

album28 = Album.new(
  'title' => "Now! That's what I call coding",
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist0.id
)
album28.check_db()

album29 = Album.new(
  'title' => 'CodeClan',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist0.id
)
album29.check_db()

album30 = Album.new(
  'title' => 'Disney Hits',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist0.id
)
album30.check_db()

album31 = Album.new(
  'title' => '5000 miles (500 miles 10 times over)',
  'buying_cost' => 4,
  'price' => 8,
  'artist_id' => artist16.id
)
album31.check_db()

binding.pry
nil
