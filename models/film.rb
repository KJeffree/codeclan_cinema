require_relative("../db/sql_runner.rb")

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options["id"].to_i
    @title = options["title"]
    @price = options["price"].to_i
  end


def save()
    sql = "
      INSERT INTO films (title, price)
      VALUES ($1, $2)
      RETURNING id
    "
    values = [@title, @price]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM films"
    films = SqlRunner.run(sql)
    result = films.map {|film| Film.new(film)}
    return result
  end

  def update()
    sql = "
    UPDATE films
    SET (title, price) = ($1, $2)
    WHERE id = $3
    "
    values = [@title, @price, @id]
    SqlRunner.run(sql, values)
  end

  def customers()
    sql = "
      SELECT customers.* FROM customers
      INNER JOIN tickets
      ON customers.id = tickets.customer_id
      INNER JOIN screenings
      ON screenings.id = tickets.screening_id
      WHERE screenings.film_id = $1
    "
    customers = SqlRunner.run(sql, [@id])
    result = customers.map {|customer| Customer.new(customer)}
    return result
  end

  def num_of_customers()
    return customers().count
  end

  def popular_time()
    sql = "
      SELECT tickets.* FROM tickets
      INNER JOIN screenings
      ON screenings.id = tickets.screening_id
      WHERE screenings.film_id = $1
    "
    tickets = SqlRunner.run(sql, [@id])
    result = tickets.map {|ticket| Ticket.new(ticket).screening_id}

    a = 0
    b = 0
    for screening in result
      if screening ==

    return

    # result.max_by {|v| freq[v]}
  end

end
