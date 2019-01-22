require_relative('../db/sql_runner.rb')

class Artist

  attr_reader :id
  attr_accessor :name, :genre

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @genre = options['genre']
  end

  # def to_str()
  #   return "#{@name}"
  # end

  def save()
    sql =
    "INSERT INTO artists
    (name, genre)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@name, @genre]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.delete_all()
    sql =
    "DELETE FROM artists"
    SqlRunner.run(sql)
  end

  def delete()
    sql =
    "DELETE FROM artists
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.select()
    sql =
    "SELECT * FROM artists"
    result = SqlRunner.run(sql)
    return result.map {|artist| Artist.new(artist)}
  end

  def update()
    sql =
    "UPDATE artists
    SET (name, genre)
    = ($1, $2)
    WHERE id = $3"
    values = [@name, @genre, @id]
    SqlRunner.run(sql, values)
  end

  def albums()
    sql =
    "SELECT * FROM albums
    WHERE albums.artist_id = $1"
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map {|album| Album.new(album)}
  end

  def self.find(id)
    sql =
    "SELECT * FROM artists
    WHERE id = $1"
    values = [id]
    artist = SqlRunner.run(sql, values).first
    return Artist.new(artist)
  end

end
