require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

stores = Store.create([
  {:name => 'Surrey', :annual_revenue => 224000, :mens_apparel => 'false', :womens_apparel => 'true'},
  {:name => 'Whistler', :annual_revenue => 1900000, :mens_apparel => 'true', :womens_apparel => 'false'},
  {:name => 'Yaletown', :annual_revenue => 430000, :mens_apparel => 'true', :womens_apparel => 'true'}
])

@men_stores = Store.where(mens_apparel: true)
puts "Stores with men apparel"
pp @men_stores

puts "Their names and annual revenue:"
@men_stores.each do |store|
  puts "name: #{store.name}"
  puts "annual revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = ? and annual_revenue < ?", true, 1000000)
puts "stores carrying womens apparel and having annual revenue less than 1000000"
pp @womens_stores
