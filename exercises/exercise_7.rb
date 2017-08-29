require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print 'Enter store name:'
new_store = gets.chomp
@store7 = Store.create(name: new_store, annual_revenue: 10000000000, mens_apparel: false, womens_apparel: false)
messages = @store7.errors.full_messages

messages.each do |error|
  puts "Error! #{error}"
end