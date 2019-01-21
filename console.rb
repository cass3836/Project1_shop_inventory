require('pry')
require_relative('models/artist.rb')
require_relative('models/album.rb')


Artist.delete_all()
Album.delete_all()

artist1 = Artist.new('name' => 'Paul Simon')
artist1.save()

artist2 = Artist.new('name' => 'Cosmo Jarvis')
artist2.save()

artist3 = Artist.new('name' => 'Fleetwood Mac')
artist3.save()



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
  'title' => 'Think Bigger',
  'buying_cost' => 5,
  'price' => 6,
  'artist_id' => artist2.id
)
album4.check_db()

album5 = Album.new(
  'title' => 'Think Bigger',
  'buying_cost' => 5,
  'price' => 6,
  'artist_id' => artist2.id
)
album5.check_db()

album6 = Album.new(
  'title' => 'Graceland',
  'buying_cost' => 7,
  'price' => 10,
  'artist_id' => artist1.id
)
album6.check_db()

album7 = Album.new(
  'title' => 'Graceland',
  'buying_cost' => 7,
  'price' => 10,
  'artist_id' => artist1.id
)
# album7.check_db()
album8 = Album.new(
  'title' => 'Think',
  'buying_cost' => 5,
  'price' => 6,
  'artist_id' => artist2.id
)




binding.pry
nil
