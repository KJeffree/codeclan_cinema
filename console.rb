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
require_relative("./models/screening.rb")
require('pry')

Film.delete_all
Customer.delete_all
Screening.delete_all
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

screening1 = Screening.new({"film_id" => film1.id, "screening_time" => "12:00"})
screening2 = Screening.new({"film_id" => film1.id, "screening_time" => "17:20"})
screening3 = Screening.new({"film_id" => film2.id, "screening_time" => "13:00"})
screening4 = Screening.new({"film_id" => film2.id, "screening_time" => "16:35"})
screening5 = Screening.new({"film_id" => film3.id, "screening_time" => "11:00"})
screening6 = Screening.new({"film_id" => film3.id, "screening_time" => "14:00"})
screening7 = Screening.new({"film_id" => film4.id, "screening_time" => "14:45"})
screening8 = Screening.new({"film_id" => film4.id, "screening_time" => "18:00"})
screening9 = Screening.new({"film_id" => film5.id, "screening_time" => "15:15"})
screening10 = Screening.new({"film_id" => film5.id, "screening_time" => "20:00"})
screening11 = Screening.new({"film_id" => film6.id, "screening_time" => "16:00"})
screening12 = Screening.new({"film_id" => film6.id, "screening_time" => "21:00"})
screening13 = Screening.new({"film_id" => film7.id, "screening_time" => "15:30"})
screening14 = Screening.new({"film_id" => film7.id, "screening_time" => "20:30"})
screening15 = Screening.new({"film_id" => film8.id, "screening_time" => "17:00"})
screening16 = Screening.new({"film_id" => film8.id, "screening_time" => "20:45"})

screening1.save
screening2.save
screening3.save
screening4.save
screening5.save
screening6.save
screening7.save
screening8.save
screening9.save
screening10.save
screening11.save
screening12.save
screening13.save
screening14.save
screening15.save
screening16.save

ticket1 = Ticket.new({"customer_id" => customer1.id, "screening_id" => screening3.id})
ticket2 = Ticket.new({"customer_id" => customer2.id, "screening_id" => screening14.id})
ticket3 = Ticket.new({"customer_id" => customer3.id, "screening_id" => screening7.id})
ticket4 = Ticket.new({"customer_id" => customer4.id, "screening_id" => screening16.id})
ticket5 = Ticket.new({"customer_id" => customer5.id, "screening_id" => screening1.id})
ticket6 = Ticket.new({"customer_id" => customer6.id, "screening_id" => screening9.id})
ticket7 = Ticket.new({"customer_id" => customer1.id, "screening_id" => screening9.id})
ticket8 = Ticket.new({"customer_id" => customer2.id, "screening_id" => screening9.id})
ticket9 = Ticket.new({"customer_id" => customer3.id, "screening_id" => screening9.id})
ticket10 = Ticket.new({"customer_id" => customer4.id, "screening_id" => screening10.id})
ticket11 = Ticket.new({"customer_id" => customer5.id, "screening_id" => screening10.id})

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
