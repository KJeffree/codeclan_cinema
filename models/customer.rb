require_relative("../db/sql_runner.rb")

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options["id"].to_i
    @name = options["name"]
    @funds = options["funds"].to_i
  end

def save()
    sql = "
      INSERT INTO customers (name, funds)
      VALUES ($1, $2)
      RETURNING id
    "
    values = [@name, @funds]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM customers"
    customers = SqlRunner.run(sql)
    result = customers.map {|customer| Customer.new(customer)}
    return result
  end

  def update()
    sql = "
    UPDATE customers
    SET (name, funds) = ($1, $2)
    WHERE id = $3
    "
    values = [@name, @funds, @id]
    SqlRunner.run(sql, values)
  end

  def films()
    sql = "
      SELECT films.* FROM films
      INNER JOIN tickets
      ON films.id = tickets.film_id
      WHERE tickets.customer_id = $1
    "

    films = SqlRunner.run(sql, [@id])
    result = films.map {|film| Film.new(film)}
    return result
  end

end
