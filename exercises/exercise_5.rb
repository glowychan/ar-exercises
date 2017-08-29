require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
average_revenue = Store.average(:annual_revenue)
top_stores = Store.where("annual_revenue >= 1000000").count
puts "The total annual revenue of all stores is #{total_revenue}."
puts "The average revenue of stores is #{average_revenue}."
puts "The stores that totaled over $1M in revenue is: #{top_stores}."



