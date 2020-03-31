require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.pluck(:annual_revenue).sum
@average_revenue = @total_revenue/Store.count
@million_revenue = Store.where("annual_revenue > ?", 1000000).count

puts "Total revenue:"
pp @total_revenue

puts "Average revenue:"
pp @average_revenue

puts "$1M or more in annual sales"
pp @million_revenue