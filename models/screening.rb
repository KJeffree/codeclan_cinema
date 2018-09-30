require_relative("../db/sql_runner.rb")

class Screening

  attr_reader :film_id, :id
  attr_accessor :screening_time

  def initialize(options)
    @id = options["id"].to_i
    @film_id = options["film_id"].to_i
    @screening_time = options["screening_time"]
  end

  def save()
      sql = "
        INSERT INTO screenings (film_id, screening_time)
        VALUES ($1, $2)
        RETURNING id
      "
      values = [@film_id, @screening_time]
      result = SqlRunner.run(sql, values)
      @id = result[0]["id"].to_i
    end

    def self.delete_all()
      sql = "DELETE FROM screenings"
      SqlRunner.run(sql)
    end

    def self.all()
      sql = "SELECT * FROM screenings"
      screenings = SqlRunner.run(sql)
      result = screenings.map {|screening| Screening.new(screening)}
      return result
    end

    def update()
      sql = "
      UPDATE screenings
      SET (screening_time, film_id) = ($1, $2)
      WHERE id = $3
      "
      values = [@screening_time, @film_id, @id]
      SqlRunner.run(sql, values)
    end

end
