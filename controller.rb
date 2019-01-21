require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative( 'models/artist.rb' )
require_relative( 'models/album.rb' )
require_relative( 'models/artist.rb')

also_reload( 'models/*' )

get '/' do
  erb( :index )
end

get '/albums' do
  @albums = Album.select_2()
  (erb :"albums/index")
end

get '/artists' do
  @artists = Artist.select()
  (erb :"artists/index" )
end

post '/artists' do
  if (params['name'] != "") && (params['name'] != nil)
  artist = Artist.new(params)
  artist.save
  end
  redirect to ('/artists')
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  (erb :"artists/show")
end


post '/artists/:id' do
  album = Album.new(params)
  album.check_db
  redirect to ("/artists/#{params['id']}")
end

# get '/albums/:artist_id' do

#   artist = Artist.new(params[:id])
#   album = Album.new(params['artist_id'] == :artist_id)
#   @artist = album.artist
#   return @artist
#   (erb :"albums/artist_id")
# end
#
get '/albums/delete/:id' do
  album = Album.find(params[:id])
  album.delete()
  redirect to ("/albums")
end

get '/artists/albums/delete/:id' do
  album = Album.find(params[:id])
  album.delete()
  redirect to ("/artists/#{album.artist_id}")
end

get '/artists/delete/:id' do
  artist = Artist.find(params[:id])
  artist.delete()
  redirect to ("/artists")
end

get '/artists/edit/:id' do
  @artist = Artist.find(params[:id])
  (erb :"artists/edit")
end

put '/artists/:id' do
  @artist = Artist.new(params)
  @artist.update()
  redirect to '/artists'
end

get '/albums/edit/:id' do
  @album = Album.find(params[:id])
  (erb :"albums/edit")
end

put '/albums/:id' do
  @album = Album.new(params)
  @album.update()
  redirect to '/albums'
end

get '/artists/albums/edit/:id' do
  @album = Album.find(params[:id])
  (erb :"albums/edit")
end

put '/artists/albums/:id' do
  @album = Album.new(params)
  @album.update()
  redirect to '/artists/:id'
end
