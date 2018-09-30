require_relative("../db/sql_runner.rb")

class Ticket

  attr_reader :id, :customer_id, :screening_id

  def initialize(options)
    @id = options["id"].to_i
    @screening_id = options["screening_id"]
    @customer_id = options["customer_id"]
  end

  def save()
      sql = "
        INSERT INTO tickets (customer_id, screening_id)
        VALUES ($1, $2)
        RETURNING id
      "
      values = [@customer_id, @screening_id]
      result = SqlRunner.run(sql, values)
      @id = result[0]["id"].to_i
    end

    def self.delete_all()
      sql = "DELETE FROM tickets"
      SqlRunner.run(sql)
    end

    def self.all()
      sql = "SELECT * FROM tickets"
      tickets = SqlRunner.run(sql)
      result = tickets.map {|ticket| Ticket.new(ticket)}
      return result
    end

    def update()
      sql = "
      UPDATE tickets
      SET (customer_id, screening_id) = ($1, $2)
      WHERE id = $3
      "
      values = [@customer_id, @screening_id, @id]
      SqlRunner.run(sql, values)
    end

end
