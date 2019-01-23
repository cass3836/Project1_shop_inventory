require('minitest/autorun')
require('minitest/rg')
require_relative('../artist')

class ArtistTest < Minitest::Test

  def setup
    @artist = Artist.new(
        'name' => 'Paul Simon',
        'genre' => 'Other'
      )
  end

  def test_artist_has_name
    assert_equal("Paul Simon", @artist.name)
  end

  def test_artist_has_genre
    assert_equal("Other", @artist.genre)
  end

end
