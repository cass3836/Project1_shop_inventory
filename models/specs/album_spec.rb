require('minitest/autorun')
require('minitest/rg')
require_relative('../album')

class AlbumTest < Minitest::Test

  def setup
    @album = Album.new(
        'title' => 'Graceland',
        'buying_cost' => 7,
        'price' => 10,
        'artist_id' => nil,
        'stock' => nil
      )
  end

  def test_album_has_title
    assert_equal("Graceland", @album.title)
  end

  def test_album_has_buying_cost
    assert_equal(7, @album.buying_cost)
  end

  def test_album_has_price
    assert_equal(10, @album.price)
  end

  def test_album_has_artist_id
    assert_equal(0, @album.artist_id)
  end

  def test_album_has_stock
    assert_equal(0, @album.stock)
  end

end
