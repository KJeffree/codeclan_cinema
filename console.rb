# 1. class diagram √
# 2. database diagram √
# 3. directory structure -> git init √
# 4. sql file √
# 5. create classes √
# 6. CRUD methods
# 7. console.rb √

require_relative("./models/customer.rb")
require_relative("./models/film.rb")
require_relative("./models/ticket.rb")
require('pry')

Film.delete_all
Customer.delete_all
Ticket.delete_all

film1 = Film.new({"title" => "Harry Potter and the Philosopher's Stone", "price" => 4})
film2 = Film.new({"title" => "Harry Potter and the Chamber of Secrets", "price" => 4})
film3 = Film.new({"title" => "Harry Potter and the Prisoner of Azkaban", "price" => 5})
film4 = Film.new({"title" => "Harry Potter and the Goblet of Fire", "price" => 5})
film5 = Film.new({"title" => "Harry Potter and the Order of the Pheonix", "price" => 6})
film6 = Film.new({"title" => "Harry Potter and the Half Blood Prince", "price" => 6})
film7 = Film.new({"title" => "Harry Potter and the Deathly Hallows part 1", "price" => 7})
film8 = Film.new({"title" => "Harry Potter and the Deathly Hallows part 2", "price" => 7})

film1.save
film2.save
film3.save
film4.save
film5.save
film6.save
film7.save
film8.save

customer1 = Customer.new({"name" => "Emma", "funds" => 30})
customer2 = Customer.new({"name" => "Rupert", "funds" => 35})
customer3 = Customer.new({"name" => "Daniel", "funds" => 20})
customer4 = Customer.new({"name" => "Matthew", "funds" => 25})
customer5 = Customer.new({"name" => "Evanna", "funds" => 35})
customer6 = Customer.new({"name" => "Bonnie", "funds" => 40})

customer1.save
customer2.save
customer3.save
customer4.save
customer5.save
customer6.save

ticket1 = Ticket.new({"customer_id" => customer1.id, "film_id" => film2.id})
ticket2 = Ticket.new({"customer_id" => customer2.id, "film_id" => film7.id})
ticket3 = Ticket.new({"customer_id" => customer3.id, "film_id" => film4.id})
ticket4 = Ticket.new({"customer_id" => customer4.id, "film_id" => film8.id})
ticket5 = Ticket.new({"customer_id" => customer5.id, "film_id" => film1.id})
ticket6 = Ticket.new({"customer_id" => customer6.id, "film_id" => film5.id})
ticket7 = Ticket.new({"customer_id" => customer1.id, "film_id" => film5.id})
ticket8 = Ticket.new({"customer_id" => customer2.id, "film_id" => film5.id})
ticket9 = Ticket.new({"customer_id" => customer3.id, "film_id" => film5.id})
ticket10 = Ticket.new({"customer_id" => customer4.id, "film_id" => film5.id})
ticket11 = Ticket.new({"customer_id" => customer5.id, "film_id" => film5.id})

ticket1.save
ticket2.save
ticket3.save
ticket4.save
ticket5.save
ticket6.save
ticket7.save
ticket8.save
ticket9.save
ticket10.save
ticket11.save

binding.pry
nil
