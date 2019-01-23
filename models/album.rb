require_relative('../db/sql_runner.rb')
require('pry')

class Album

  attr_reader :id
  attr_accessor :title, :buying_cost, :price, :artist_id, :stock

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @buying_cost = options['buying_cost'].to_f
    @price = options['price'].to_f
    @artist_id = options['artist_id'].to_i
    @stock = options['stock'].to_i
    # if @stock == nil || @stock == 0
    #   @stock = 1
    # end
  end

  def check_db()
    albums = Album.select_1()
    albums2 = []
    for album in albums
      if (album.title == self.title &&
        album.buying_cost == self.buying_cost &&
        album.price == self.price &&
        album.artist_id == self.artist_id)
        albums2 << album
      end
    end
    if albums2.length == 1
        albums2[0].update_stock(self, albums2[0])
      elsif albums2 == []
        self.save
    end
  end


  def update_check()
    # binding.pry
    albums = Album.select_1()
    albums2 = []
      for album in albums
        if (album.title == @title &&
          album.buying_cost == @buying_cost &&
          album.price == @price &&
          album.artist_id == @artist_id)
          albums2 << album
        end
      end
      if albums2.length == 1
          # binding.pry
          albums2[0].update_stock(self, albums2[0])
          reduce_stock_to_0()
        else
          update()
      end
  end

  def update_stock(album1, album2)
    # binding.pry
    sql =
    "UPDATE albums
    SET stock = $1
    WHERE id = $2"
    values = [(album1.stock + album2.stock), @id]
    SqlRunner.run(sql, values)
  end

  def add_to_stock()
    sql =
    "UPDATE albums
    SET stock = stock + 1
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def save()
      sql =
      "INSERT INTO albums
      (title, buying_cost, price, artist_id, stock)
      VALUES
      ($1, $2, $3, $4, $5)
      RETURNING id"
      values = [@title, @buying_cost, @price, @artist_id, @stock]
      result = SqlRunner.run(sql, values)
      @id = result[0]['id'].to_i
  end

  def stock_status()
    if self.stock == 0
      return {
        'text' => "Out of stock",
        'class' => "out-of-stock"}
      elsif self.stock < 3
      return {
        'text' => "Low stock",
        'class' => "low-stock"}
      else
      return  {
        'text' => "In stock",
        'class' => "in-stock"}
    end
  end

  def self.select_1()
    sql =
    "SELECT * FROM albums
    ORDER BY title"
    result = SqlRunner.run(sql)
    result2 = result.map {|album| Album.new(album)}
    for album in result2
      album.buying_cost = album.buying_cost.to_f
      album.price = album.price.to_f
      album.artist_id = album.artist_id.to_i
    end
  end

  def self.select_2()
    sql =
    "SELECT * FROM albums
    ORDER BY title"
    result = SqlRunner.run(sql)
    result2 = result.map {|album| Album.new(album)}
    return result2
  end

  def self.delete_all()
    sql =
    "DELETE FROM albums"
    SqlRunner.run(sql)
  end

  def delete()
    sql =
    "DELETE FROM albums
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def reduce_stock()
    if self.stock > 0
      sql =
      "UPDATE albums
      SET stock = (stock - 1)
      WHERE id = $1"
      values = [@id]
      SqlRunner.run(sql, values)
    end
  end

  def reduce_stock_to_0()
    sql =
    "UPDATE albums
    SET stock = 0
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update()
    sql =
    "UPDATE albums
    SET (title, buying_cost, price)
    = ($1, $2, $3)
    WHERE id = $4"
    values = [@title, @buying_cost, @price, @id]
    SqlRunner.run(sql, values)
  end


  def artist()
    sql =
    "SELECT * FROM artists
    WHERE artists.id = $1"
    values = [@artist_id]
    result = SqlRunner.run(sql, values)
    return result.map {|artist| Artist.new(artist)}[0]
  end

  def self.find(id)
    sql =
    "SELECT * FROM albums
    WHERE id = $1"
    values = [id]
    album = SqlRunner.run(sql, values).first
    return Album.new(album)
  end

end
