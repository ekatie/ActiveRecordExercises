require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.

# Your code goes here ...

# Add table associations/relations
class Store < ActiveRecord::Base
  has_many :employees
end
class Employee < ActiveRecord::Base
  belongs_to :store
end

# Add employee records
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 40)
@store2.employees.create(first_name: "Bella", last_name: "The Dog", hourly_rate: 50)
@store2.employees.create(first_name: "Bruce", last_name: "Wayne", hourly_rate: 500)
@store4.employees.create(first_name: "Alice", last_name: "Wonderland", hourly_rate: 70)
@store4.employees.create(first_name: "Great", last_name: "Gatsby", hourly_rate: 150)
@store4.employees.create(first_name: "Holly", last_name: "Molly", hourly_rate: 40)
@store4.employees.create(first_name: "Keanu", last_name: "Reeves", hourly_rate: 70)
@store5.employees.create(first_name: "Wayne", last_name: "S'World", hourly_rate: 20)
@store5.employees.create(first_name: "John", last_name: "Wick", hourly_rate: 1000)
@store6.employees.create(first_name: "Barney", last_name: "Stinson", hourly_rate: 250)