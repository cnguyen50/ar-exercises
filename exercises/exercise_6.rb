require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create([
  {first_name: "Khurram", last_name: "Virani", hourly_rate: 60},
  {first_name: "Calvin", last_name: "Nguyen", hourly_rate: 40}
])


@store2.employees.create([
  {first_name: "Will", last_name: "Smith", hourly_rate: 80},
  {first_name: "Mary", last_name: "Poppins", hourly_rate: 90}
])

puts "-----Store 1 employees ------"
pp @store1.employees

puts "----- Store 2 employees ------"
pp @store2.employees